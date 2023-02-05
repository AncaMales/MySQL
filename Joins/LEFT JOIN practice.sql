-- Create the database leftJoinDatabase and work inside it.

CREATE DATABASE leftJoinDatabase;
USE leftJoinDatabase;

-- 1. Create the student table with columns id, name, age.
-- Create the major table with the properties name and duration (years).
-- Any student can have a major.
-- Read all the data for students and appropriate fields of study (whether they exist or not).

CREATE TABLE major (
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
m_duration INT
); 

CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
major_id INT,
FOREIGN KEY (major_id) REFERENCES major(id)
);

INSERT INTO major (m_name, m_duration) VALUES ('Economics',3);
INSERT INTO major (m_name, m_duration) VALUES ('Psychology',4);
INSERT INTO major (m_name, m_duration) VALUES ('Mathematics',2);

INSERT INTO student (s_name, s_age, major_id) VALUES ('Marie',20,1);
INSERT INTO student (s_name, s_age, major_id) VALUES ('Anne',19,2);
INSERT INTO student (s_name, s_age, major_id) VALUES ('Sarah',20,3);
INSERT INTO student (s_name, s_age, major_id) VALUES ('Trevor',21,null);
INSERT INTO student (s_name, s_age, major_id) VALUES ('Mark',18,null);

SELECT * FROM student s LEFT JOIN major m ON s.major_id = m.id; 

DROP TABLE student;
DROP TABLE major;

-- 2. Create the car table with the id, brand and horse power properties.
-- Create the driver table with the properties id, name and age.
-- Every driver can have a car.
-- Read the name of all drivers and any correspondents in the car table: car brand and horsepower.

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

INSERT INTO car(c_brand, c_horse_power) VALUES ('Audi',260);
INSERT INTO car(c_brand, c_horse_power) VALUES ('BMW',190);
INSERT INTO car(c_brand, c_horse_power) VALUES ('Skoda',150);

INSERT INTO driver (d_name, d_age, car_id) VALUES ('Matt',24,1);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Joseph',31,2);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Lucas',29,3);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Marie',25,null);

SELECT d.d_name, c.c_brand, c.c_horse_power FROM driver d LEFT JOIN car c ON d.car_id = c.id;

DROP TABLE driver;
DROP TABLE car;

-- 3. Create the order_table table with the properties id, description and price.
-- Create the customer_table table with the id, name and phone number properties.
-- Each order can have a customer.
-- Read all the data of the placed orders, together with the possible corresponding data from the customer table.

CREATE TABLE order_table (
id INT PRIMARY KEY AUTO_INCREMENT,
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

INSERT INTO customer_table (c_name, c_phone) VALUES ('Andreas','0765432111');
INSERT INTO customer_table (c_name, c_phone) VALUES ('Victor','0777888999');
INSERT INTO customer_table (c_name, c_phone) VALUES ('Sorin','07555444333');

INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('Python course',330,1);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('Java course',90,2);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('C++',250,3);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('JavaScript course',150,null);
INSERT INTO order_table (o_description, o_price, customer_table_id) VALUES ('HTML and CSS course',100,null);

SELECT * FROM order_table o LEFT JOIN customer_table c ON o.customer_table_id = c.id;