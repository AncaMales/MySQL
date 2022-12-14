-- Create the database primaryKeyHomework and work inside it. 
CREATE DATABASE primaryKeyHomework;
USE primaryKeyHomework;

-- 1. Create the order table to store orders.
-- Orders will have a numeric type id, the name of the purchased product and a price.
-- Set a unique identifier. 
CREATE TABLE order_table (
id INT PRIMARY KEY,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO order_table VALUES (1,'Laptop',1500);
INSERT INTO order_table VALUES (2,'PC',2000);
SELECT * FROM order_table;
DROP TABLE order_table;

-- 2. Create the teacher table to store teachers.
-- Teachers will have a numeric type id, a name and a subject taught. 
-- Set a unique identifier. 
CREATE TABLE teacher (
id INT PRIMARY KEY,
t_name VARCHAR(30),
t_subject VARCHAR(30)
);

INSERT INTO teacher VALUES (1,'David','JavaScript');
INSERT INTO teacher VALUES (2,'Marie','SQL');
SELECT * FROM teacher;
DROP TABLE teacher;

-- 3. Create the car table.
-- The cars will have a brand, a model and a registration number.
-- Set a unique text identifier.  
CREATE TABLE car (
c_brand VARCHAR(20),
c_model VARCHAR(20),
c_registration_number VARCHAR(10) PRIMARY KEY
);

INSERT INTO car VALUES ('Audi','A6','1212');
INSERT INTO car VALUES ('BMW','i8','1234');
SELECT * FROM car;
DROP TABLE car;

SHOW TABLES;