-- Create and work inside the distinctDB database.
CREATE DATABASE distinctDB;
USE distinctDB;

-- 1. Create the student table to store students.
-- Students will have a numeric type id, a name and an age.
-- Enter 10 entries in the table.
-- Read each individual name in our table.
CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT
);

INSERT INTO student (s_name, s_age) VALUES ('Andrew',19);
INSERT INTO student (s_name, s_age) VALUES ('Lucas',20);
INSERT INTO student (s_name, s_age) VALUES ('Andrew',21);
INSERT INTO student (s_name, s_age) VALUES ('Maria',19);
INSERT INTO student (s_name, s_age) VALUES ('David',18);
INSERT INTO student (s_name, s_age) VALUES ('Cindy',20);
INSERT INTO student (s_name, s_age) VALUES ('Andrew',24);
INSERT INTO student (s_name, s_age) VALUES ('Maria',20);
INSERT INTO student (s_name, s_age) VALUES ('Ema',23);
INSERT INTO student (s_name, s_age) VALUES ('John',18);

SELECT DISTINCT s_name FROM student;
DROP TABLE student;

-- 2. Create a borrow table to store book rentals.
-- The table will have a numeric type id, the name of the book that was borrowed,
-- and the name of the person who borrowed.
-- Enter 7 entries in the table.
-- Read each individual book that has been borrowed.
-- Read every person who has ever borrowed a book.
CREATE TABLE borrow (
id INT PRIMARY KEY AUTO_INCREMENT,
n_book VARCHAR(20),
n_person VARCHAR(20)
);

INSERT INTO borrow (n_book, n_person) VALUES ('Harry Potter','John');
INSERT INTO borrow (n_book, n_person) VALUES ('Lord of the Rings','John');
INSERT INTO borrow (n_book, n_person) VALUES ('The Lion','Harry');
INSERT INTO borrow (n_book, n_person) VALUES ('Pinocchio','Stuart');
INSERT INTO borrow (n_book, n_person) VALUES ('Pinocchio','Ana');
INSERT INTO borrow (n_book, n_person) VALUES ('The Lion','Ema');
INSERT INTO borrow (n_book, n_person) VALUES ('Don Quixote','John');

SELECT DISTINCT n_book FROM borrow;
SELECT DISTINCT n_person FROM borrow;
DROP TABLE borrow;

-- 3. Create the ticket table to store plane tickets.
-- Tickets will have an id, a class and a price.
-- Enter 5 entries in the table.
-- Display all existing ticket categories in our table.
CREATE TABLE ticket (
id INT PRIMARY KEY AUTO_INCREMENT,
t_class VARCHAR(10),
t_price INT
);

INSERT INTO ticket (t_class,t_price) VALUES ('1st class',100);
INSERT INTO ticket (t_class,t_price) VALUES ('2nd class',40);
INSERT INTO ticket (t_class,t_price) VALUES ('3rd class',30);
INSERT INTO ticket (t_class,t_price) VALUES ('1st class',110);
INSERT INTO ticket (t_class,t_price) VALUES ('2nd class',90);

SELECT DISTINCT t_class FROM ticket;