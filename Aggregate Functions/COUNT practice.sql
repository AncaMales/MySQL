-- Create the countDb database and work inside it.

CREATE DATABASE countDb;
USE countDb;

-- 1. Create the product table to store products.
-- The products will have a numeric type id, a name and a price.
-- Enter 5 entries in the table.
-- Find the total number of products in stock.

CREATE TABLE product(
id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(20),
p_price INT
);

INSERT INTO product (p_name, p_price) VALUES ('Laptop',2500);
INSERT INTO product (p_name, p_price) VALUES ('Mouse',60);
INSERT INTO product (p_name, p_price) VALUES ('Keyboard',78);
INSERT INTO product (p_name, p_price) VALUES ('PC',3500);
INSERT INTO product (p_name, p_price) VALUES ('USB Stick',35);

SELECT COUNT(id) FROM product;

DROP TABLE product;

-- 2.Create the computer table to store computers.
-- The computer will have a brand and a ram memory.
-- Enter 10 entries in the table.
-- Find out how many dell laptops with a RAM memory larger than 4 GB exist in the table.

CREATE TABLE computer(
id INT PRIMARY KEY AUTO_INCREMENT,
l_brand VARCHAR(20),
l_ram INT
);

INSERT INTO computer (l_brand, l_ram) VALUES ('Asus',1);
INSERT INTO computer (l_brand, l_ram) VALUES ('Dell',4);
INSERT INTO computer (l_brand, l_ram) VALUES ('Apple',6);
INSERT INTO computer (l_brand, l_ram) VALUES ('Dell',8);
INSERT INTO computer (l_brand, l_ram) VALUES ('Toshiba',10);
INSERT INTO computer (l_brand, l_ram) VALUES ('Asus',3);
INSERT INTO computer (l_brand, l_ram) VALUES ('Apple',5);
INSERT INTO computer (l_brand, l_ram) VALUES ('Dell',3);
INSERT INTO computer (l_brand, l_ram) VALUES ('Dell',2);
INSERT INTO computer (l_brand, l_ram) VALUES ('Acer',6);
INSERT INTO computer (l_brand, l_ram) VALUES ('Dell',10);

SELECT COUNT(l_brand) FROM computer WHERE l_brand='Dell' AND l_ram >=4;