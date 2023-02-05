-- Create and work inside the offsetAndLimitDb database.

CREATE DATABASE offsetAndLimitDb;
USE offsetAndLimitDb;

-- 1. Create the table cat to store cats.
-- Cats will have a numeric type id, a name and the name of the owner.
-- Enter 5 entries in the table.
-- Read the data of the first 3 cats.

CREATE TABLE cat (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_owner VARCHAR(20)
);

INSERT INTO cat (c_name, c_owner) VALUES ('Pisi','Andreea');
INSERT INTO cat (c_name, c_owner) VALUES ('Pixie','John');
INSERT INTO cat (c_name, c_owner) VALUES ('Luna','Andrew');
INSERT INTO cat (c_name, c_owner) VALUES ('Max','Alina');
INSERT INTO cat (c_name, c_owner) VALUES ('Sully','David');

SELECT * FROM cat LIMIT 3;
SELECT * FROM cat;
DROP TABLE cat;

-- 2. Create the customer table to store customers.
-- Customers will have a numeric type id, a name and a budget.
-- Enter 5 entries in the table.
-- Starting from the second position, read the data off all clients with a budget greater than 100.

CREATE TABLE customer (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_budget INT
);

INSERT INTO customer (c_name, c_budget) VALUES ('Maria',101);
INSERT INTO customer (c_name, c_budget) VALUES ('John',90);
INSERT INTO customer (c_name, c_budget) VALUES ('Andra',120);
INSERT INTO customer (c_name, c_budget) VALUES ('Alex',50);
INSERT INTO customer (c_name, c_budget) VALUES ('Ruxy',150);

SELECT * FROM customer WHERE c_budget > 100 LIMIT 100 OFFSET 2;
DROP TABLE customer;

-- 3. Create the menu table to store products.
-- All products will have a name and a price.
-- Enter 8 entries in the table.
-- Read all our products in 3-item pages.

CREATE TABLE menu (
p_name VARCHAR (20),
p_price INT
);

INSERT INTO menu VALUES ('Dell Laptop ',1400);
INSERT INTO menu VALUES ('Apple Laptop',2500);
INSERT INTO menu VALUES ('Keyboard',58);
INSERT INTO menu VALUES ('Mouse',40);
INSERT INTO menu VALUES ('Samsung Monitor',100);
INSERT INTO menu VALUES ('Asus PC', 3000);
INSERT INTO menu VALUES ('Headphones',80);
INSERT INTO menu VALUES ('Asus Monitor',98);

SELECT * FROM menu;
SELECT * FROM menu LIMIT 3 OFFSET 0;
SELECT * FROM menu LIMIT 3 OFFSET 3;
SELECT * FROM menu LIMIT 3 OFFSET 6;





