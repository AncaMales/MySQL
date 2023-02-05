-- Create the database orderByDb and work inside it.

CREATE DATABASE orderByDb;
USE orderByDb;

-- 1. Create the programming_language table to store programming languages.
-- The language will have a numeric type id, a name and a difficulty.
-- Enter 5 programming languages in the table.
-- Read the first 4 languages, sorted by name.

CREATE TABLE programming_language (
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR (20),
p_difficulty INT
);

INSERT INTO programming_language (p_name, p_difficulty) VALUES ('Java',5);
INSERT INTO programming_language (p_name, p_difficulty) VALUES ('JavaScript',4);
INSERT INTO programming_language (p_name, p_difficulty) VALUES ('Python',2);
INSERT INTO programming_language (p_name, p_difficulty) VALUES ('C++',6);
INSERT INTO programming_language (p_name, p_difficulty) VALUES ('PHP',3);

SELECT * FROM programming_language ORDER BY p_name LIMIT 4 ;
DROP TABLE programming_language;

-- 2. Create the teacher table to store teachers.
-- Teachers will have a numeric type id, a name and a subject taught.
-- Enter 5 tab entries.
-- Read all the teachers sorted by the subject taught.

CREATE TABLE teacher (
id INT PRIMARY KEY AUTO_INCREMENT,
t_name VARCHAR(20),
t_subject VARCHAR(20)
);

INSERT INTO teacher (t_name, t_subject) VALUES ('Lara','Art');
INSERT INTO teacher (t_name, t_subject) VALUES ('Ema','Psychology');
INSERT INTO teacher (t_name, t_subject) VALUES ('Daniela','Geography');
INSERT INTO teacher (t_name, t_subject) VALUES ('George','Biology');
INSERT INTO teacher (t_name, t_subject) VALUES ('Alex','Sport');

SELECT * FROM teacher ORDER BY t_subject ASC;
DROP TABLE teacher;


-- 3. Create the video table to store video data.
-- The videos will have a numeric type id, a name and a size (mb).
-- Enter 5 entries in the table.
-- Read the name of videos sorted by size.

CREATE TABLE video (
id INT PRIMARY KEY AUTO_INCREMENT,
v_name VARCHAR(20),
v_size INT
);

INSERT INTO video (v_name, v_size) VALUES ('Cats',200);
INSERT INTO video (v_name, v_size) VALUES ('Dogs',300);
INSERT INTO video (v_name, v_size) VALUES ('My familly',900);
INSERT INTO video (v_name, v_size) VALUES ('Nature',1200);
INSERT INTO video (v_name, v_size) VALUES ('Flowers', 450);

SELECT v_name FROM video ORDER BY v_size ASC;