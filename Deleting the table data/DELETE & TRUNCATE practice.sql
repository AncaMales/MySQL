-- Create the deleteDb database and work inside it.

CREATE DATABASE deleteDb;
USE deleteDb;

-- 1. Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a salary.
-- Enter 5 entries in the table.
-- Delete the first 2 employees.

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_salary INT
);

INSERT INTO employee (e_name, e_salary) VALUES ('Martin', 2500);
INSERT INTO employee (e_name, e_salary) VALUES ('Laura',6000);
INSERT INTO employee (e_name, e_salary) VALUES ('Stuart',8500);
INSERT INTO employee (e_name, e_salary) VALUES ('Maria',4500);
INSERT INTO employee (e_name, e_salary) VALUES ('Cintya',3400);

DELETE FROM employee WHERE id = 1;
DELETE FROM employee WHERE id = 2;
SELECT * FROM employee;
DROP TABLE employee;

-- 2.Create the people table to store people.
-- Pleople will have a numeric type id, a name and an email. The email must be specified.
-- Enter 5 entries in the table.
-- Delete all people named John.

CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_email VARCHAR(30) NOT NULL UNIQUE
); 

INSERT INTO people (p_name, p_email) VALUES ('John','john@yahoo.com');
INSERT INTO people (p_name, p_email) VALUES ('Alina','alina@yahoo.com');
INSERT INTO people (p_name, p_email) VALUES ('Andreea','andreea@gmail.com');
INSERT INTO people (p_name, p_email) VALUES ('John','john@gmail.com');
INSERT INTO people (p_name, p_email) VALUES ('Sasha','sasha@gmail.com');

DELETE FROM people WHERE p_name = 'John';
SELECT * FROM people;
DROP TABLE people;


-- 3. Create the laptop table to store laptop computers.
-- The laptops will have a brand, a ram memory and a price.
-- Enter 5 entries in the table.
-- Wipe out all Samsung laptops under 12 ram.

CREATE TABLE laptop (
l_brand VARCHAR(20),
l_ram INT,
l_price INT
);

INSERT INTO laptop VALUES ('Samsung',9,1000);
INSERT INTO laptop VALUES ('Samsung',18,1500);
INSERT INTO laptop VALUES ('Apple',12,3000);
INSERT INTO laptop VALUES ('Samsung',5,900);
INSERT INTO laptop VALUES ('Dell',12,1800);

DELETE FROM laptop WHERE l_brand = 'Samsung' AND l_ram < 12;
SELECT * FROM laptop;