-- Create the updateDb database and work inside it.
CREATE DATABASE updateDB;
USE updateDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a price.
-- Enter 5 entries in the table.
-- Change the price of all products called 'Pants'.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO product (p_name, p_price) VALUES ('Shirt',150);
INSERT INTO product (p_name, p_price) VALUES ('Pants',140);
INSERT INTO product (p_name, p_price) VALUES ('Cardigan',200);
INSERT INTO product (p_name, p_price) VALUES ('Pants', 80);
INSERT INTO product (p_name, p_price) VALUES ('Adidas Pants',500);

UPDATE product SET p_price=100 WHERE p_name LIKE '%Pants%';
SELECT * FROM product;
DROP TABLE product;

-- 2.Create the people table to store people.
-- People will have a numeric type id, a name and a profession.
-- Enter 5 entries in the table.
-- Change the job of the person with id 3.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_profession VARCHAR(30)
);

INSERT INTO people (p_name, p_profession) VALUES ('Sabina','doctor');
INSERT INTO people (p_name, p_profession) VALUES ('George','nurse');
INSERT INTO people (p_name, p_profession) VALUES ('Adina','Manual Tester Engineer');
INSERT INTO people (p_name, p_profession) VALUES ('Alex','Software Engineer');
INSERT INTO people (p_name, p_profession) VALUES ('David','IT Recruiter');

UPDATE people SET p_profession='Automation Tester Engineer' WHERE id=3;
SELECT * FROM people;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- The computers will have a brand, a ram memory and a processor.
-- Enter 5 entries in the table.
-- All Samsung, Asus and Apple computers have been upgraded. They will have 24 ram.
CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(10)
);

INSERT INTO computer VALUES ('Apple',9,'i5');
INSERT INTO computer VALUES ('Dell',6,'i3');
INSERT INTO computer VALUES ('Asus',8,'i5');
INSERT INTO computer VALUES ('Apple',8,'i3');
INSERT INTO computer VALUES ('Samsung',5,'i3');

UPDATE computer SET c_ram=24 WHERE c_brand IN ('Samsung','Asus','Apple');
SELECT * FROM computer;
