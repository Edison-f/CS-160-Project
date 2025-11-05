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
    county_name = (request.args.get("county_name") or "").strip()
    state = (request.args.get("state") or "").strip() or "CA"

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

    dr_join = ""
    if county_name:
        dr_join = """
          LEFT JOIN disposal_rules dr
            ON dr.item_id = i.id
           AND dr.state = %s
           AND dr.county_name = %s
        """
        # Join params must precede WHERE params
        params = [state, county_name] + params

    sql = f"""
    SELECT DISTINCT
      i.id,
      i.name,
      i.material_id,
      COALESCE(dr.stream, i.default_stream) AS stream,
      CASE WHEN dr.id IS NOT NULL THEN dr.instructions ELSE NULL END AS instructions,
      dr.source_url,
      CASE WHEN dr.id IS NOT NULL THEN 1 ELSE 0 END AS is_localized
    FROM items i
    LEFT JOIN item_aliases a ON a.item_id = i.id
    {dr_join}
    WHERE {' AND '.join(where_clauses)}
    ORDER BY i.name ASC
    LIMIT 50
    """

    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, tuple(params))
            rows = cur.fetchall()
    return jsonify(rows)
