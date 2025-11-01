from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint
def categories():
    conn = get_db_connection()
    try:
        with conn.cursor() as cur:
            cur.execute("SELECT id, name, description FROM materials ORDER BY name")
            rows = cur.fetchall()
        return jsonify({"categories": rows})
    finally:
        conn.close()
