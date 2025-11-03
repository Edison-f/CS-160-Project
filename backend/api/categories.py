from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint
def categories():
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            # materials table has (id, name, description). No 'icon' column.
            cur.execute("SELECT id, name, description FROM materials ORDER BY name;")
            rows = cur.fetchall()
    return jsonify(rows)
