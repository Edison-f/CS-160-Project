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

-- E-Waste (electronics)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Calculators', m.id, 'hazardous', 'Do not place in garbage or recycling. Schedule HHW e-waste drop-off; consider repair/reuse or donation.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Calculators');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cameras', m.id, 'hazardous', 'Do not place in garbage or recycling. Schedule HHW e-waste drop-off or use retailer take-back when available.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cameras');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cell Phones', m.id, 'hazardous', 'Do not place in garbage or recycling. Use HHW e-waste drop-off, carrier/retailer take-back, or donate if working.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cell Phones');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Christmas Lights', m.id, 'hazardous', 'Tangled cords and bulbs; do not place in curbside bins. Use HHW e-waste or specialty drop-offs.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Christmas Lights');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Computer Accessories', m.id, 'hazardous', 'Includes keyboards, mice, external drives, webcams. Use HHW e-waste drop-off or retailer take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Computer Accessories');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Computer Monitors', m.id, 'hazardous', 'Contains hazardous materials. Schedule HHW e-waste drop-off; do not place in garbage or recycling.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Computer Monitors');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Computers', m.id, 'hazardous', 'Wipe data and donate if working; otherwise use HHW e-waste drop-off or retailer take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Computers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Continuous Glucose Monitors (CGM)', m.id, 'hazardous', 'Contains batteries/electronics. Use HHW e-waste drop-off; follow manufacturer guidance for parts.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Continuous Glucose Monitors (CGM)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cordless Appliances', m.id, 'hazardous', 'Remove batteries if possible; use HHW e-waste or retailer take-back. Do not curbside recycle.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cordless Appliances');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'DVD Players', m.id, 'hazardous', 'Use HHW e-waste drop-off or retailer take-back. Do not place in curbside bins.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='DVD Players');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'E-Readers', m.id, 'hazardous', 'Back up and wipe data; donate if working. Otherwise use HHW e-waste or retailer take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='E-Readers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Electrical Cords and Cables', m.id, 'hazardous', 'Tangles sorting equipment; do not place in curbside bins. Use HHW e-waste or take-back programs.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Electrical Cords and Cables');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fax Machines', m.id, 'hazardous', 'HHW e-waste drop-off or retailer take-back. Do not place in garbage or recycling.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fax Machines');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Game Consoles', m.id, 'hazardous', 'Consider resale/donation if working. Otherwise use HHW e-waste drop-off or retailer take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Game Consoles');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'GPS Systems', m.id, 'hazardous', 'Back up and wipe data; donate if working. Otherwise HHW e-waste drop-off.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='GPS Systems');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Hearing Aids (Non-Rechargeable)', m.id, 'hazardous', 'Contains batteries/electronics. Use HHW e-waste programs; follow manufacturer guidance.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Hearing Aids (Non-Rechargeable)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Hearing Aids (Rechargeable)', m.id, 'hazardous', 'Contains rechargeable batteries. Use HHW e-waste or retailer take-back; do not trash.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Hearing Aids (Rechargeable)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'iPods and MP3 Players', m.id, 'hazardous', 'Back up and wipe; donate if working. Otherwise HHW e-waste drop-off or take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='iPods and MP3 Players');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Microwaves', m.id, 'hazardous', 'Schedule HHW e-waste drop-off or junk pickup if accepted; do not curbside recycle.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Microwaves');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Printer Cartridges', m.id, 'hazardous', 'Use retailer/mail-back take-back programs or HHW e-waste; do not place in curbside bins.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Printer Cartridges');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Printers, Copiers and Scanners', m.id, 'hazardous', 'Use HHW e-waste or retailer take-back. Remove cartridges and cables when possible.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Printers, Copiers and Scanners');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Record Players', m.id, 'hazardous', 'Donate if working; otherwise HHW e-waste drop-off. Do not place in garbage or recycling.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Record Players');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Satellite Dishes', m.id, 'hazardous', 'Contact service provider for take-back; otherwise use HHW e-waste options.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Satellite Dishes');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Stereo Equipment', m.id, 'hazardous', 'Donate if working; otherwise HHW e-waste drop-off or retailer take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Stereo Equipment');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Tablets', m.id, 'hazardous', 'Back up and wipe data; donate if working. Otherwise HHW e-waste or take-back.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Tablets');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Telephones (Landline)', m.id, 'hazardous', 'Donate if working; otherwise HHW e-waste drop-off. Do not place in curbside bins.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Telephones (Landline)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'TV (CRT)', m.id, 'hazardous', 'High lead content; must go to HHW e-waste drop-off or certified recycler. Illegal to trash or recycle curbside.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='TV (CRT)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'TV (Flat Screen)', m.id, 'hazardous', 'HHW e-waste drop-off or certified recycler; consider donation if working. Do not curbside recycle.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='TV (Flat Screen)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'VCRs', m.id, 'hazardous', 'HHW e-waste drop-off or retailer take-back programs. Do not place in curbside bins.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='VCRs');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Video Games', m.id, 'hazardous', 'Resell or donate if working. Otherwise HHW e-waste drop-off; do not place in curbside bins.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Video Games');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Wireless Headphones', m.id, 'hazardous', 'Contains batteries. Use HHW e-waste or retailer take-back; do not trash.'
FROM materials m WHERE m.name='Electronics'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Wireless Headphones');

