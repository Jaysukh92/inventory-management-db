CREATE DATABASE IF NOT EXISTS inventory_db;
USE inventory_db;

CREATE TABLE suppliers (
  supplier_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  contact_email VARCHAR(100)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  stock INT,
  supplier_id INT,
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE inventory_log (
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  change_qty INT,
  change_type ENUM('IN', 'OUT'),
  log_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
