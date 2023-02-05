-- Create and work inside the selectDB database.
CREATE DATABASE selectDB;
USE selectDB;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all product data.
-- Read just the id and the name of the products.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(20),
customer_name VARCHAR(20)
);

INSERT INTO product (product_name, customer_name) VALUES ('Samsung Tablet','Ion');
INSERT INTO product (product_name, customer_name) VALUES ('Samsung Phone','Ioana');
INSERT INTO product (product_name, customer_name) VALUES ('Samsung TV','Maria');
INSERT INTO product (product_name, customer_name) VALUES ('Apple Phone','George');
INSERT INTO product (product_name, customer_name) VALUES ('Apple Tablet','Georgiana');

SELECT * FROM product;
SELECT id, product_name FROM product;

DROP TABLE product;


-- 2. Create the people table to store people.
-- People will have a numeric type ID, a name, a phone number and an email.
-- Enter 5 entries in the table.
-- Read all persons data.
-- Just read people's phone numbers and emails.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR (20),
p_phone_number VARCHAR(10),
p_email VARCHAR(30)
);

INSERT INTO people (p_name, p_phone_number, p_email) VALUES ('Maria Tudor','0234567354','mariatudor@yahoo.com');
INSERT INTO people (p_name, p_phone_number, p_email) VALUES ('Ioan Lascar','0339654777','ioanl@yahoo.com');
INSERT INTO people (p_name, p_phone_number, p_email) VALUES ('George Adamescu','0799999999','george@gmsil.com');
INSERT INTO people (p_name, p_phone_number, p_email) VALUES ('Adam Luca','0223555999','adam@yahoo.com');
INSERT INTO people (p_name, p_phone_number, p_email) VALUES ('David Hans','0899345345','david@yahoo.com');

SELECT * FROM people;
SELECT p_phone_number, p_email FROM people;

-- 3. Create the computer table to store the computers.
-- The computers will have a brand, a ram memory, a processor and an ip.
-- Enter 5 entries in the tabl/
-- Read all computer data.
-- Read just the brand, ram memory and computer processor.
CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(20),
c_ip VARCHAR(20)
);

INSERT INTO computer VALUES ('LG',8,'i5','35.234.56.786');
INSERT INTO computer VALUES ('Apple',9,'i7','45.134.56.786');
INSERT INTO computer VALUES ('LG',6,'i3','65.87.224.456');
INSERT INTO computer VALUES ('Asus',8,'i5','25.976.56.888');
INSERT INTO computer VALUES ('Acer',8,'i5','85.234.764.923');

SELECT * FROM computer;
SELECT c_brand, c_ram, c_processor FROM computer;