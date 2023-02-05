-- Create the defaultDatabase and work inside it.
CREATE DATABASE defaultDatabase;
USE defaultDatabase;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a customer's name.
-- If the customer name is not specified, the text "IN STOCK" will be entered.
CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
c_name VARCHAR(20) DEFAULT 'IN STOCK'
);

INSERT INTO product (p_name) VALUES ('car');

SELECT * FROM product;
DROP TABLE product;

-- 2.Create the people table to store people.
-- People will have a numeric type id, a name, a phone number and an email.
-- If a person does not specify their phone number or email, the text "Unspecified" will be entered.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_phone_number VARCHAR(15)  DEFAULT 'Unspecified',
p_email VARCHAR(30) DEFAULT 'Unspecified'
);

INSERT INTO people (p_name, p_phone_number) VALUES ('Andrei','0773223445');
INSERT INTO people (p_name, p_email) VALUES ('Alex','alex@yahoo.com');

SELECT * FROM people;

-- 3. Create the computer table to store computers.
-- The computers will have a brand, a ram memory, a processor and an ip.
-- Any unspecified column will receive the default value of that data type.
CREATE TABLE computer (
c_brand VARCHAR(20) DEFAULT 'Unspecified',
c_ram INT,
c_processor VARCHAR(20) DEFAULT 'Unspecified',
c_ip VARCHAR(20) DEFAULT 'Unspecified'
);

INSERT INTO computer (c_ram, c_ip) VALUES (24,'102.89.74.251');
INSERT INTO computer (c_brand, c_ram) VALUES ('HP', 8);
INSERT INTO computer (c_processor, c_ip) VALUES ('i5','102.34.76.351');

SELECT * FROM computer;