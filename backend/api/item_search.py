from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

def item_search():
    q = (request.args.get("q") or "").strip()
    material_id = (request.args.get("material_id") or "").strip()
    county_name = (request.args.get("county_name") or "").strip()
    state = (request.args.get("state") or "").strip() or "CA"
    include_all_defaults = request.args.get("include_all_defaults") == "1"

    where_clauses = []
    params = []

    if q:
        # Tokenize query for more flexible matching
        tokens = [t for t in q.split() if t]
        token_clauses = []
        for t in tokens:
            token_like = f"%{t}%"
            # Each token must appear in at least one of name/alias
            token_clauses.append("(i.name LIKE %s OR a.alias LIKE %s)")
            params.extend([token_like, token_like])
        where_clauses.append(" AND ".join(token_clauses))

    if material_id:
        where_clauses.append("i.material_id = %s")
        params.append(material_id)

    # Allow returning default seeded items when no search term and flag set
    if not where_clauses and not include_all_defaults:
        return jsonify([])

    dr_join = """
      LEFT JOIN disposal_rules dr
        ON dr.item_id = i.id
       AND dr.state = %s
       AND dr.county_name = %s
    """
    join_params = [state, county_name or None]
    params = join_params + params

    base_where = " AND ".join(where_clauses) if where_clauses else "1=1"

    sql = f"""
    SELECT DISTINCT
      i.id,
      i.name,
      i.material_id,
      i.default_stream AS default_stream,
      i.notes AS notes,
      COALESCE(dr.stream, i.default_stream) AS stream,
      COALESCE(dr.instructions, i.notes) AS instructions,
      dr.source_url,
      CASE WHEN dr.id IS NOT NULL THEN 1 ELSE 0 END AS is_localized
    FROM items i
    LEFT JOIN item_aliases a ON a.item_id = i.id
    {dr_join}
    WHERE {base_where}
    ORDER BY i.name ASC
    LIMIT 50
    """

    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, tuple(params))
            rows = cur.fetchall()
    return jsonify(rows)