-- E-Waste Aliases
INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'cellphone'
FROM items i WHERE i.name='Cell Phones'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='cellphone');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'mobile phone'
FROM items i WHERE i.name='Cell Phones'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='mobile phone');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'smartphone'
FROM items i WHERE i.name='Cell Phones'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='smartphone');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'CRT TV'
FROM items i WHERE i.name='TV (CRT)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='CRT TV');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'flat screen TV'
FROM items i WHERE i.name='TV (Flat Screen)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='flat screen TV');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'LCD TV'
FROM items i WHERE i.name='TV (Flat Screen)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='LCD TV');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'LED TV'
FROM items i WHERE i.name='TV (Flat Screen)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='LED TV');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'Plasma TV'
FROM items i WHERE i.name='TV (Flat Screen)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='Plasma TV');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'laptop'
FROM items i WHERE i.name='Computers'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='laptop');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'desktop computer'
FROM items i WHERE i.name='Computers'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='desktop computer');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'monitor'
FROM items i WHERE i.name='Computer Monitors'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='monitor');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'charging cable'
FROM items i WHERE i.name='Electrical Cords and Cables'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='charging cable');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'power cord'
FROM items i WHERE i.name='Electrical Cords and Cables'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='power cord');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'ink cartridges'
FROM items i WHERE i.name='Printer Cartridges'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='ink cartridges');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'toner cartridges'
FROM items i WHERE i.name='Printer Cartridges'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='toner cartridges');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'all-in-one printer'
FROM items i WHERE i.name='Printers, Copiers and Scanners'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='all-in-one printer');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'console'
FROM items i WHERE i.name='Game Consoles'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='console');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'PlayStation'
FROM items i WHERE i.name='Game Consoles'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='PlayStation');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'Xbox'
FROM items i WHERE i.name='Game Consoles'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='Xbox');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'earbuds'
FROM items i WHERE i.name='Wireless Headphones'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='earbuds');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'headphones (wireless)'
FROM items i WHERE i.name='Wireless Headphones'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='headphones (wireless)');

-- Yard Trimmings / Green Waste (compostables)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Leaves', m.id, 'compost', 'Set out loose in street pile or yard trimmings cart per size/placement rules.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Leaves');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Grass clippings', m.id, 'compost', 'Accepted in yard trimmings cart or loose pile. Follow pile size and placement guidance.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Grass clippings');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Branches', m.id, 'compost', 'Accepted if less than 5 feet long and under 6 inches diameter.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Branches');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Prunings and clippings', m.id, 'compost', 'Includes plant/yard cuttings. Keep piles under 5x5 feet and clear of bike lanes.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Prunings and clippings');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Palm fronds', m.id, 'compost', 'Accepted in yard trimmings. Cut to required sizes for collection.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Palm fronds');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fresh flowers', m.id, 'compost', 'Accepted in yard trimmings. Remove non-organic adornments.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fresh flowers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Sod', m.id, 'compost', 'Remove as much soil as possible before setout.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Sod');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Christmas trees (natural)', m.id, 'compost', 'Accepted after holidays. Remove stands, tinsel, ornaments, and lights.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Christmas trees (natural)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Christmas trees (flocked)', m.id, 'compost', 'Remove stands and decorations before setout. Flocked trees accepted for composting.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Christmas trees (flocked)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Wreaths (natural)', m.id, 'compost', 'Remove wires, frames, ribbons, and non-organic decorations before setout.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Wreaths (natural)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Succulents, yucca, and cacti', m.id, 'compost', 'Accepted as yard trimmings. Handle carefully; cut to size as needed.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Succulents, yucca, and cacti');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Animal bedding (organic)', m.id, 'compost', 'Plant-based, clean bedding only. No animal waste. Set out with yard trimmings.'
FROM materials m WHERE m.name='Compostables'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Animal bedding (organic)');

