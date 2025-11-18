from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

# TODO: Implement this endpoint

def resource_links():
    zip5 = (request.args.get("zip") or "").strip()
    county_name = (request.args.get("county_name") or "").strip()
    state = (request.args.get("state") or "").strip() or "CA"

    with get_db_connection() as conn:
        with conn.cursor() as cur:
            # Resolve county/state from ZIP if provided
            if zip5 and zip5.isdigit() and len(zip5) == 5:
                cur.execute("SELECT county_name, state FROM zipcodes WHERE zip5 = %s LIMIT 1", (zip5,))
                z = cur.fetchone()
                if not z:
                    return jsonify({"error": "ZIP not found"}), 404
                # DictCursor returns dicts
                county_name, state = z["county_name"], z["state"]

            # Return links for a county/state, or all if not specified
            if county_name:
                # Accept both "X" and "X County"
                if not county_name.lower().endswith(" county"):
                    sql = """
                      SELECT id, title, url, county_name, state
                      FROM resources
                      WHERE state = %s
                        AND (county_name = %s OR county_name = CONCAT(%s, ' County'))
                      ORDER BY title
                    """
                    params = (state, county_name, county_name)
                else:
                    sql = """
                      SELECT id, title, url, county_name, state
                      FROM resources
                      WHERE state = %s AND county_name = %s
                      ORDER BY title
                    """
                    params = (state, county_name)
            else:
                sql = "SELECT id, title, url, county_name, state FROM resources ORDER BY county_name, title"
                params = ()

            cur.execute(sql, params)
            rows = cur.fetchall()
    return jsonify(rows)
