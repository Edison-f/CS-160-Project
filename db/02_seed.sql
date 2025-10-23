USE sortsmart;

INSERT INTO materials (name) VALUES
 ('Plastic'), ('Paper'), ('Metal'), ('Compostables'), ('Hazardous'), ('Special');

INSERT INTO items (name, material_id, default_stream, notes)
VALUES
 ('Pizza box', 2, 'trash', 'Greasy boxes are trash; clean lid may be recyclable'),
 ('Aluminum can', 3, 'recycle', 'Empty & rinse'),
 ('Lithium battery', 5, 'hazardous', 'Take to HHW facility');

INSERT INTO item_aliases (item_id, alias)
VALUES
 (1, 'cardboard pizza box'), (2, 'soda can'), (3, 'Li-ion battery');

INSERT INTO jurisdictions (name, kind, state) VALUES
 ('San José, CA', 'city', 'CA'),
 ('SJSU Campus', 'campus', 'CA');

INSERT INTO resources (jurisdiction_id, title, url)
VALUES
 (1, 'City Recycling Guide', 'https://sanjoserecycles.org/guide/'),
 (2, 'Campus Waste Rules', 'https://www.sjsu.edu/fdo/services/recycling/index.php');

INSERT INTO disposal_rules (item_id, jurisdiction_id, stream, instructions, source_url)
VALUES
 (1, 1, 'trash', 'Tear off clean lid for recycling; greasy bottom = trash.', 'https://sanjoserecycles.org/guide/pizza-boxes/'),
 (3, 1, 'hazardous', 'Drop at HHW center; do not throw in trash bin.', 'https://www.sanjoseca.gov/your-government/departments-offices/environmental-services/recycling-garbage/residents/how-to-recycle-right/household-hazardous-waste');
 
INSERT INTO dropoff_locations
 (name, address1, city, state, postal_code, phone, website, hours, coord)
VALUES
 ('SJ HHW Facility', '123 Green Way', 'San José', 'CA', '95110', '408-000-0000',
  'https://example.org/hhw', 'Sat 9–3', ST_SRID(POINT(-121.894955,37.326613),4326));

-- Map it to accepted materials
INSERT INTO location_services (location_id, material_id, accepted, notes)
VALUES
 (1, 5, TRUE, 'Household hazardous waste'),
 (1, 6, TRUE, 'Electronics & special items');