-- Yard Trimmings Aliases
INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'leaf'
FROM items i WHERE i.name='Leaves'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='leaf');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'grass'
FROM items i WHERE i.name='Grass clippings'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='grass');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'lawn clippings'
FROM items i WHERE i.name='Grass clippings'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='lawn clippings');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'tree branches'
FROM items i WHERE i.name='Branches'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='tree branches');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'clippings'
FROM items i WHERE i.name='Prunings and clippings'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='clippings');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'palm leaves'
FROM items i WHERE i.name='Palm fronds'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='palm leaves');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'flowers'
FROM items i WHERE i.name='Fresh flowers'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='flowers');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'turf'
FROM items i WHERE i.name='Sod'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='turf');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'xmas tree'
FROM items i WHERE i.name='Christmas trees (natural)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='xmas tree');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'christmas tree'
FROM items i WHERE i.name='Christmas trees (natural)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='christmas tree');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'flocked tree'
FROM items i WHERE i.name='Christmas trees (flocked)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='flocked tree');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'garland'
FROM items i WHERE i.name='Wreaths (natural)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='garland');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'natural wreath'
FROM items i WHERE i.name='Wreaths (natural)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='natural wreath');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'succulents'
FROM items i WHERE i.name='Succulents, yucca, and cacti'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='succulents');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'cactus'
FROM items i WHERE i.name='Succulents, yucca, and cacti'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='cactus');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'yucca'
FROM items i WHERE i.name='Succulents, yucca, and cacti'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='yucca');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'bedding (organic)'
FROM items i WHERE i.name='Animal bedding (organic)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='bedding (organic)');

