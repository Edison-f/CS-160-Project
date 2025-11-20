import sys
from pathlib import Path
import re

# Add backend directory to Python path
backend_dir = Path(__file__).parent.parent / "backend"
sys.path.insert(0, str(backend_dir))

from api.db import get_db_connection

def main():


    # Read the recycling_locations.csv file
    csv_path = Path(__file__).parent / 'recycling_locations.csv'
    with open(csv_path, 'r') as file:
        lines = file.readlines()

    # Parse the lines
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            for line in lines[1:]:
                regex = r",([^\s])"
                subst = "|\\g<1>"
                line = re.sub(regex, subst, line.strip())
                if len(line.split('|')) != 7:
                    if line[-1] == ',':
                        line = line[:-1]
                        line += '|Not Available'
                _, name, address1, city, postal_code, type, phone = [x.strip() for x in line.split('|')]
                cur.execute("INSERT INTO dropoff_locations (name, address1, state, city, postal_code, phone, coord) VALUES (%s, %s, %s, %s, %s, %s, ST_GeomFromText('POINT(0 0)', 4326))", (name, address1, "CA", city, postal_code, phone))
                location_id = cur.lastrowid
                cur.execute("SELECT id FROM materials WHERE name = %s", (type,))
                result = cur.fetchone()
                material_id = result['id'] if result else None
                if not material_id:
                    cur.execute("INSERT INTO materials (name) VALUES (%s)", (type,))
                    material_id = cur.lastrowid
                cur.execute("INSERT INTO location_services (location_id, material_id, accepted) VALUES (%s, %s, %s)", (location_id, material_id, True))
        
        conn.commit()

if __name__ == "__main__":
    main()