from flask import jsonify
import os
from dotenv import load_dotenv
from flask import jsonify, request
from api.db import get_db_connection

load_dotenv()

def nearby_locations():
    zip5 = (request.args.get("zip") or "").strip()
    
    sql = """
        SELECT 
            dl.id,
            dl.name,
            dl.address1,
            dl.city,
            dl.state,
            dl.postal_code,
            dl.phone,
            dl.website,
            dl.hours,
            ST_Y(dl.coord) AS longitude,
            ST_X(dl.coord) AS latitude
        FROM dropoff_locations dl
    """
    
    params = []
    if zip5 and len(zip5) == 5:
        sql += " WHERE dl.postal_code = %s"
        params.append(zip5)
        print(f"ZIP: {zip5}")
    
    sql += " ORDER BY dl.name"
    
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(sql, params)
            rows = cur.fetchall()
    
    locations = []
    for row in rows:
        locations.append({
            'id': row['id'],
            'name': row['name'],
            'address1': row['address1'],
            'city': row['city'],
            'state': row['state'],
            'postal_code': row['postal_code'],
            'phone': row['phone'],
            'website': row['website'],
            'hours': row['hours'],
            'latitude': float(row['latitude']) if row['latitude'] else None,
            'longitude': float(row['longitude']) if row['longitude'] else None
        })
    
    return jsonify(locations)
