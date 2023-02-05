-- Create and work inside the groupByDb database.

CREATE DATABASE groupByDb;
USE groupByDb;

-- 1. Create the movie table to store movies.
-- Movies will have a numeric id, a name, a reviewer_name and a rating.
-- For a particular movie, a reviewer may rate it.
-- Enter 10 entries in the table.
-- Read the average of ratings for each movie.

CREATE TABLE movie (
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
m_reviewer VARCHAR(20),
m_rating INT
);

INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Avatar','Andrew',10);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Mr Bean','Susan',9);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Harry Potter','Alex',9);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Avatar','Christie',9);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Mr Bean','Ana',8);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('The Black Wich','Marie',7);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('Harry Potter','Andra',10);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('The Black Wich','Sonia',9);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('The Fall','Andrei',9);
INSERT INTO movie (m_name, m_reviewer, m_rating) VALUES ('The Fall','John',10);

SELECT * FROM movie;
SELECT m_name, AVG(m_rating) FROM movie GROUP BY m_name;

DROP TABLE movie;

-- 2. Create the borrow table to store book rentals.
-- The table will have a numeric type id, a name of the book that was borrowed
-- and the name of the person who borowed the book.
-- Enter 7 entries in the table.
-- Read how many times each book has been rented.

CREATE TABLE borrow (
id INT PRIMARY KEY AUTO_INCREMENT,
b_book_name VARCHAR(30),
b_person_name VARCHAR(30)
);

INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Lord of the Rings','Gabriel');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('The Great Gatsby','Ana');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Pride and Prejudice','Marie');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Lord of the Rings','Andra');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Pride and Prejudice','John');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Great Expectations','Julie');
INSERT INTO borrow (b_book_name, b_person_name) VALUES ('Great Expectations','Susie');

SELECT b_book_name, COUNT(b_person_name) FROM borrow GROUP BY b_book_name;

DROP TABLE borrow;

-- 3. Create the product table to store products.
-- The products will have an id, a name and a quantity.
-- Enter 5 entries in the table.
-- Read the total quantity of each product in the table.

CREATE TABLE product (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_quantity INT
);

INSERT INTO product (p_name, p_quantity) VALUES ('Eggs',30);
INSERT INTO product (p_name, p_quantity) VALUES ('Cheddar',3);
INSERT INTO product (p_name, p_quantity) VALUES ('Mozzarela',5);
INSERT INTO product (p_name, p_quantity) VALUES ('Cheddar',1);
INSERT INTO product (p_name, p_quantity) VALUES ('Eggs',7);

SELECT p_name, SUM(p_quantity) FROM product GROUP BY p_name;