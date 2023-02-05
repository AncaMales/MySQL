-- Create the database onDeleteDatabase and work on it.

CREATE DATABASE onDeleteDatabase;
USE onDeleteDatabase;

-- 1. Create the person table, with columns id, first_name and last_name,
-- and phone, with the properties id, brand and model.
-- Each person will have a phone.
-- When a phone is deleted, the person will no longer have a specified phone.

CREATE TABLE phone (
id INT PRIMARY KEY AUTO_INCREMENT,
p_brand VARCHAR(20),
p_model VARCHAR(20)
);

CREATE TABLE person (
id INT PRIMARY KEY AUTO_INCREMENT,
p_first_name VARCHAR(20),
p_last_name VARCHAR(20),
phone_id INT,
FOREIGN KEY (phone_id) REFERENCES phone(id) ON DELETE SET NULL
);

INSERT INTO phone (p_brand, p_model) VALUES ('Samsung','S20');
INSERT INTO phone (p_brand, p_model) VALUES ('Xioami','P25');

INSERT INTO person (p_first_name, p_last_name, phone_id) VALUES ('Luca','Adam',1);
INSERT INTO person (p_first_name, p_last_name, phone_id) VALUES ('Andra','Johnson',2);

SELECT * FROM person;
DELETE FROM phone WHERE id=2;

-- 2. Create the car table, with the id, brand and horse_power properties, and driver, with the name and age id
-- properties.
-- Every driver will have a car.
-- When the driver is deleted, the car will also be wiped.

CREATE TABLE car (
id INT PRIMARY KEY AUTO_INCREMENT,
c_brand VARCHAR (20),
c_horse_power INT
);

CREATE TABLE driver (
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR (20),
d_age INT,
car_id INT,
FOREIGN KEY (car_id) REFERENCES car(id) ON DELETE CASCADE
);

INSERT INTO car (c_brand, c_horse_power) VALUES ('Opel',190);
INSERT INTO car (c_brand, c_horse_power) VALUES ('Mercedes',270);

INSERT INTO driver (d_name, d_age, car_id) VALUES ('Mihai',29,1);
INSERT INTO driver (d_name, d_age, car_id) VALUES ('Lorand',23,2);

SELECT * FROM driver;
DELETE FROM driver WHERE id=1;
