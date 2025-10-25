from flask import Flask, send_from_directory
from flask_cors import CORS
import os
from dotenv import load_dotenv
from api.categories import categories
from api.item_search import item_search

load_dotenv()

app = Flask(__name__)
CORS(app)

@app.route('/')
def index():
    return send_from_directory('../frontend', 'index.html')

@app.route('/api/categories')
def api_categories():
    return categories()

@app.route('/api/item_search')
def api_item_search():
    return item_search()

if __name__ == '__main__':
    app.run(debug=True, port=int(os.getenv('PORT', 5000)))
