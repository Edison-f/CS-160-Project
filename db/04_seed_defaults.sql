USE sortsmart;

-- Default disposal guidance for common items.
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic bottle', m.id, 'recycle', 'Empty and rinse. No need to remove labels.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic bottle');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic container', m.id, 'recycle', 'Empty and rinse. No need to remove labels.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic container');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cleaning product container', m.id, 'recycle', 'Only recycle if empty and rinsed. Labels are ok.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cleaning product container');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic egg carton (PET)', m.id, 'recycle', 'Only recycle if clean and dry.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic egg carton (PET)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Hard plastic packaging', m.id, 'recycle', 'Only recycle if recyling symbol is present. Check local rules for specifics types of plastic.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Hard plastic packaging');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Milk jugs', m.id, 'recycle', 'Empty jugs, no need to rinse. Caps acceptable in many programs. Do not crush.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Milk jugs');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #1 (PET)', m.id, 'recycle', 'Empty and rinse. No need to remove labels. Commonly used for beverage bottles. Lids acceptable in many programs.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #1 (PET)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #2 (HDPE)', m.id, 'recycle', 'Empty and rinse. No need to remove labels. Commonly used for milk jugs and detergent bottles. Lids acceptable in many programs. No plastic bags/film.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #2 (HDPE)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #3 (PVC)', m.id, 'recycle', 'Check local rules. Commonly used for food wrap and some containers. Not accepted in many curbside programs.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #3 (PVC)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #4 (LDPE)', m.id, 'recycle', 'Only recycle if clean and dry. Do not recycle if it is plastic bag/film.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #4 (LDPE)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #5 (PP)', m.id, 'recycle', 'Empty and rinse. No need to remove labels. Commonly used for food containers and some bottle caps.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #5 (PP)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic #7 (Other)', m.id, 'special', 'Check local rules. Includes various plastics like biodegradable bioplastics. Not accepted in many curbside programs.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic #7 (Other)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic food tray', m.id, 'recycle', 'Only recycle if clean and dry.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic food tray');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cardboard box', m.id, 'recycle', 'Flatten boxes and keep dry. Remove non-paper packing.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cardboard box');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Books', m.id, 'recycle', 'Recycle if damaged or unwanted; otherwise consider donating.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Books');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Egg carton (paper)', m.id, 'recycle', 'Recycle if clean and dry. Also consider composting.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Egg carton (paper)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Newspaper', m.id, 'recycle', 'Clean and dry. Remove plastic bags or inserts. Staples and tape acceptable.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Newspaper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Magazines and Catalogs', m.id, 'recycle', 'Clean and dry. Staples are acceptable.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Magazines and Catalogs');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Milk and Juice carton', m.id, 'recycle', 'Empty and rinse. Check local rules for caps.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Milk and Juice carton');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paper bags', m.id, 'recycle', 'Clean and dry. Soiled bags should go in compost or trash.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paper bags');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Gift bag', m.id, 'recycle', 'Remove non-paper components like ribbon or plastic windows. Do not recycle if bag is glossy or laminated.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Gift bag');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Towel paper rolls', m.id, 'recycle', 'Recycle if clean and dry. No tissues, napkins, or paper towels. Only rolls are accepted.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Towel paper rolls');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Notebooks', m.id, 'recycle', 'Remove any non-paper components like plastic covers or bindings.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Notebooks');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Mixed paper', m.id, 'recycle', 'Clean paper only. No tissues, napkins, or paper towels.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Mixed paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Glass jar', m.id, 'recycle', 'Empty and rinse. Metal lids acceptable in many programs.'
FROM materials m
WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Glass jar');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Glass bottle', m.id, 'recycle', 'Empty and rinse. Metal caps acceptable in many programs.'
FROM materials m
WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Glass bottle');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Broken glass', m.id, 'recycle', 'Only broken glass from bottles/jars are accepted. Wrap securely to prevent injury.'
FROM materials m
WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Broken glass');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Metal can', m.id, 'recycle', 'Empty and rinse. Labels ok.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Metal can');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Aluminum can', m.id, 'recycle', 'Empty and rinse. Labels ok.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Aluminum can');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Aluminum foil', m.id, 'recycle', 'Clean and balled up. Small pieces may not be accepted; check local rules.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Aluminum foil');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Aluminum tray/pan', m.id, 'recycle', 'Clean and rinse. No food residue.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Aluminum tray/pan');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cookware', m.id, 'recycle', 'Recyclable if made of metal and accepted by local programs. Check local rules for specifics.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cookware');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Scrap Metal', m.id, 'recycle', 'Includes items like old appliances, metal furniture, and other large metal objects. Check local scrap metal recycling options.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Scrap Metal');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Metal caps', m.id, 'recycle', 'Separate from glass bottles/jars. Consider placing in a metal can to prevent loss during sorting.'
FROM materials m
WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Metal caps');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Coffee cup (paper)', m.id, 'trash', 'Plastic-lined cups are trash by default. Check lid/sleeve locally.'
FROM materials m
WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Coffee cup (paper)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic bag/film', m.id, 'special', 'Do not place in curbside bins. Take to store drop-off where available.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic bag/film');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'ABS Plastic', m.id, 'trash', 'Put it in the garbage unless your local recycling program specifically accepts ABS plastic.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='ABS Plastic');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Acrylic Glass', m.id, 'trash', 'Put it in the garbage unless your local recycling program specifically accepts acrylic glass.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Acrylic Glass');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Artificial Turf', m.id, 'trash', 'Put it in the garbage'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Artificial Turf');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Balloons', m.id, 'trash', 'Deflate and put in the garbage.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Balloons');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Styrofoam/foam packaging', m.id, 'trash', 'Bag small pieces to prevent litter. Check special drop-offs locally.'
FROM materials m
WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Styrofoam/foam packaging');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Food scraps', m.id, 'compost', 'No plastic, metal, or glass. Remove stickers and packaging.'
FROM materials m
WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Food scraps');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Yard trimmings', m.id, 'compost', 'Leaves, grass, and small branches per local size limits.'
FROM materials m
WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Yard trimmings');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Household batteries', m.id, 'hazardous', 'Take to HHW facility or designated retailer drop-off. Do not trash.'
FROM materials m
WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Household batteries');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fluorescent light bulb/tube', m.id, 'hazardous', 'Handle carefully; bring to HHW or retailer that accepts them.'
FROM materials m
WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fluorescent light bulb/tube');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Small electronics', m.id, 'special', 'Recycle at e-waste events or participating retailers.'
FROM materials m
WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Small electronics');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Clothing & textiles', m.id, 'special', 'Donate if usable; otherwise textile recycling where available.'
FROM materials m
WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Clothing & textiles');

