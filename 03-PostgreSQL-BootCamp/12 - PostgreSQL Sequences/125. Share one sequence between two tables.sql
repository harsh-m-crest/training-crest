-- 125. Share one sequence between two tables

CREATE SEQUENCE common_fruits_seq START WITH 100

CREATE TABLE apples (
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR(50)
);

CREATE TABLE mangoes (
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR(50)
);

INSERT INTO apples (fruit_name) VALUES ('big_apple')

INSERT INTO mangoes (fruit_name) VALUES ('big_mango')

SELECT * FROM mangoes