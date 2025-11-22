from flask import jsonify, request
import os
from dotenv import load_dotenv
import requests
import json

# Load .env from project root (one level up from backend/api)
env_path = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(__file__))), '.env')
load_dotenv(dotenv_path=env_path)

# Get API key
api_key = os.getenv('GEMINI_API_KEY')

# System prompt for recycling assistant
SYSTEM_PROMPT = """You are a helpful recycling assistant for SortSmart. Your role is to provide clear, 
accurate guidance about recycling, composting, and waste disposal. 

Key guidelines:
- Provide specific, actionable advice
- When possible, mention which recycling stream items belong to (Paper, Plastic, Glass, Metal, Compost, Trash)
- Be encouraging and positive about recycling
- If you're unsure about something, say so rather than guessing
- Focus on common household items and materials
- Mention local variations when relevant (especially for California)

Keep responses concise but informative. Always be helpful and friendly."""

def chatbot():
    """
    Chatbot endpoint for recycling questions.
    Accepts POST requests with 'message' field containing user's question.
    """
    if not api_key:
        return jsonify({
            'error': 'GEMINI_API_KEY not configured.',
        }), 500
    
    try:
        # Get user message from request
        if request.is_json:
            user_message = request.json.get('message', '')
        else:
            user_message = request.form.get('message', '')
        
        if not user_message:
            return jsonify({'error': 'No message provided'}), 400
        
        # Combine system prompt with user message
        full_prompt = f"{SYSTEM_PROMPT}\n\nUser question: {user_message}\n\nAssistant response:"
        
        # Use REST API directly
        url = f"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={api_key}"
        
        headers = {
            'Content-Type': 'application/json',
        }
        
        payload = {
            "contents": [{
                "parts": [{
                    "text": full_prompt
                }]
            }]
        }
        
        response = requests.post(url, headers=headers, json=payload)
        
        if response.status_code != 200:
            error_data = response.json() if response.content else {}
            return jsonify({
                'error': 'Failed to generate response',
                'details': error_data.get('error', {}).get('message', response.text),
                'status_code': response.status_code
            }), 500
        
        result = response.json()
        
        # Extract text from response
        try:
            bot_response = result['candidates'][0]['content']['parts'][0]['text']
        except (KeyError, IndexError) as e:
            return jsonify({
                'error': 'Unexpected response format from API',
                'details': str(result),
                'exception': str(e)
            }), 500
        
        return jsonify({
            'success': True,
            'response': bot_response,
            'message': user_message
        })
        
    except Exception as e:
        return jsonify({
            'error': 'Failed to generate response',
            'details': str(e)
        }), 500