-- Aliases
INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'water bottle'
FROM items i
WHERE i.name='Plastic bottle'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'water bottle'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'PET bottle'
FROM items i
WHERE i.name='Plastic bottle'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'PET bottle'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'cardboard'
FROM items i
WHERE i.name='Cardboard box'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'cardboard'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'shipping box'
FROM items i
WHERE i.name='Cardboard box'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'shipping box'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'paper'
FROM items i
WHERE i.name='Mixed paper'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'paper'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'office paper'
FROM items i
WHERE i.name='Mixed paper'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'office paper'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'glass bottle'
FROM items i
WHERE i.name='Glass jar'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'glass bottle'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'tin can'
FROM items i
WHERE i.name='Steel can'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'tin can'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'coffee cup'
FROM items i
WHERE i.name='Coffee cup (paper)'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'coffee cup'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'paper cup'
FROM items i
WHERE i.name='Coffee cup (paper)'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'paper cup'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'plastic film'
FROM items i
WHERE i.name='Plastic bag/film'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'plastic film'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'grocery bag'
FROM items i
WHERE i.name='Plastic bag/film'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'grocery bag'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'EPS'
FROM items i
WHERE i.name='Styrofoam/foam packaging'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'EPS'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'foam'
FROM items i
WHERE i.name='Styrofoam/foam packaging'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'foam'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'food waste'
FROM items i
WHERE i.name='Food scraps'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'food waste'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'yard waste'
FROM items i
WHERE i.name='Yard trimmings'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'yard waste'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'AA battery'
FROM items i
WHERE i.name='Household batteries'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'AA battery'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'AAA battery'
FROM items i
WHERE i.name='Household batteries'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'AAA battery'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'CFL'
FROM items i
WHERE i.name='Fluorescent light bulb/tube'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'CFL'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'fluorescent tube'
FROM items i
WHERE i.name='Fluorescent light bulb/tube'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'fluorescent tube'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'e-waste'
FROM items i
WHERE i.name='Small electronics'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'e-waste'
  );

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'textiles'
FROM items i
WHERE i.name='Clothing & textiles'
  AND NOT EXISTS (
    SELECT 1 FROM item_aliases a WHERE a.item_id = i.id AND a.alias = 'textiles'
  );

