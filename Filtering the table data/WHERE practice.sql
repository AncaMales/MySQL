-- Create and work inside the whereDB database.
CREATE DATABASE whereDB;
USE whereDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all product data of the products bought by John.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20)
);

INSERT INTO product (p_name, c_name) VALUES ('Laptop','Andrew');
INSERT INTO product (p_name, c_name) VALUES ('Phone','John');
INSERT INTO product (p_name, c_name) VALUES ('Tablet','John');
INSERT INTO product (p_name, c_name) VALUES ('Mouse','Maria');
INSERT INTO product (p_name, c_name) VALUES ('Keyboard','Maria');
INSERT INTO product (p_name, c_name) VALUES ('PC','John');

SELECT * FROM product WHERE c_name = 'John';
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type ID, a name and a description.
-- If a user does not specify a description, the text "Unspecified" will be entered on that column
-- Enter 5 entries in the table.
-- Read all data of people who have an unspecified description.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_description VARCHAR(100) DEFAULT 'Unspecified'
);

INSERT INTO people (p_name, p_description) VALUES ('Ema','Best student ever');
INSERT INTO people (p_name) VALUES ('Julian');
INSERT INTO people (p_name, p_description) VALUES ('Lara','Best colegue ever');
INSERT INTO people (p_name) VALUES ('Maria');
INSERT INTO people (p_name, p_description) VALUES ('Alex','Best boss ever');

SELECT * FROM people;
SELECT * FROM people WHERE p_description='Unspecified';

DROP TABLE people;

-- 3. Create the computer table to store the computers.
-- The computers will have a brand, a ram memory and a processor. 
-- Enter 5 entries in the table.
-- Read all Samsung computer data.
-- Read all data on computer with a ram memory less than 8.
CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(20)
);

INSERT INTO computer VALUES ('Apple',9,'i6');
INSERT INTO computer VALUES ('LG',6,'i3');
INSERT INTO computer VALUES ('Samsung',9,'i5');
INSERT INTO computer VALUES ('Acer',8,'i5');
INSERT INTO computer VALUES ('Samsung',6,'i3');

SELECT * FROM computer WHERE c_brand='Samsung';
SELECT * FROM computer WHERE c_ram < 8; 
SELECT c_brand FROM computer WHERE c_ram < 8; 