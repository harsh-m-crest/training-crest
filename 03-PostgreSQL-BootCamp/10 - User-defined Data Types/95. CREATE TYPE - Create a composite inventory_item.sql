-- 95. CREATE TYPE - Create a composite inventory_item data type

-- Create a composite 'inventory_item' data type

CREATE TYPE inventory_item AS
(
	product_name varchar(200),
	supplier_id INT,
	price NUMERIC
);

CREATE TABLE inventory (
	inventory_id SERIAL PRIMARY KEY,
	item inventory_item
);

SELECT * FROM inventory;

INSERT INTO inventory (item) VALUES (ROW('pen',10,4.99))

INSERT INTO inventory (item) VALUES (ROW('paper',20,10.99))


SELECT (item).product_name FROM inventory WHERE (item).price > 3.99

SELECT (item).product_name FROM inventory WHERE (item).price < 5.99