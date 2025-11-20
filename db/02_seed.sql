USE sortsmart;

INSERT INTO materials (name) VALUES
 ('Plastic'), ('Paper'), ('Metal'), ('Compostables'), ('Hazardous'), ('Special'), ('Electronics'), ('Glass'),
 ('CRV'), ('UsedOil'), ('Tires');

INSERT INTO items (name, material_id, default_stream, notes)
VALUES
 ('Pizza box', 2, 'trash', 'Greasy boxes are trash; clean lid may be recyclable'),
 ('Aluminum can', 3, 'recycle', 'Empty & rinse'),
 ('Lithium battery', 5, 'hazardous', 'Take to HHW facility');

INSERT INTO item_aliases (item_id, alias)
VALUES
 (1, 'cardboard pizza box'), (2, 'soda can'), (3, 'Li-ion battery');

-- County resource links (keyed by county_name/state)
INSERT INTO resources (county_name, state, title, url)
VALUES
 ('Alameda County',     'CA', 'Alameda County Recycling Guide',    'https://www.stopwaste.org/'),
 ('Alpine County',      'CA', 'Alpine County Recycling Center',     'https://alpinecountyca.gov/175/Recycling-Center'),
 ('Santa Clara County', 'CA', 'Santa Clara County Recycling Guide', 'https://www.santaclaraca.gov/our-city/departments-g-z/public-works/environmental-programs/residential-garbage-recycling'),
 ('San Mateo County',   'CA', 'San Mateo County Recycling Info',      'https://www.smcsustainability.org/waste-reduction/recycle/'),
 ('Amador County',      'CA', 'Amador County Waste Management',     'https://www.amadorcounty.gov/departments/waste-management-recycling'),
 ('Butte County',       'CA', 'Butte County Recycling Resources',  'https://www.buttecounty.net/858/Recycling-Guide'),
 ('Calaveras County',   'CA', 'Calaveras County Recycling Resources',   'https://intwaste.calaverasgov.us/Reduce-Reuse-Recycle'),
 ('Colusa County',      'CA', 'Colusa County Recycling Resources',    'https://www.recology.com/recology-butte-colusa/county-of-colusa/your-carts/?cookie-consent-set=true'),
 ('Contra Costa County','CA', 'Contra Costa County Recycling Guide', 'https://www.cccrecycle.org/'),
 ('Del Norte County',   'CA', 'Del Norte County Recycling Info',    'https://recycledelnorte.ca.gov/'),
 ('El Dorado County',   'CA', 'El Dorado County Recycling Resources','https://www.eldoradodisposal.com/disposal-recycle-guide'),
 ('Fresno County',      'CA', 'Fresno County Recycling Info',       'https://www.fresnocountyca.gov/Departments/Public-Works-and-Planning/divisions-of-public-works-and-planning/resources-and-parks-division/recycling-and-solid-waste-disposal'),
 ('Glenn County',       'CA', 'Glenn County Recycling Resources',    'https://www.countyofglenn.net/government/departments/public-works/solid-waste-recycling'),
 ('Humboldt County',    'CA', 'Humboldt County Recycling Info',     'https://www.recology.com/recology-humboldt-county/eureka/'),
 ('Imperial County',    'CA', 'Imperial County Recycling Resources','https://www.ivrma.org/'),
 ('Inyo County',        'CA', 'Inyo County Recycling Info',        'https://www.inyocounty.us/services/solid-waste/recycle/recycling-inyo-county'),
 ('Kern County',       'CA',  'Kern County Recycling Resources',    'https://www.kernpublicworks.com/services/solid-waste/recycling/'),
 ('Kings County',      'CA',  'Kings County Recycling Info',       'https://www.countyofkingsca.gov/departments/outside-agencies/kings-waste-and-recycling-authority'),
 ('Lake County',       'CA',  'Lake County Recycling Resources',    'https://www.lakecountyca.gov/1408/Waste-Management'),
 ('Lassen County',     'CA',  'Lassen County Recycling Info',      'https://www.lassencounty.org/dept/lassen-regional-solid-waste-management-authority/lassen-regional-solid-waste-management'),
 ('Los Angeles County','CA',  'LA County Recycling Guide',         'https://dpw.lacounty.gov/epd/rethinkla/recycle/recycle-bins-blue-what-goes-in.aspx'),
 ('Madera County',     'CA',  'Madera County Recycling Resources',  'https://www.maderacounty.com/government/public-works/solid-waste-management'),
 ('Marin County',      'CA',  'Marin County Recycling Info',       'https://marinsanitaryservice.com/residential/residential-recycling/'),
 ('Mariposa County',   'CA',  'Mariposa County Recycling Resources','https://www.maricopa.gov/1482/Waste-Disposal-Information'),
 ('Mendocino County',  'CA',  'Mendocino County Recycling Info',   'https://www.mendocinocounty.gov/departments/transportation/solid-waste'),
 ('Merced County',     'CA',  'Merced County Recycling Resources',  'https://mcrwma.org/101/Recycling'),
 ('Modoc County',      'CA',  'Modoc County Recycling Info',       'https://www.co.modoc.ca.us/departments/waste_management.php'),
 ('Mono County',       'CA',  'Mono County Recycling Resources',    'https://monocounty.ca.gov/solid-waste/page/recycling'),
 ('Monterey County',   'CA',  'Monterey County Recycling Info',    'https://www.countyofmonterey.gov/government/departments-a-h/health/environmental-health/general/recycling-resources-and-recovery-services'),
 ('Napa County',       'CA',  'Napa County Recycling Resources',    'https://www.napacounty.gov/1536/Recycling-Composting-and-Waste-Reduction'),
 ('Nevada County',     'CA',  'Nevada County Recycling Info',      'https://www.nevadacountyca.gov/3111/Recycling-Resources'),
 ('Orange County',     'CA',  'Orange County Recycling Resources',  'https://www.orangecountyfl.net/WaterGarbageRecycling.aspx'),
 ('Placer County',     'CA',  'Placer County Recycling Info',      'https://www.placer.ca.gov/1789/Garbage-Recycling'),
 ('Plumas County',     'CA',  'Plumas County Recycling Resources',  'https://www.plumascounty.us/2452/Residential-Recycling'),
 ('Riverside County',  'CA',  'Riverside County Recycling Info',   'https://rcwaste.org/residential-recycling'),
 ('Sacramento County', 'CA',  'Sacramento County Recycling Resources','https://wmr.saccounty.net/Pages/default.aspx'),
 ('San Benito County', 'CA',  'San Benito County Recycling Info',  'https://www.sanbenitocountyca.gov/departments/resource-management-agency/integrated-waste-management/recycling-guide'),
 ('San Bernardino County', 'CA', 'San Bernardino County Recycling Resources','https://dpw.sbcounty.gov/solid-waste-management/'),
 ('San Diego County',  'CA',  'San Diego County Recycling Info',    'https://www.sandiego.gov/environmental-services/recycling'),
 ('San Francisco County','CA','San Francisco Recycling Guide',     'https://www.ssf.net/Departments/Public-Works/Solid-Waste-Recycling'),
 ('San Joaquin County', 'CA',  'San Joaquin County Recycling Resources','https://www.sjgov.org/department/pwk/solid-waste/how-do-i-recycle-or-dispose-'),
 ('San Luis Obispo County','CA','San Luis Obispo Recycling Info',  'https://www.iwma.com/recycling-guide'),
 ('Santa Barbara County','CA','Santa Barbara Recycling Resources','https://lessismore.org/santa-barbara-county-recycling-resource-guide/'),
 ('Santa Cruz County',  'CA',  'Santa Cruz County Recycling Info',   'https://cdi.santacruzcountyca.gov/PublicWorks/RecyclingSolidWaste.aspx'),
 ('Shasta County',     'CA',  'Shasta County Recycling Resources',   'https://www.shastacounty.gov/waste-recycling'),
 ('Sierra County',     'CA',  'Sierra County Recycling Info',       'https://www.sierracounty.ca.gov/296/Recycling'),
 ('Siskiyou County',   'CA',  'Siskiyou County Recycling Resources', 'https://www.siskiyoucounty.gov/generalservices/page/recycling'),
 ('Solano County',     'CA',  'Solano County Recycling Info',       'https://www.solanocounty.gov/government/resource-management/planning-services/environmental-management-sustainability/garbage-recycling'),
 ('Sonoma County',     'CA',  'Sonoma County Recycling Resources',   'https://zerowastesonoma.gov/'),
 ('Stanislaus County', 'CA',  'Stanislaus County Recycling Info',   'https://www.stanislausrecycles.org/'),
 ('Sutter County',     'CA',  'Sutter County Recycling Resources',   'https://www.suttercounty.org/community/residents/home-property/trash-and-recycling'),
 ('Tehama County',     'CA',  'Tehama County Recycling Info',       'https://www.tehama.gov/government/departments/landfill-agency/recycling/tehama-county-recycles/'),
 ('Trinity County',    'CA',  'Trinity County Recycling Resources',  'https://www.trinitycounty.org/342/Recycling'),
 ('Tulare County',     'CA',  'Tulare County Recycling Info',       'https://tularecounty.ca.gov/solid-waste/recycling'),
 ('Tuolumne County',   'CA',  'Tuolumne County Recycling Resources', 'https://www.tuolumnecounty.ca.gov/440/Recycling'),
 ('Ventura County',    'CA',  'Ventura County Recycling Info',      'https://publicworks.venturacounty.gov/wsd/iwmd/residentialwasteinfo/'),
 ('Yolo County',       'CA',  'Yolo County Recycling Resources',     'https://www.yolocounty.gov/government/general-government-departments/community-services/integrated-waste-management-division/recycling-information'),
 ('Yuba County',       'CA',  'Yuba County Recycling Info',        'https://www.yuba.gov/residents/waste_and_recycling.php');


-- Localized rules keyed by county_name/state
INSERT INTO disposal_rules (item_id, county_name, state, stream, instructions, source_url)
VALUES
 (1, 'Santa Clara County', 'CA', 'trash',     'Tear off clean lid for recycling; greasy bottom = trash.', 'https://sanjoserecycles.org/guide/pizza-boxes/'),
 (3, 'Santa Clara County', 'CA', 'hazardous', 'Drop at HHW center; do not throw in trash bin.',          'https://www.sanjoseca.gov/your-government/departments-offices/environmental-services/recycling-garbage/residents/how-to-recycle-right/household-hazardous-waste');

-- Drop-off location example 
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
