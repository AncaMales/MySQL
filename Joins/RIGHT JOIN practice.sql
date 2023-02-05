-- Create database the rightJoinDatabase and work on it. 

CREATE DATABASE rightJoinDatabase;
USE rightJoinDatabase;

-- 1. Create the kid table, with the properties id, name and age.
-- Create the toy table , with the id, name and color properties.
-- Any kid can have a toy.
-- Read the name of all existing toys together with their potential owner's name.

CREATE TABLE toy (
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_color VARCHAR(20)
);

CREATE TABLE kid (
id INT PRIMARY KEY AUTO_INCREMENT,
k_name VARCHAR(20),
k_age INT,
toy_id INT,
FOREIGN KEY (toy_id) REFERENCES toy(id) 
);

INSERT INTO toy (t_name, t_color) VALUES ('Bunny','Pink');
INSERT INTO toy (t_name, t_color) VALUES ('Car','Red');
INSERT INTO toy (t_name, t_color) VALUES ('Ball','Blue');
INSERT INTO toy (t_name, t_color) VALUES ('Doll','Pink');
INSERT INTO toy (t_name, t_color) VALUES ('Car','Blue');

INSERT INTO kid (k_name, k_age, toy_id) VALUES ('Anna',5,1);
INSERT INTO kid (k_name, k_age, toy_id) VALUES ('Andrew',8,2);
INSERT INTO kid (k_name, k_age, toy_id) VALUES ('Steven',10,3);

SELECT t.t_name, k.k_name FROM kid k RIGHT JOIN toy t ON k.toy_id=t.id;

DROP TABLE kid;
DROP TABLE toy;

-- 2. Create the car table with the id, brand and horse_power properties.
-- Create the driver table, with the proporties id, name and age.
-- Any driver can have a car.
-- Read the data of all the cars, together with all possible drivers.

CREATE TABLE car (
id INT PRIMARY KEY AUTO_INCREMENT,
c_brand VARCHAR(20),
c_horse_power INT
);

CREATE TABLE driver (
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR(20),
d_age INT,
car_id INT,
FOREIGN KEY (car_id) REFERENCES car(id)
);

INSERT INTO car (c_brand, c_horse_power) VALUES ('BMW',210);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Mazda',190);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Audi',250);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Opel',150);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Toyota',200);

INSERT INTO driver (d_name, d_age, car_id) VALUES ('John',24,1);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Steven',26,3);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Julian',37,5);

SELECT * FROM driver d RIGHT JOIN car c ON d.car_id = c.id;

DROP TABLE car;
DROP TABLE driver;

-- 3. Create the order table, with the properties id, description and price.
-- Create the customer table, with the properties id, name and telephone number.
-- Each order will have a customer.
-- Read all the data of the individual customers, together with their orders.

CREATE TABLE order_table (
id INT PRIMARY KEY AUTO_INCREMENT,
o_name VARCHAR(20),
o_description VARCHAR(50),
o_price INT,
customer_table_id INT,
FOREIGN KEY (customer_table_id) REFERENCES customer_table(id)
);

CREATE TABLE customer_table (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_phone VARCHAR(20)
);

INSERT INTO customer_table (c_name, c_phone) VALUES ('Anne','0788999888');
INSERT INTO customer_table (c_name, c_phone) VALUES ('John','0332334334');
INSERT INTO customer_table (c_name, c_phone) VALUES ('Georgian','0777666555');
INSERT INTO customer_table (c_name, c_phone) VALUES ('Larisa','0331334554');
INSERT INTO customer_table (c_name, c_phone) VALUES ('Marie','0788996555');

INSERT INTO order_table (o_name, o_description, o_price, customer_table_id) VALUES ('Java course','Learn about Java',340,1);
INSERT INTO order_table (o_name, o_description, o_price, customer_table_id) VALUES ('Python course','Learn about Python',280,2);

SELECT * FROM order_table ot RIGHT JOIN customer_table ct ON ot.customer_table_id = ct.id;