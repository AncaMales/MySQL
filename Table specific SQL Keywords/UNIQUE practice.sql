-- Create and work inside the uniqueDatabase database.
CREATE DATABASE uniqueDatabase;
USE uniqueDatabase;

-- 1. Create the person table to store people.
-- People will have a numeric type id, a name and a social security number.
-- 2 persons will never be able to have the same social security number.
-- Enter two entries in the table.
CREATE TABLE person (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_social_security VARCHAR(20) UNIQUE
);

INSERT INTO person (p_name, p_social_security) VALUES ('Maria', 3455543);
INSERT INTO person (p_name, p_social_security) VALUES ('Marian', 2455642);
SELECT * FROM person;
DROP TABLE person;

-- 2. Create the customer table to store customers.
-- Customers will have a numeric type id, a name and a email.
-- No two users will ever be able to have the same email.
-- Enter two entries in the table.
CREATE TABLE customer (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR (20),
c_email VARCHAR(50) UNIQUE
);

INSERT INTO customer (c_name, c_email) VALUES ('Ion','ion@gmail.com');
INSERT INTO customer (c_name, c_email) VALUES ('Ioana','ioana@gmail.com');
SELECT * FROM customer;
DROP TABLE customer;

-- 3. Create the credit_card table to store credit cards.
-- Credit cards will have a series, a name, a month of expiration, a year of expiration and a ccv.
-- Two cards will never be able to have the same series.
-- Enter two entries in the table.
CREATE TABLE credit_card (
id INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
c_series VARCHAR (20) UNIQUE,
c_name VARCHAR(20), 
e_year INT,
e_month INT,
ccv INT
);

INSERT INTO credit_card (c_series, c_name, e_year, e_month, ccv) VALUES ('SADSADF1234','John Wick',2022,12,344);
INSERT INTO credit_card (c_series, c_name, e_year, e_month, ccv) VALUES ('SFSSADF1294','John Smith',2026,10,227);
SELECT * FROM credit_card;
DROP TABLE credit_card;