-- Plastic (trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic cups', m.id, 'trash', 'Not recyclable locally; place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic cups');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic plates', m.id, 'trash', 'Too low-grade for recycling; place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic plates');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic utensils', m.id, 'trash', 'Small, low-quality plastic; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic utensils');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic wrap', m.id, 'trash', 'Film wrap tangles sorting equipment; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic wrap');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic lids', m.id, 'trash', 'Loose small lids are not effectively captured; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic lids');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic salad bags', m.id, 'trash', 'Bag/film not accepted curbside; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic salad bags');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Takeout containers (foam)', m.id, 'trash', 'Foam food service ware; place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Takeout containers (foam)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Packing peanuts', m.id, 'trash', 'Reuse if clean; otherwise garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Packing peanuts');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Tape & tape dispensers', m.id, 'trash', 'Mixed plastic/metal; dispose in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Tape & tape dispensers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Tarps', m.id, 'trash', 'Plastic/fabric composite; dispose in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Tarps');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Zip ties', m.id, 'trash', 'Small composite item; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Zip ties');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Straws', m.id, 'trash', 'Too small & light to recycle; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Straws');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'String & twine', m.id, 'trash', 'Tangling hazard in recycling; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='String & twine');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Water filters', m.id, 'trash', 'Cartridge components not curbside recyclable; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Water filters');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Rigid plastic #6 (Polystyrene)', m.id, 'trash', 'Local curbside does not accept rigid PS #6; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Rigid plastic #6 (Polystyrene)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pool noodles', m.id, 'trash', 'Foam composite plastic; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pool noodles');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pool covers', m.id, 'trash', 'Large plastic sheet; cut up and place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pool covers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Meal kit packaging', m.id, 'trash', 'Mixed materials/films; sort reusable parts, rest garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Meal kit packaging');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Lunchables packaging', m.id, 'trash', 'Multi-layer plastics; not recyclable curbside.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Lunchables packaging');

-- Paper (trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paper towels', m.id, 'trash', 'Soiled paper towels belong in garbage (or compost if accepted).'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paper towels');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paper napkins', m.id, 'trash', 'Soiled napkins belong in garbage (or compost if accepted).'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paper napkins');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Tissue paper', m.id, 'trash', 'Fibers too short; place in garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Tissue paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Tissues and toilet paper', m.id, 'trash', 'Hygiene paper products; garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Tissues and toilet paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Wax paper', m.id, 'trash', 'Plastic/wax coated; not recyclable.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Wax paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Waxed cardboard', m.id, 'trash', 'Coated cardboard; not recyclable curbside.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Waxed cardboard');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Parchment paper', m.id, 'trash', 'Non-recyclable paper; garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Parchment paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Coffee filters', m.id, 'trash', 'If not composted, place in garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Coffee filters');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Soiled paper', m.id, 'trash', 'Dirty or food-soiled paper; garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Soiled paper');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Popcorn bags', m.id, 'trash', 'Greasy/buttered paper; garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Popcorn bags');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Padded envelopes (paper)', m.id, 'trash', 'Mixed materials (paper/plastic bubble); garbage.'
FROM materials m WHERE m.name='Paper'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Padded envelopes (paper)');

