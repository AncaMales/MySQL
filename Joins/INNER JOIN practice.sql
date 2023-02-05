-- Create database joinDb and work inside id.

CREATE DATABASE joinDb;
USE joinDb;

-- 1. Create the student table with the columns id, name and age.
-- Create the laptop table with the id, brand and model properties.
-- Any student can have a laptop.
-- Read all the data of students who have laptop.

CREATE TABLE laptop (
id INT PRIMARY KEY AUTO_INCREMENT,
l_brand VARCHAR(20),
l_model VARCHAR(20)
);

CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
laptop_id INT,
FOREIGN KEY (laptop_id) REFERENCES laptop(id)
);

INSERT INTO laptop (l_brand, l_model) VALUES ('Asus','W330');
INSERT INTO laptop (l_brand, l_model) VALUES ('Dell','B200');
INSERT INTO laptop (l_brand, l_model) VALUES ('Acer','R440');

INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Susan',23,1);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Alex',19,2);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Susie',21,null);

SELECT * FROM laptop l, student s WHERE s.laptop_id = l.id;

DROP TABLE laptop;
DROP TABLE student;

-- 2. Create the car table with the id, brand and horse power properties.
-- Create the driver table with the properties id, name and experience (years).
-- Any driver can have a car.
-- Read the car brand, horse power, and the driver's name using a join.

CREATE TABLE car (
id INT PRIMARY KEY AUTO_INCREMENT,
c_brand VARCHAR(20),
c_horse_power INT
);

CREATE TABLE driver (
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_experience INT,
car_id INT,
FOREIGN KEY (car_id) REFERENCES car(id)
);

INSERT INTO car (c_brand, c_horse_power) VALUES ('Volkswagen',280);
INSERT INTO car (c_brand, c_horse_power) VALUES ('BMW',200);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Audi',180);

INSERT INTO driver (d_name, d_experience, car_id) VALUES ('Paul',5,1);
INSERT INTO driver (d_name, d_experience, car_id) VALUES ('Alex',10,2);
INSERT INTO driver (d_name, d_experience, car_id) VALUES ('Ana',1,null);

SELECT * FROM car;
SELECT * FROM driver;

SELECT c.c_brand, c.c_horse_power, d.d_name FROM driver d, car c WHERE d.car_id = c.id;

DROP TABLE car;
DROP TABLE driver;

-- 3. Create the order_table table with the id, description and price properties.
-- Create the customer_table table with the properties id, name and telephone_number.
-- Any order cand have a customer.
-- Read the order description and price, the name and phone number of the customer for all orders over 100.

CREATE TABLE order_table (
id INT PRIMARY KEY AUTO_INCREMENT,
o_description VARCHAR(100),
o_price INT,
customer_table_id INT,
FOREIGN KEY (customer_table_id) REFERENCES customer_table(id)
);

CREATE TABLE customer_table (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_phone_number VARCHAR(20)
);

INSERT INTO customer_table (c_name, c_phone_number) VALUES ('Vlad','0777888999');
INSERT INTO customer_table (c_name, c_phone_number) VALUES ('Anna','0788899900');
INSERT INTO customer_table (c_name, c_phone_number) VALUES ('Stuart','0755555444');

INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('Java course',399,1);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('Python course',80,2);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('JavaScript course',220,3);

SELECT o.o_description, o.o_price, c.c_name, c.c_phone_number FROM customer_table c, order_table o 
WHERE o.customer_table_id = c.id AND o.o_price >= 100;