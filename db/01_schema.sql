-- Create database and app user
CREATE DATABASE IF NOT EXISTS sortsmart
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;

CREATE USER IF NOT EXISTS 'sortsmart'@'%' IDENTIFIED BY 'sortsmartpw';
GRANT ALL PRIVILEGES ON sortsmart.* TO 'sortsmart'@'%';
FLUSH PRIVILEGES;

USE sortsmart;

-- === Tables ===
-- Materials
CREATE TABLE materials (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80) NOT NULL UNIQUE,
  description VARCHAR(255)
) ENGINE=InnoDB;

-- Items
CREATE TABLE items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  material_id INT NOT NULL,
  default_stream ENUM('recycle','compost','trash','hazardous','special'),
  notes TEXT,
  image_url VARCHAR(512),
  CONSTRAINT fk_items_material FOREIGN KEY (material_id) REFERENCES materials(id),
  FULLTEXT KEY ft_items_name_notes (name, notes)
) ENGINE=InnoDB;

-- Item aliases
CREATE TABLE item_aliases (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  alias VARCHAR(120) NOT NULL,
  CONSTRAINT fk_alias_item FOREIGN KEY (item_id) REFERENCES items(id),
  FULLTEXT KEY ft_alias (alias)
) ENGINE=InnoDB;

-- Zip codes mapped to counties
CREATE TABLE zipcodes (
  zip5 CHAR(5) PRIMARY KEY,
  city VARCHAR(80),
  state CHAR(2) NOT NULL DEFAULT 'CA',
  county_name VARCHAR(120) NOT NULL,
  KEY idx_zip_county (state, county_name)
) ENGINE=InnoDB;

-- Resources
CREATE TABLE resources (
  id INT AUTO_INCREMENT PRIMARY KEY,
  county_name VARCHAR(120) NOT NULL,
  state CHAR(2) NOT NULL DEFAULT 'CA',
  title VARCHAR(160) NOT NULL,
  url VARCHAR(512) NOT NULL,
  KEY idx_resources_county (state, county_name)
) ENGINE=InnoDB;

-- Localized rules keyed by county name/state
CREATE TABLE disposal_rules (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  county_name VARCHAR(120) NOT NULL,
  state CHAR(2) NOT NULL DEFAULT 'CA',
  stream ENUM('recycle','compost','trash','hazardous','special') NOT NULL,
  instructions TEXT,
  source_url VARCHAR(512),
  UNIQUE KEY uq_rule (item_id, state, county_name),
  CONSTRAINT fk_rule_item FOREIGN KEY (item_id) REFERENCES items(id),
  KEY idx_dr_county (state, county_name)
) ENGINE=InnoDB;

-- Drop-off locations (geospatial)
CREATE TABLE dropoff_locations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(160) NOT NULL,
  address1 VARCHAR(160),
  city VARCHAR(80),
  state VARCHAR(32),
  postal_code VARCHAR(20),
  phone VARCHAR(40),
  website VARCHAR(512),
  hours VARCHAR(255),
  coord POINT SRID 4326 NOT NULL,
  SPATIAL INDEX spx_coord (coord)
) ENGINE=InnoDB;

CREATE TABLE location_services (
  location_id INT NOT NULL,
  material_id INT NOT NULL,
  accepted BOOLEAN NOT NULL DEFAULT TRUE,
  notes VARCHAR(255),
  PRIMARY KEY (location_id, material_id),
  CONSTRAINT fk_ls_loc FOREIGN KEY (location_id) REFERENCES dropoff_locations(id),
  CONSTRAINT fk_ls_mat FOREIGN KEY (material_id) REFERENCES materials(id)
) ENGINE=InnoDB;

-- Photos (optional)
CREATE TABLE photos (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  file_path VARCHAR(512) NOT NULL,
  predicted_item_id INT NULL,
  predicted_label VARCHAR(120),
  confidence DECIMAL(5,4),
  CONSTRAINT fk_photo_item FOREIGN KEY (predicted_item_id) REFERENCES items(id)
) ENGINE=InnoDB;

-- Chat logs (optional)
CREATE TABLE chatbot_logs (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  asked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  county_name VARCHAR(120) NULL,
  state CHAR(2) NULL,
  user_query TEXT NOT NULL,
  answer TEXT,
  item_id INT NULL,
  CONSTRAINT fk_chat_item FOREIGN KEY (item_id) REFERENCES items(id),
  KEY idx_chat_county (state, county_name)
) ENGINE=InnoDB;
