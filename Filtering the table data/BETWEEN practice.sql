-- Create the database betweenDatabase and work inside it.
CREATE DATABASE betweenDatabase;
USE betweenDatabase;

-- 1.  Create the product table to store products.
-- The product will have a numeric type id, a name and the quantity in store.
-- Enter 5 entries in the table.
-- Read all the data of the products that have limited stock.
-- A product will have limited stock if the quantity in stock is between 1 and 10.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_quantity INT
);

INSERT INTO product (p_name, p_quantity) VALUES ('Phone',8);
INSERT INTO product (p_name, p_quantity) VALUES ('Mouse',15);
INSERT INTO product (p_name, p_quantity) VALUES ('Keyboard',5);
INSERT INTO product (p_name, p_quantity) VALUES ('Tablet',3);
INSERT INTO product (p_name, p_quantity) VALUES ('Smartwatch',11);

SELECT * FROM product WHERE p_quantity BETWEEN 1 and 10;
DROP TABLE product;

-- 2. Create the people table to store pleople.
-- People will have a numeric type id, a name, and an age.
-- Enter 5 entries in the table.
-- Read all data of people  who are minors, using the keyword BETWEEN.
-- Also read all the data of the adults.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_age INT
);

INSERT INTO people (p_name, p_age) VALUES ('Anne',83);
INSERT INTO people (p_name, p_age) VALUES ('Stuart',36);
INSERT INTO people (p_name, p_age) VALUES ('Billy',12);
INSERT INTO people (p_name, p_age) VALUES ('Marie',10);
INSERT INTO people (p_name, p_age) VALUES ('Eva',18);

SELECT * FROM people WHERE p_age BETWEEN 1 AND 17;
SELECT * FROM people WHERE p_age BETWEEN 18 AND 90;

DROP TABLE people;


-- 3. Create the computer table to store computers.
-- The computers will have a brand, a ram memory and a price.
-- Enter 5 entries in the table.
-- Read the brands of the computers that have a ram memory between 4 and 10 inclusive.
CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_price INT
);

INSERT INTO computer VALUES ('Apple',9,2000);
INSERT INTO computer VALUES ('Dell',6,1300);
INSERT INTO computer VALUES ('Asus',4,1200);
INSERT INTO computer VALUES ('Acer',10,2500);
INSERT INTO computer VALUES ('Lenovo',3,1000);

SELECT c_brand FROM computer WHERE c_ram BETWEEN 4 and 10;
