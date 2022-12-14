-- Create and work inside the notNullDb database.
CREATE DATABASE notNullDb;
USE notNullDb;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a double xx.yz price.
-- The name must always be specified.
-- Enter an entry in the table without specifying the product name.
-- Emter an entry in the table specifying only the name and price.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20) NOT NULL,
p_price DECIMAL (4,2)
);

INSERT INTO product (p_price) VALUES (23.45);
INSERT INTO product (p_name,p_price) VALUES ('Jacket',55.355567);
SELECT * FROM product;
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name, a phone number, a date of birth and a height.
-- The name and phone number must always be specified.
-- Enter an entry in the table without specifying the name.
-- Enter an entry in the table without specifying the phone number.
-- Enter an entry in the table specifying all the data.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20) NOT NULL,
p_phone_number VARCHAR(20) NOT NULL,
p_birthday VARCHAR(20),
p_height DECIMAL (3,2)
);

INSERT INTO people (p_phone_number, p_birthday, p_height) VALUES ('0773245556','2.12.1985',1.80);
INSERT INTO people (p_name, p_birthday, p_height) VALUES ('Andrei','2.03.1986',1.78);
INSERT INTO people (p_name, p_phone_number, p_birthday, p_height) VALUES ('Andra','0773211221','2.11.1983',1.65);
SELECT * FROM people;
DROP TABLE people;

-- 3. Create the computer table to store computers.
-- Computers will have a brand, a ram memory, a processor and a price.
-- All data must be specified.
-- Enter 3 entries in the table.
CREATE TABLE computer (
c_brand VARCHAR (20) NOT NULL,
c_ram INT NOT NULL,
c_processor VARCHAR(20) NOT NULL,
c_price INT NOT NULL
);

INSERT INTO computer VALUES ('Lenovo', 12, '19',1200);
INSERT INTO computer VALUES ('Samsung', 4, '11',1000);
INSERT INTO computer VALUES ('Aple', 12, '19',2000);
SELECT * FROM computer;

