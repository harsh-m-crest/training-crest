-- 183. LEFT joins Part 1

CREATE TABLE left_products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100)
);

CREATE TABLE right_products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100)
);

INSERT INTO left_products (product_id, product_name) VALUES
(1,'Computers'),
(2,'Laptops'),
(3,'Monitors'),
(5,'Mics');

INSERT INTO right_products (product_id, product_name) VALUES
(1,'Computers'),
(2,'Laptops'),
(3,'Monitors'),
(4,'Pen'),
(5,'Papers');

SELECT * FROM left_products;
SELECT * FROM right_products;

SELECT
	*
FROM left_products lp
LEFT JOIN right_products rp ON lp.product_id = rp.product_id


