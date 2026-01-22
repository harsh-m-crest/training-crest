-- Numbers Data Types
-- ##################

-- Create a table with SERIAL datatype

CREATE TABLE table_serial(
	product_id SERIAL,
	product_name VARCHAR(100)
)

-- Inserrt some data
INSERT INTO table_serial (product_name) VALUES ('pen')

SELECT * FROM table_serial;

INSERT INTO table_serial (product_name) VALUES ('pencil1')

INSERT INTO table_serial (product_name) VALUES ('pencil2')