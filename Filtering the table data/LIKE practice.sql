-- CREATE THE database likeDatabase and work on it.
CREATE DATABASE likeDatabase;
USE likeDatabase;

-- 1. Create the movie table to store movies.
-- The movies will have a numeric type id, and name and a genre, which will contain genres
-- of the movie (action, comedy, thriller, and so on), separated by comma.
-- Enter 5 entries in the table.
-- Read all the names of comedy movies.
-- Read all the action movie names.
CREATE TABLE movie (
id INT PRIMARY KEY AUTO_INCREMENT,
m_name VARCHAR(20),
m_genre VARCHAR(50)
);

INSERT INTO movie (m_name, m_genre) VALUES ('Movie1','Comedy, Fantasy');
INSERT INTO movie (m_name, m_genre) VALUES ('Movie2','Action, Thriller');
INSERT INTO movie (m_name, m_genre) VALUES ('Movie3','Comedy');
INSERT INTO movie (m_name, m_genre) VALUES ('Movie4','Thriller, Action');
INSERT INTO movie (m_name, m_genre) VALUES ('Movie5','Action');

SELECT m_name FROM movie WHERE m_genre LIKE '%Comedy%';
SELECT m_name FROM movie WHERE m_genre LIKE '%Action%';
DROP TABLE movie;

-- 2. Create the people table to store people.
-- People will have a numeric type id, a name and an email.
-- Enter 5 entries in the table.
-- Read all the data of people who have gmail.
-- Read all the data of the people who have yahoo mail.
CREATE TABLE people (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_email VARCHAR(20)
);

INSERT INTO people (p_name,p_email) VALUES ('Andrew','andrew@gmail.com');
INSERT INTO people (p_name,p_email) VALUES ('Maria','maria@gmail.com');
INSERT INTO people (p_name,p_email) VALUES ('Alex','alex@yahoo.com');
INSERT INTO people (p_name,p_email) VALUES ('David','david@gmail.com');
INSERT INTO people (p_name,p_email) VALUES ('Adam','adam@yahoo.com');

SELECT * FROM people WHERE p_email LIKE '%yahoo.%';
SELECT * FROM people WHERE p_email LIKE '%gmail.%';
DROP TABLE people;

-- 3. Create the student table to store students.
-- Students will have an id, a name and a specialization.
-- Enter 5 entries in the table.
-- Read all the data of the students who in their specialization have the word "Master".
CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR (20),
s_specialization VARCHAR(50)
);

INSERT INTO student (s_name, s_specialization) VALUES ('Luca','Evonomy Master');
INSERT INTO student (s_name, s_specialization) VALUES ('Alex','Medicine Bachelor Degree');
INSERT INTO student (s_name, s_specialization) VALUES ('Maria','Technology Master');
INSERT INTO student (s_name, s_specialization) VALUES ('Eva','Psychology Bachelor Degree');
INSERT INTO student (s_name, s_specialization) VALUES ('Adam','Chemistry Master');

SELECT * FROM student WHERE s_specialization LIKE '%Master';
DROP TABLE student;