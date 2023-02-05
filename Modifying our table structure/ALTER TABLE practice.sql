-- Create the database homework2Database and work inside it.
CREATE DATABASE homework2Database;
USE homework2Database;

-- 1. Create the product table to store products.
-- The products will have numeric type id, a name and a double xx.yz price.
-- Delete the price column from the table.
CREATE TABLE product (
id INT,
p_name VARCHAR(30),
p_price DECIMAL(4,2)
);

SELECT * FROM product;
ALTER TABLE product DROP COLUMN p_price;
DROP TABLE product;

-- 2. Create the people table to store people.
-- People will have numeric type ID, a name, a phone number, a date of birth and a height.
-- Add a column representing the person's gender (M or F).
-- Add a column to represent the person's IQ.
CREATE TABLE people (
ID INT,
p_name VARCHAR(20),
p_phone_number VARCHAR(10),
p_date_of_birth DATE,
p_height DECIMAL (4,2)
);

SELECT * FROM  people;
ALTER TABLE people ADD p_gender VARCHAR(1);
ALTER TABLE people ADD p_IQ INT;
DROP table people;

-- 3. Create th computer table to store computers.
-- Computers will have a brand, a ram memory, a processor and a price.
-- Delete the memory and processor columns.
-- Add the c_color and c_description columns.
CREATE TABLE computer (
c_brand VARCHAR(20),
c_ram INT,
c_processor VARCHAR(20),
c_price INT
);

SELECT * FROM  computer;
ALTER TABLE computer DROP COLUMN ram;
ALTER TABLE computer DROP COLUMN processor;
ALTER TABLE computer ADD c_color VARCHAR(20);
ALTER TABLE computer ADD c_description VARCHAR(100);
DROP TABLE computer;