from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

def categories():
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT id, name, description FROM materials ORDER BY name;")
            rows = cur.fetchall()
    return jsonify(rows)
