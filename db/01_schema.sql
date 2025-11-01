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

-- Jurisdictions + resources
CREATE TABLE jurisdictions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  kind ENUM('campus','city','county','region') NOT NULL DEFAULT 'city',
  state VARCHAR(64),
  country VARCHAR(64) DEFAULT 'USA'
) ENGINE=InnoDB;

CREATE TABLE resources (
  id INT AUTO_INCREMENT PRIMARY KEY,
  jurisdiction_id INT NOT NULL,
  title VARCHAR(160) NOT NULL,
  url VARCHAR(512) NOT NULL,
  CONSTRAINT fk_resources_juris FOREIGN KEY (jurisdiction_id) REFERENCES jurisdictions(id)
) ENGINE=InnoDB;

-- Localized rules
CREATE TABLE disposal_rules (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_id INT NOT NULL,
  jurisdiction_id INT NOT NULL,
  stream ENUM('recycle','compost','trash','hazardous','special') NOT NULL,
  instructions TEXT,
  source_url VARCHAR(512),
  UNIQUE KEY uq_rule (item_id, jurisdiction_id),
  CONSTRAINT fk_rule_item FOREIGN KEY (item_id) REFERENCES items(id),
  CONSTRAINT fk_rule_juris FOREIGN KEY (jurisdiction_id) REFERENCES jurisdictions(id)
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
  jurisdiction_id INT NULL,
  user_query TEXT NOT NULL,
  answer TEXT,
  item_id INT NULL,
  CONSTRAINT fk_chat_item FOREIGN KEY (item_id) REFERENCES items(id),
  CONSTRAINT fk_chat_juris FOREIGN KEY (jurisdiction_id) REFERENCES jurisdictions(id)
) ENGINE=InnoDB;
