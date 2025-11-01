from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint

def item_search():
    q = (request.args.get("q") or "").strip()
    if not q:
        return jsonify([])

    # Uses LIKE across items + aliases. Add FULLTEXT later if desired.
    sql = """
    SELECT DISTINCT i.id, i.name, i.notes, i.default_stream
    FROM items i
    LEFT JOIN item_aliases a ON a.item_id = i.id
    WHERE i.name LIKE %s OR i.notes LIKE %s OR a.alias LIKE %s
    ORDER BY i.name ASC
    LIMIT 50
    """
    like = f"%{q}%"
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, (like, like, like))
            rows = cur.fetchall()
    return jsonify(rows)