-- Metal (trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Razor blades', m.id, 'trash', 'Wrap securely before placing in garbage.'
FROM materials m WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Razor blades');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Utensils', m.id, 'trash', 'Metal utensils not accepted in curbside; donate if usable.'
FROM materials m WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Utensils');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Gardening tools', m.id, 'trash', 'If not reusable, dispose in garbage or junk pickup.'
FROM materials m WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Gardening tools');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Gas leaf blowers', m.id, 'trash', 'Dispose via junk pickup if possible; otherwise garbage.'
FROM materials m WHERE m.name='Metal'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Gas leaf blowers');

-- Glass (trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Broken light bulbs', m.id, 'trash', 'Non-hazardous bulbs only; wrap securely before trash.'
FROM materials m WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Broken light bulbs');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Light bulbs (halogen)', m.id, 'trash', 'Do not recycle; place in garbage.'
FROM materials m WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Light bulbs (halogen)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Light bulbs (incandescent)', m.id, 'trash', 'Do not recycle; place in garbage.'
FROM materials m WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Light bulbs (incandescent)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Glassware', m.id, 'trash', 'Not container glass; trash.'
FROM materials m WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Glassware');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pyrex', m.id, 'trash', 'Heat-treated glass not recyclable with bottles/jars; trash.'
FROM materials m WHERE m.name='Glass'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pyrex');

-- Textiles / Home (trash mapped to Special)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Bedding', m.id, 'trash', 'Donate if clean/usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Bedding');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pillows & cushions', m.id, 'trash', 'Donate if usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pillows & cushions');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Wetsuits', m.id, 'trash', 'Check for specialty recycling; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Wetsuits');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Yarn', m.id, 'trash', 'Donate leftovers; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Yarn');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Reusable shopping bags', m.id, 'trash', 'Donate if usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Reusable shopping bags');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Shoes', m.id, 'trash', 'Donate if wearable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Shoes');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Suitcases', m.id, 'trash', 'Donate if usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Suitcases');

-- Wood / Arts & Crafts (trash mapped to Special)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Chopsticks & skewers', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Chopsticks & skewers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Coat hangers (wood)', m.id, 'trash', 'Donate if usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Coat hangers (wood)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fiberboard', m.id, 'trash', 'Engineered wood; place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fiberboard');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Matches', m.id, 'trash', 'Ensure cooled; place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Matches');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pencils', m.id, 'trash', 'Place in garbage when no longer usable.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pencils');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Crayons', m.id, 'trash', 'Donate if usable; otherwise trash.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Crayons');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pens & markers', m.id, 'trash', 'Place in garbage when spent.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pens & markers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Rubber bands', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Rubber bands');

-- Bathroom / Medical / Cleaning (trash mapped by likely material)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Diapers', m.id, 'trash', 'Bag and place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Diapers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Menstrual products', m.id, 'trash', 'Bag and place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Menstrual products');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Toothbrushes', m.id, 'trash', 'Place in garbage when spent.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Toothbrushes');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Toothpaste tubes', m.id, 'trash', 'Residual product and mixed materials; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Toothpaste tubes');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cotton swabs', m.id, 'trash', 'Small item; garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cotton swabs');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Dental floss', m.id, 'trash', 'String tangles equipment; garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Dental floss');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Face masks', m.id, 'trash', 'Bag and place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Face masks');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Hair', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Hair');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Bed pads', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Bed pads');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Liquid soap', m.id, 'trash', 'Empty containers separately follow plastic container rules; product residues to garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Liquid soap');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Air filters', m.id, 'trash', 'Bag if dusty; place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Air filters');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Rubber gloves', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Rubber gloves');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Sponges', m.id, 'trash', 'Dispose in garbage when worn.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Sponges');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Vacuum cleaner bags', m.id, 'trash', 'Seal and place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Vacuum cleaner bags');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Wipes', m.id, 'trash', 'Never flush; place in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Wipes');

-- Outside / General (trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Garden hoses', m.id, 'trash', 'Tangling hazard; place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Garden hoses');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Golf balls', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Golf balls');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Bungee cords', m.id, 'trash', 'Place in garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Bungee cords');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Charcoal and ash', m.id, 'trash', 'Fully cool before bagging and trashing.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Charcoal and ash');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Umbrellas', m.id, 'trash', 'Mixed materials; dispose in garbage.'
FROM materials m WHERE m.name='Special'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Umbrellas');

-- Food packaging (additional trash)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Energy bar wrappers', m.id, 'trash', 'Metalized/laminate film; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Energy bar wrappers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Plastic cups (kids)', m.id, 'trash', 'Single-use kids party cups; garbage.'
FROM materials m WHERE m.name='Plastic'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Plastic cups (kids)');