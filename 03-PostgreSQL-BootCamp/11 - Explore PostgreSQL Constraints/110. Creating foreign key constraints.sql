-- 110. Creating foreign key constraints

CREATE TABLE t_products(
	product_id serial PRIMARY KEY,
	product_name varchar(100) NOT NULL,
	supplier_id int NOT NULL,
	FOREIGN KEY (supplier_id) REFERENCES t_suppliers (supplier_id)
);

DROP TABLE t_products;

CREATE TABLE t_suppliers(
	supplier_id serial PRIMARY KEY,
	supplier_name varchar(100) NOT NULL
);


SELECT * FROM t_products
