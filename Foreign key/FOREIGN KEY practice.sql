-- Create the foreignKeyDatabase and work inside it.
CREATE DATABASE foreignKeyDatabase;
USE foreignKeyDatabase;

-- 1. Create the child table, with the id, name and age columns, and the laptop table, with the id, brand, 
-- and color properties.
-- Every child will have a laptop.

CREATE TABLE laptop (
id INT PRIMARY KEY AUTO_INCREMENT,
l_brand VARCHAR (20),
l_color VARCHAR (20)
); 

CREATE TABLE child (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_age INT,
laptop_id INT,
FOREIGN KEY (laptop_id) REFERENCES laptop(id)
);

INSERT INTO laptop (l_brand, l_color) VALUES ('Apple','Grey');
INSERT INTO laptop (l_brand, l_color) VALUES ('Dell','Pink');

SELECT * FROM laptop;

INSERT INTO child (c_name, c_age, laptop_id) VALUES ('Child1',10,1);
INSERT INTO child (c_name, c_age, laptop_id) VALUES ('Child2',11,2);
INSERT INTO child (c_name, c_age, laptop_id) VALUES ('Child3',12,123);

DROP TABLE child;
DROP TABLE laptop;

-- 2. Create the car table, with id, brand and horse_power properties, and driver table, with id,
--  name and age properties.
--  Every driver will have a car.

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
  
  INSERT INTO car (c_brand, c_horse_power) VALUES ('Mazda',270);
  INSERT INTO car (c_brand, c_horse_power) VALUES ('Opel',190);
  
  INSERT INTO driver (d_name, d_age, car_id) VALUES ('Dan',34,1);
  INSERT INTO driver (d_name, d_age, car_id) VALUES ('Andrei',19,2);
  
  DROP TABLE car;
  DROP TABLE driver;

  
-- 3. Create the order table, with the id, description and price properties, and customer with id, name 
-- and telephone_number.
-- Each order will have a customer.

CREATE TABLE order_t (
id INT PRIMARY KEY AUTO_INCREMENT,
o_description VARCHAR(50),
o_price INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE customer (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_phone VARCHAR(10)
);

INSERT INTO customer (c_name, c_phone) VALUES ('Sebastian',0777888999);
INSERT INTO customer (c_name, c_phone) VALUES ('Alex',0766555444);

INSERT INTO order_t (o_description, o_price, customer_id) VALUES ('Blue jacket with red buttons',450,1);
INSERT INTO order_t (o_description, o_price, customer_id) VALUES ('Red long skirt',155,2);

DROP TABLE customer;
DROP TABLE order_t;