from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint

def resource_links():
    jid = request.args.get("jurisdiction_id")
    if jid:
        sql = """
          SELECT id, title, url, jurisdiction_id
          FROM resources WHERE jurisdiction_id = %s ORDER BY title;
        """
        params = (jid,)
    else:
        sql = "SELECT id, title, url, jurisdiction_id FROM resources ORDER BY title;"
        params = ()
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, params)
            rows = cur.fetchall()
    return jsonify(rows)
