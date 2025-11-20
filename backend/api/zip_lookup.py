from flask import jsonify, request
from api.db import get_db_connection

def zip_lookup():
    zip5 = (request.args.get("zip") or "").strip()
    if not zip5.isdigit() or len(zip5) != 5:
        return jsonify({"error": "Invalid ZIP"}), 400

    sql = """
      SELECT
        z.zip5,
        z.city,
        z.state,
        z.county_name,
        z.county_name AS jurisdiction_name
      FROM zipcodes z
      WHERE z.zip5 = %s
      LIMIT 1
    """
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, (zip5,))
            row = cur.fetchone()
    if not row:
        return jsonify({"error": "ZIP not found"}), 404
    return jsonify(row)