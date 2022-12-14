-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name TEXT NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL DEFAULT(10),
    category_id INT FOREIGN KEY
    REFERENCES category(id) 
);

CREATE TABLE tag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name TEXT
);

CREATE TABLE productTag(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT
    tag_id INT
);