-- Household Hazardous Waste (HHW)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Antifreeze', m.id, 'hazardous', 'Do not dump or trash. Use HHW drop-off or auto parts take-back.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Antifreeze');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Used motor oil', m.id, 'hazardous', 'HHW drop-off or certified center. Do not pour down drains.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Used motor oil');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Used oil filters', m.id, 'hazardous', 'Drain and place in sealed bag or container. Take to HHW or certified center; curbside with oil where available.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Used oil filters');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fuels (gasoline/diesel/kerosene)', m.id, 'hazardous', 'Highly flammable. Keep in approved container and take to HHW. Do not trash or pour out.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fuels (gasoline/diesel/kerosene)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Car batteries (lead-acid)', m.id, 'hazardous', 'Return to retailer for take-back or bring to HHW. Do not place in garbage or recycling.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Car batteries (lead-acid)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Propane tanks (5-gallon/20 lb)', m.id, 'hazardous', 'Do not place in carts. Exchange at retailer or bring to HHW or specialty locations.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Propane tanks (5-gallon/20 lb)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Propane cylinders (1 lb camping)', m.id, 'hazardous', 'Do not trash. Use camping cylinder take-back or HHW when available.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Propane cylinders (1 lb camping)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Aerosol cans (full/with contents)', m.id, 'hazardous', 'Pressurized and potentially flammable/toxic. Take to HHW. Empty metal cans may have different rules.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Aerosol cans (full/with contents)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paint (latex)', m.id, 'hazardous', 'Use PaintCare retailer drop-off or HHW. Keep in original container with lid.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paint (latex)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paint (oil-based)', m.id, 'hazardous', 'Flammable. Bring to HHW or PaintCare sites that accept. Do not trash.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paint (oil-based)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Paint thinner/solvents', m.id, 'hazardous', 'Store sealed and take to HHW. Do not pour down drains or trash.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Paint thinner/solvents');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Cleaning products (bleach/ammonia)', m.id, 'hazardous', 'Corrosive/toxic. Use up or take to HHW. Never mix bleach and ammonia.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Cleaning products (bleach/ammonia)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Drain opener', m.id, 'hazardous', 'Highly corrosive. Keep capped and bring to HHW. Do not pour out.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Drain opener');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pesticides', m.id, 'hazardous', 'Toxic. Keep in original container and bring to HHW or retailer take-back where available.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pesticides');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Herbicides', m.id, 'hazardous', 'Toxic. Keep in original container and bring to HHW. Do not trash.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Herbicides');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Poisons', m.id, 'hazardous', 'Toxic chemicals. Keep sealed and take to HHW; do not place in carts.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Poisons');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Pool & hot tub chemicals', m.id, 'hazardous', 'Oxidizers/corrosives. Keep separate and bring to HHW. Do not mix chemicals.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Pool & hot tub chemicals');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Mercury thermometers', m.id, 'hazardous', 'Handle carefully; keep sealed and bring to HHW. Do not trash.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Mercury thermometers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Mercury thermostats', m.id, 'hazardous', 'Recycle via Thermostat Recycling Corp or HHW. May qualify for rebate. Do not trash.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Mercury thermostats');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Needles & sharps', m.id, 'hazardous', 'Place in approved sharps container and take to HHW or medical take-back. Do not place in carts.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Needles & sharps');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Fire extinguishers', m.id, 'hazardous', 'Do not place in carts. Bring to HHW or specialty take-back; call ahead for instructions.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Fire extinguishers');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Solvents', m.id, 'hazardous', 'Flammable/toxic. Keep sealed and bring to HHW. Do not pour out.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Solvents');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Adhesives & glues (solvent-based)', m.id, 'hazardous', 'Flammable solvents. Bring to HHW. Water-based glues may have different rules.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Adhesives & glues (solvent-based)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Brake fluid', m.id, 'hazardous', 'Automotive fluid. Keep separate and bring to HHW. Do not pour down drains.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Brake fluid');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Transmission fluid', m.id, 'hazardous', 'Automotive fluid. Keep separate and bring to HHW. Do not pour down drains.'
FROM materials m WHERE m.name='Hazardous'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Transmission fluid');

-- HHW Aliases
INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'coolant'
FROM items i WHERE i.name='Antifreeze'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='coolant');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'motor oil'
FROM items i WHERE i.name='Used motor oil'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='motor oil');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'used oil'
FROM items i WHERE i.name='Used motor oil'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='used oil');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'oil filter'
FROM items i WHERE i.name='Used oil filters'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='oil filter');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'car battery'
FROM items i WHERE i.name='Car batteries (lead-acid)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='car battery');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'lead acid battery'
FROM items i WHERE i.name='Car batteries (lead-acid)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='lead acid battery');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'BBQ propane tank'
FROM items i WHERE i.name='Propane tanks (5-gallon/20 lb)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='BBQ propane tank');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, '20 lb propane tank'
FROM items i WHERE i.name='Propane tanks (5-gallon/20 lb)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='20 lb propane tank');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'camping propane'
FROM items i WHERE i.name='Propane cylinders (1 lb camping)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='camping propane');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, '1 lb propane'
FROM items i WHERE i.name='Propane cylinders (1 lb camping)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='1 lb propane');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'gas'
FROM items i WHERE i.name='Fuels (gasoline/diesel/kerosene)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='gas');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'gasoline'
FROM items i WHERE i.name='Fuels (gasoline/diesel/kerosene)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='gasoline');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'petrol'
FROM items i WHERE i.name='Fuels (gasoline/diesel/kerosene)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='petrol');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'latex paint'
FROM items i WHERE i.name='Paint (latex)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='latex paint');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'oil-based paint'
FROM items i WHERE i.name='Paint (oil-based)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='oil-based paint');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'alkyd paint'
FROM items i WHERE i.name='Paint (oil-based)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='alkyd paint');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'paint thinner'
FROM items i WHERE i.name='Paint thinner/solvents'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='paint thinner');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'mineral spirits'
FROM items i WHERE i.name='Paint thinner/solvents'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='mineral spirits');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'solvent'
FROM items i WHERE i.name='Paint thinner/solvents'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='solvent');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'insecticide'
FROM items i WHERE i.name='Pesticides'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='insecticide');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'bug spray'
FROM items i WHERE i.name='Pesticides'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='bug spray');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'weed killer'
FROM items i WHERE i.name='Herbicides'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='weed killer');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'Roundup'
FROM items i WHERE i.name='Herbicides'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='Roundup');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'chlorine'
FROM items i WHERE i.name='Pool & hot tub chemicals'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='chlorine');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'pool shock'
FROM items i WHERE i.name='Pool & hot tub chemicals'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='pool shock');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'thermometer (mercury)'
FROM items i WHERE i.name='Mercury thermometers'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='thermometer (mercury)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'thermostat (mercury)'
FROM items i WHERE i.name='Mercury thermostats'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='thermostat (mercury)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'needles'
FROM items i WHERE i.name='Needles & sharps'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='needles');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'syringes'
FROM items i WHERE i.name='Needles & sharps'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='syringes');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'lancets'
FROM items i WHERE i.name='Needles & sharps'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='lancets');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'spray paint'
FROM items i WHERE i.name='Aerosol cans (full/with contents)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='spray paint');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'aerosol can (non-empty)'
FROM items i WHERE i.name='Aerosol cans (full/with contents)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='aerosol can (non-empty)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'extinguisher'
FROM items i WHERE i.name='Fire extinguishers'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='extinguisher');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'bleach'
FROM items i WHERE i.name='Cleaning products (bleach/ammonia)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='bleach');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'ammonia'
FROM items i WHERE i.name='Cleaning products (bleach/ammonia)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='ammonia');

