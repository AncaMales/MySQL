-- Create database andOrDB and work inside it.

CREATE DATABASE andOrDB;
USE andOrDB;

-- 1. Create the product table to store products.
-- The prodict will have a numeric type id, a name and the customer's name.
-- Enter 5 entries in the table.
-- Read all the data of the products bought by Andrew or Steven.

CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20)
);

INSERT INTO product (p_name, c_name) VALUES ('TV','Andrew');
INSERT INTO product (p_name, c_name) VALUES ('Telephone','Alex');
INSERT INTO product (p_name, c_name) VALUES ('PC','Andrew');
INSERT INTO product (p_name, c_name) VALUES ('Tablet','Steven');
INSERT INTO product (p_name, c_name) VALUES ('Smartwatch','Steven');

SELECT * FROM product WHERE c_name = 'Andrew' OR c_name = 'Steven';

DROP TABLE product;

-- 2. Create the people table to store pleople.
-- People will have a numeric type id, a name, a phone number and an email.
-- Enter 5 entries in the table.
-- Read all data for people with id 1, 2 or 3.

CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_phone VARCHAR(20),
p_email VARCHAR(40)
);

INSERT INTO people (p_name, p_phone, p_email) VALUES ('Alex','0777555555','alex@gmail.com');
INSERT INTO people (p_name, p_phone, p_email) VALUES ('Marie','0233333444','marie@yahoo.com');
INSERT INTO people (p_name, p_phone, p_email) VALUES ('John','0777123456','john@yahoo.com');
INSERT INTO people (p_name, p_phone, p_email) VALUES ('Marisa','0776888999','marisa@gmail.com');
INSERT INTO people (p_name, p_phone, p_email) VALUES ('Joana','0755666777','joana@gmail.com');

SELECT * FROM people WHERE id=1 OR id=2 OR id=3;

DROP TABLE people;

-- 3. Create the computer table to store computer.
-- The computers will have a brand, a ram memory and a processor.
-- Enter 5 entries in the table.
-- Read the computer data that have the "i3" processor and 8 ram memory.

CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(10)
);

INSERT INTO computer VALUES ('Apple',9,'i9');
INSERT INTO computer VALUES ('Acer',6,'i3');
INSERT INTO computer VALUES ('Apple',8,'i3');
INSERT INTO computer VALUES ('Samsung',8,'i7');
INSERT INTO computer VALUES ('Lenovo',9,'i3');

SELECT * FROM computer WHERE c_processor = 'i3' AND c_ram = 8;
