-- Create the database inDatabase and work inside it.
CREATE DATABASE inDatabase;
USE inDatabase;

-- 1. Create the dog table to store dogs.
-- Dogs will have a numeric id, a name and a breed.
-- Enter 5 entries in the table.
-- Read all the data we have on German Shepard, Huskies and Pugs.
CREATE TABLE dog (
id INT PRIMARY KEY AUTO_INCREMENT,
d_name VARCHAR (20),
d_breed VARCHAR(20)
);

INSERT INTO dog (d_name, d_breed) VALUES ('Max','German Shepard');
INSERT INTO dog (d_name, d_breed) VALUES ('Uzzy','Golden Retriver');
INSERT INTO dog (d_name, d_breed) VALUES ('Blue','Huskie');
INSERT INTO dog (d_name, d_breed) VALUES ('Minie','Pug');
INSERT INTO dog (d_name, d_breed) VALUES ('Luna','German Shepard');

SELECT * FROM dog WHERE d_breed IN ('German Shepard', 'Huskie','Pug');
DROP TABLE dog;

-- 2. Create the student table to store students.
-- Students will have a numeric type id, a name and a grade.
-- Enter 5 entries in the table.
-- Read all the data for students with grades between 2 and 6.
CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR (20),
s_grade INT
);

INSERT INTO student (s_name, s_grade) VALUES ('Marie',8);
INSERT INTO student (s_name, s_grade) VALUES ('Alex',4);
INSERT INTO student (s_name, s_grade) VALUES ('George',5);
INSERT INTO student (s_name, s_grade) VALUES ('John',4);
INSERT INTO student (s_name, s_grade) VALUES ('Ana',6);

SELECT * FROM student WHERE s_grade IN (2,3,4,5,6);
DROP TABLE student;

-- 3. Create employee table to store employees.
-- Employees will have and id, a name, a department and a salary.
-- Enter 5 entries in the table.
-- Read the salaries of the employees in the java and sql departments.
CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_department VARCHAR (20),
e_salary INT
);

INSERT INTO employee (e_name, e_department, e_salary) VALUES ('John','Java', 6000);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Erica','SQL', 5000);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Anna','HR', 4000);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Stuart','Java', 6500);
INSERT INTO employee (e_name, e_department, e_salary) VALUES ('Brad','SQL', 4800);

SELECT * FROM employee WHERE e_department IN ('Java','SQL');
DROP TABLE employee;