CREATE TABLE student (
id INT PRIMARY KEY AUTO_INCREMENT,
s_name VARCHAR(20),
s_age INT,
laptop_id INT,
FOREIGN KEY (laptop_id) REFERENCES laptop(id)
);

CREATE TABLE laptop (
id INT PRIMARY KEY AUTO_INCREMENT,
l_brand VARCHAR(20),
l_ram INT
);

INSERT INTO laptop (l_brand, l_ram) VALUES ('Dell',15);
INSERT INTO laptop (l_brand, l_ram) VALUES ('Apple',10);
INSERT INTO laptop (l_brand, l_ram) VALUES ('Asus',8);

INSERT INTO student (s_name, s_age, laptop_id) VALUES ('David',19,1);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Stuart',22,2);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Alex',20,3);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Selena',18,null);
INSERT INTO student (s_name, s_age, laptop_id) VALUES ('Andreea',22,null);

SELECT s.s_name, s.s_age, l.id, l.l_brand, l.l_ram FROM student s 
LEFT JOIN laptop l ON s.laptop_id=l.id
UNION
SELECT s.s_name, s.s_age, l.id, l.l_brand, l.l_ram FROM student s 
RIGHT JOIN laptop l ON s.laptop_id=l.id;
