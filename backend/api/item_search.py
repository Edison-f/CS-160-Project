from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint
def item_search():
    q = (request.args.get("q") or "").strip()
    material_id = (request.args.get("material_id") or "").strip()

    where_clauses = []
    params = []

    if q:
        where_clauses.append("(i.name LIKE %s OR i.notes LIKE %s OR a.alias LIKE %s)")
        like = f"%{q}%"
        params.extend([like, like, like])

    if material_id:
        where_clauses.append("i.material_id = %s")
        params.append(material_id)

    if not where_clauses:
        return jsonify([])

    sql = f"""
    SELECT DISTINCT i.id, i.name, i.notes, i.default_stream, i.material_id
    FROM items i
    LEFT JOIN item_aliases a ON a.item_id = i.id
    WHERE {' AND '.join(where_clauses)}
    ORDER BY i.name ASC
    LIMIT 50
    """

    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, tuple(params))
            rows = cur.fetchall()
    return jsonify(rows)
