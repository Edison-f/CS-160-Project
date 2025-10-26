from flask import jsonify
import psycopg2
import os
from dotenv import load_dotenv

load_dotenv()

def get_db_connection():
    conn = psycopg2.connect(
        host=os.getenv('DB_HOST'),
        database=os.getenv('DB_NAME'),
        user=os.getenv('DB_USER'),
        password=os.getenv('DB_PASSWORD'),
        port=os.getenv('DB_PORT')
    )
    return conn

def categories():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT NOW()')
    result = cur.fetchone()
    cur.close()
    conn.close()
    return jsonify({'result': str(result[0])})
