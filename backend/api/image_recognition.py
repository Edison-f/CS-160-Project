from flask import jsonify, request
import os
from dotenv import load_dotenv
import requests
import base64

# Try to import PIL
try:
    from PIL import Image
    HAS_PIL = True
except ImportError:
    HAS_PIL = False

# Load .env from project root (one level up from backend/api)
env_path = os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(__file__))), '.env')
load_dotenv(dotenv_path=env_path)

api_key = os.getenv('GEMINI_API_KEY')

def image_recognition():
    """
    Analyze an uploaded image to identify recyclable items and provide recycling guidance.
    Accepts image as base64 string or file upload.
    """
    if not api_key:
        return jsonify({
            'error': 'GEMINI_API_KEY not configured.',
        }), 500
    
    try:
        # Check if image is provided
        image_data = None
        image_format = None
        
        # Try to get image from form data (file upload)
        if 'image' in request.files:
            file = request.files['image']
            if file.filename:
                image_data = file.read()
                image_format = file.content_type or 'image/jpeg'
        # Try to get image from JSON (base64)
        elif request.is_json and 'image' in request.json:
            image_str = request.json['image']
            # Remove data URL prefix if present
            if ',' in image_str:
                image_str = image_str.split(',')[1]
            image_data = base64.b64decode(image_str)
            image_format = request.json.get('format', 'image/jpeg')
        else:
            return jsonify({'error': 'No image provided. Send image as file upload or base64 string.'}), 400
        
        if not image_data:
            return jsonify({'error': 'Invalid image data'}), 400
        
        prompt = """Analyze this image and identify any recyclable items you see. 
        For each item found, provide:
        1. The item name
        2. What recycling stream it belongs to (e.g., Paper, Plastic, Glass, Metal, Compost, Trash)
        3. Brief recycling instructions
        
        Format your response as a clear list. If no recyclable items are visible, say so.
        Focus on common household items like bottles, cans, paper, cardboard, plastic containers, etc."""
        
        # Encode image as base64 for API
        image_b64 = base64.b64encode(image_data).decode('utf-8')
        
        # Use REST API 
        url = f"https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={api_key}"
        
        headers = {
            'Content-Type': 'application/json',
        }
        
        payload = {
            "contents": [{
                "parts": [
                    {"text": prompt},
                    {
                        "inline_data": {
                            "mime_type": image_format,
                            "data": image_b64
                        }
                    }
                ]
            }]
        }
        
        response = requests.post(url, headers=headers, json=payload)
        
        if response.status_code != 200:
            error_data = response.json() if response.content else {}
            return jsonify({
                'error': 'Failed to analyze image',
                'details': error_data.get('error', {}).get('message', response.text),
                'status_code': response.status_code
            }), 500
        
        result = response.json()
        
        # Extract text from response
        try:
            result_text = result['candidates'][0]['content']['parts'][0]['text']
        except (KeyError, IndexError) as e:
            return jsonify({
                'error': 'Unexpected response format from API',
                'details': str(result),
                'exception': str(e)
            }), 500
        
        return jsonify({
            'success': True,
            'analysis': result_text,
            'message': 'Image analyzed successfully'
        })
        
    except Exception as e:
        return jsonify({
            'error': 'Failed to analyze image',
            'details': str(e)
        }), 500
