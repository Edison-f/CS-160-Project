from flask import Flask, send_from_directory
from flask_cors import CORS
import os
from dotenv import load_dotenv
from api.categories import categories
from api.item_search import item_search
from api.resource_links import resource_links
from api.chatbot import chatbot
from api.image_recognition import image_recognition
from api.nearby_locations import nearby_locations
from api.zip_lookup import zip_lookup

load_dotenv()

app = Flask(__name__, static_folder='../frontend', static_url_path='/static')
CORS(app)

@app.route('/')
def index():
    return send_from_directory('../frontend', 'index.html')

@app.route('/<path:path>')
def static_files(path):
    return send_from_directory('../frontend', path)

@app.route('/api/categories')
def api_categories():
    return categories()

@app.route('/api/item_search')
def api_item_search():
    return item_search()

@app.route('/api/resource_links')
def api_resource_links():
    return resource_links()

@app.route('/api/chatbot', methods=['GET', 'POST'])
def api_chatbot():
    return chatbot()

@app.route('/api/image_recognition', methods=['GET', 'POST'])
def api_image_recognition():
    return image_recognition()

@app.route('/api/nearby_locations')
def api_nearby_locations():
    return nearby_locations()

@app.route('/api/zip_lookup')
def api_zip_lookup():
    return zip_lookup()

if __name__ == '__main__':
    app.run(debug=True, port=int(os.getenv('PORT', 5000)))
