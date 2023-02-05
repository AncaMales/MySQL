-- Create the table sumDb database and work inside it.

CREATE DATABASE sumDb;
USE sumDb;

-- 1. Create the employee table to store employee.
-- Employees will have a numeric type id, a name and a salary.
-- Enter 5 entries in the table.
-- Find out how much money the company has to pay monthly to all employees.

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
e_name VARCHAR(20),
e_salary INT
);

INSERT INTO employee (e_name, e_salary) VALUES ('Andrew', 3500);
INSERT INTO employee (e_name, e_salary) VALUES ('Marie', 6500);
INSERT INTO employee (e_name, e_salary) VALUES ('David', 4000);
INSERT INTO employee (e_name, e_salary) VALUES ('Sandra', 7000);
INSERT INTO employee (e_name, e_salary) VALUES ('Stephan', 8000);

SELECT SUM(e_salary) FROM employee;

DROP TABLE employee;

-- 2. Create the ticket table to store train tickets.
-- Each ticket will have an id, a class and a price.
-- Enter 8 entries in the table.
-- The classes can be FirstClass, SecondClass and ThirdClass.
-- Found the amount collected for all FirstClass tickets.
-- Found the amount collected for all SecondClass tickets.
-- Found the amount collected for all ThirdClass tickets.

CREATE TABLE ticket (
id INT PRIMARY KEY AUTO_INCREMENT,
t_class VARCHAR(20),
t_price INT
);

INSERT INTO ticket (t_class, t_price) VALUES ('FirstClass',200);
INSERT INTO ticket (t_class, t_price) VALUES ('SecondClass',150);
INSERT INTO ticket (t_class, t_price) VALUES ('ThirdClass',50);
INSERT INTO ticket (t_class, t_price) VALUES ('FirstClass',300);
INSERT INTO ticket (t_class, t_price) VALUES ('ThirdClass',75);
INSERT INTO ticket (t_class, t_price) VALUES ('SecondClass',175);
INSERT INTO ticket (t_class, t_price) VALUES ('ThirdClass',40);
INSERT INTO ticket (t_class, t_price) VALUES ('FirstClass',580);

SELECT SUM(t_price) FROM ticket WHERE t_class = 'FirstClass';
SELECT SUM(t_price) FROM ticket WHERE t_class = 'SecondClass';
SELECT SUM(t_price) FROM ticket WHERE t_class = 'ThirdClass';

DROP TABLE ticket;

-- 3. Create the student table to store students in an academy.
-- Students will have an id, a name and a course they attend.
-- Create the course table to store the academy courses.
-- The courses will have a name and a price.
-- Enter 4 entries in the course table.
-- Enter 4 entries in the student table.
-- Find out the amount received by the academy for all beginners and intermediates courses.

CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
course_id INT,
FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE course (
id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(30),
c_price INT
);

INSERT INTO course (c_name, c_price) VALUES ('Beginner',700);
INSERT INTO course (c_name, c_price) VALUES ('Intermediate',800);
INSERT INTO course (c_name, c_price) VALUES ('Advanced',1500);
INSERT INTO course (c_name, c_price) VALUES ('Beginner',330);

INSERT INTO student (s_name, course_id) VALUES ('Marie',1);
INSERT INTO student (s_name, course_id) VALUES ('Stuart',2);
INSERT INTO student (s_name, course_id) VALUES ('Hannah',3);
INSERT INTO student (s_name, course_id) VALUES ('Anne',4);

SELECT * FROM student;
SELECT * FROM course;

SELECT SUM(c.c_price) FROM student s, course c WHERE s.course_id=s.id AND c_name='Beginner'
OR c_name='Intermediate';
 