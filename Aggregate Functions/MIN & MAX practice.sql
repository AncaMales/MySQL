-- Create and work inside the minMaxDb database.

CREATE DATABASE minMaxDb;
USE minMaxDb;

-- 1. Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a salary.
-- Enter 5 entries in the table.
-- Find out what is the highest salary given to the employee by the company.

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_salary INT
);

INSERT INTO employee (e_name, e_salary) VALUES ('Lucian',4000);
INSERT INTO employee (e_name, e_salary) VALUES ('Sasha',5000);
INSERT INTO employee (e_name, e_salary) VALUES ('Olga',4500);
INSERT INTO employee (e_name, e_salary) VALUES ('Marie',7000);
INSERT INTO employee (e_name, e_salary) VALUES ('Alex',3500);

SELECT MAX(e_salary) FROM employee;

DROP TABLE employee;

-- 2.Create a clothes table to store clothes.
-- Each cloth product have a name, a material and a price.
-- Enter 5 entries in the table.
-- Find out what is the lowest and highest price of the products in the database.

CREATE TABLE clothes (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(20),
c_material VARCHAR(20),
c_price INT
);

INSERT INTO clothes (c_name, c_material, c_price) VALUES ('Jacket','Leather',650);
INSERT INTO clothes (c_name, c_material, c_price) VALUES ('Pants','Cotton',90);
INSERT INTO clothes (c_name, c_material, c_price) VALUES ('Cardigan','Cotton',150);
INSERT INTO clothes (c_name, c_material, c_price) VALUES ('Scarf','Silk',50);
INSERT INTO clothes (c_name, c_material, c_price) VALUES ('Jacket','Denim',250);

SELECT MIN(c_price) FROM clothes;
SELECT MAX(c_price) FROM clothes;

DROP TABLE clothes;

-- 3. Create the genius table to store people.
-- Each person will have an id, a name and an iq.
-- Enter 5 entries in the table.
-- Find out which is the largest and smallesT iq in out table.

CREATE TABLE genius(
id INT PRIMARY KEY AUTO_INCREMENT,
g_name VARCHAR(20),
g_iq INT
);

INSERT INTO genius (g_name, g_iq) VALUES ('Ema',220);
INSERT INTO genius (g_name, g_iq) VALUES ('Lara',200);
INSERT INTO genius (g_name, g_iq) VALUES ('Steven',90);
INSERT INTO genius (g_name, g_iq) VALUES ('Michael',180);
INSERT INTO genius (g_name, g_iq) VALUES ('Anne',170);

SELECT MAX(g_iq) FROM genius;
SELECT MIN(g_iq) FROM genius;

DROP TABLE genius;
