from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint
def resource_links():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT NOW()')
    result = cur.fetchone()
    cur.close()
    conn.close()
    return jsonify({'result': str(result[0])})
