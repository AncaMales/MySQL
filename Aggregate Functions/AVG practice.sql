-- Create and work inside the avgDb database;

CREATE DATABASE avgDb;
USE avgDb;

-- 1. Create the employee table to store employees.
-- Employees will have a numeric type id, a name and a productivity, which can have values
-- between 1 and 100.
-- Enter 5 entries in the table.
-- Find out the average productivity of the company.

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_productivity INT
);

INSERT INTO employee (e_name, e_productivity) VALUES ('Lucas',89);
INSERT INTO employee (e_name, e_productivity) VALUES ('Helen',50);
INSERT INTO employee (e_name, e_productivity) VALUES ('Karl',67);
INSERT INTO employee (e_name, e_productivity) VALUES ('George',90);
INSERT INTO employee (e_name, e_productivity) VALUES ('Trevor',45);

SELECT AVG(e_productivity) FROM employee;

DROP TABLE employee;

-- 2. Create the tourist table to store turists.
-- Tourists will have an id, a name, a country of origin and an age.
-- Enter 5 entries in the table.
-- Find out the average age of American tourists.

CREATE TABLE tourist (
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_country VARCHAR(20),
t_age INT
);

INSERT INTO tourist (t_name,t_country,t_age) VALUES ('Boris','Czech Republic',35);
INSERT INTO tourist (t_name,t_country,t_age) VALUES ('John','America',24);
INSERT INTO tourist (t_name,t_country,t_age) VALUES ('Susan','America',29);
INSERT INTO tourist (t_name,t_country,t_age) VALUES ('Joaquin','Mexic',33);
INSERT INTO tourist (t_name,t_country,t_age) VALUES ('Stuart','UK',34);

SELECT AVG(t_age) FROM tourist WHERE t_country='America';

DROP TABLE tourist;

-- 3. Create the student table to store students.
-- Each student will have an id, a name and a general average.
-- Enter 5 entries in the table.
-- Find the general average of the whole school.

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_general_average INT
);

INSERT INTO student (s_name, s_general_average) VALUES ('Andrei',8);
INSERT INTO student (s_name, s_general_average) VALUES ('Mara',9);
INSERT INTO student (s_name, s_general_average) VALUES ('Ion',10);
INSERT INTO student (s_name, s_general_average) VALUES ('Sara',7);
INSERT INTO student (s_name, s_general_average) VALUES ('Oana',9);

SELECT AVG(s_general_average) FROM student;

DROP TABLE student;