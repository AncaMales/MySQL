-- Create the testAutoIncrement database and work inside it.
CREATE DATABASE testAutoIncrement;
USE testAutoIncrement;

-- 1. Create the book table to store books.
-- The books will have a numeric type id, a name and the name of the author.
-- Set a unique auto incremented identifier.
-- Add five books to the table. 
CREATE TABLE book (
id INT PRIMARY KEY AUTO_INCREMENT,
b_name VARCHAR(50),
b_author_name VARCHAR(20)
);

SELECT * FROM book;
INSERT INTO book (b_name, b_author_name) VALUES ('Amintiri din copilarie','Ion Creanga');
INSERT INTO book (b_name, b_author_name) VALUES ('Moara cu noroc','Ioan Slavici');
INSERT INTO book (b_name, b_author_name) VALUES ('Ion','Liviu Rebreanu');
INSERT INTO book (b_name, b_author_name) VALUES ('Baltagul','Mihail Sadoveanu');
INSERT INTO book (b_name, b_author_name) VALUES ('Mara','Ioan Slavici');

DROP TABLE book;

-- 2. Create the employee table to store employees. 
-- Employees will have a numeric type ID, a name, a department and a salary. 
-- Set a uniqur auto incremented identifier. 
-- Add 5 employees to the table.
CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_department VARCHAR (50),
e_salary INT
);

INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Ionela','HR',3000);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Ion','IT', 4000);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('George','Achizitii', 2700);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Ioana','IT', 4500);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Georgiana','Vanzari', 3200);

SELECT * FROM employee;
DROP TABLE employee;

SHOW TABLES;