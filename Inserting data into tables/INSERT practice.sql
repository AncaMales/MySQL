CREATE TABLE student (
id INT,
s_first_name VARCHAR(20),
s_last_name VARCHAR(20),
s_email VARCHAR(40),
s_grade INT
);

SELECT * FROM student;

INSERT INTO  student VALUES (1, 'Alex','Stan','alex@yahoo.com',9);
INSERT INTO  student VALUES (2, 'Gabriel','Stamate','gabi@yahoo.com',10);
INSERT INTO  student (id, s_first_name, s_last_name) VALUES (3,'Ana','David'); 
INSERT INTO  student (s_first_name, s_grade) VALUES ('John',10);