-- CRV (California Redemption Value) beverage containers
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'CRV aluminum beverage can', m.id, 'recycle', 'Eligible for CRV redemption; empty and rinse.'
FROM materials m WHERE m.name='CRV'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='CRV aluminum beverage can');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'CRV plastic beverage bottle', m.id, 'recycle', 'Eligible for CRV redemption; empty and rinse. Keep cap on.'
FROM materials m WHERE m.name='CRV'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='CRV plastic beverage bottle');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'CRV glass beverage bottle', m.id, 'recycle', 'Eligible for CRV redemption; empty and rinse.'
FROM materials m WHERE m.name='CRV'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='CRV glass beverage bottle');

-- Used Oil (dedicated material for oil take-back locations)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Used motor oil (CACC)', m.id, 'hazardous', 'Take to a certified used oil collection center; do not pour down drains.'
FROM materials m WHERE m.name='UsedOil'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Used motor oil (CACC)');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Used oil filter (CACC)', m.id, 'hazardous', 'Drain and bag. Take with used oil to a certified center.'
FROM materials m WHERE m.name='UsedOil'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Used oil filter (CACC)');

-- Tires (special handling)
INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Passenger car tires', m.id, 'special', 'Not allowed in curbside carts. Take to tire retailers or county events.'
FROM materials m WHERE m.name='Tires'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Passenger car tires');

INSERT INTO items (name, material_id, default_stream, notes)
SELECT 'Bicycle tires', m.id, 'special', 'Check bike shops or special drop-offs; not accepted in curbside carts.'
FROM materials m WHERE m.name='Tires'
  AND NOT EXISTS (SELECT 1 FROM items WHERE name='Bicycle tires');

-- Aliases for new categories
INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'soda can (CRV)'
FROM items i WHERE i.name='CRV aluminum beverage can'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='soda can (CRV)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'water bottle (CRV)'
FROM items i WHERE i.name='CRV plastic beverage bottle'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='water bottle (CRV)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'beer bottle (CRV)'
FROM items i WHERE i.name='CRV glass beverage bottle'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='beer bottle (CRV)');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'motor oil'
FROM items i WHERE i.name='Used motor oil (CACC)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='motor oil');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'oil filter'
FROM items i WHERE i.name='Used oil filter (CACC)'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='oil filter');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'car tires'
FROM items i WHERE i.name='Passenger car tires'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='car tires');

INSERT INTO item_aliases (item_id, alias)
SELECT i.id, 'bike tires'
FROM items i WHERE i.name='Bicycle tires'
  AND NOT EXISTS (SELECT 1 FROM item_aliases a WHERE a.item_id=i.id AND a.alias='bike tires');