-- Create the coalesceDB database and work inside it.
CREATE DATABASE coalesceDB;
USE coalesceDB;

-- 1. Create the task table to store tasks.
-- The tasks will have a name, a description and a deadline (the number of days to be solved).
-- Enter 5 entries in the table.
-- Read all the items, and if the description is not specified, treat this case.
CREATE TABLE task (
t_name VARCHAR(30),
t_description VARCHAR(100),
t_deadline INT
);

INSERT INTO task VALUES ('User login','Verify that user can login',1);
INSERT INTO task VALUES ('Input data','Verify that the user can insert data',2);
INSERT INTO task VALUES ('Select data',null,3);
INSERT INTO task VALUES ('Subscribing email',null,2);
INSERT INTO task VALUES ('UI elements',null,3);

SELECT t_name, t_description, t_deadline FROM task;
SELECT t_name, t_deadline, COALESCE (t_description, 'Description not specified') AS 't_description' FROM task;
DROP TABLE task;

-- 2. Create the customer table to store clients.
-- Customers will have numeric type id, a name and a phone number. The name must be entered.
-- Enter 5 entries in the table.
-- Read all data in the table, and if the phone number is not specified, return "Phone not specified".
CREATE TABLE customer (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20) NOT NULL,
c_phone VARCHAR(20)
); 

INSERT INTO customer (c_name, c_phone) VALUES ('Andrew','0777666555');
INSERT INTO customer (c_name, c_phone) VALUES ('Victor',null);
INSERT INTO customer (c_name, c_phone) VALUES ('Stuart',null);
INSERT INTO customer (c_name, c_phone) VALUES ('John','0755444333');
INSERT INTO customer (c_name, c_phone) VALUES ('Ana',null);

SELECT * FROM customer;
SELECT id, c_name, COALESCE (c_phone, 'Phone not specified') AS c_phone FROM customer; 

DROP TABLE customer;

-- 3. Create the product table.
-- The products will have an id, a name and a price.
-- Enter 5 entries in the table.
-- Read all products data. If the product does not have the specified price, 1000 will be returned.

CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO product (p_name, p_price) VALUES ('Laptop',2500);
INSERT INTO product (p_name, p_price) VALUES ('Phone',null);
INSERT INTO product (p_name, p_price) VALUES ('Keyboard',50);
INSERT INTO product (p_name, p_price) VALUES ('Mouse',null);
INSERT INTO product (p_name, p_price) VALUES ('Monitor',null);

SELECT id, p_name, COALESCE(p_price,1000) AS p_price FROM product;