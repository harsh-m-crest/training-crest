-- 65. DECIMALS

-- Create our numbers table

CREATE TABLE table_numbers (
	cols_numeric numeric(20,5),
	col_real real,
	col_double double precision
);

SELECT * FROM table_numbers;

-- insert some data
INSERT INTO table_numbers (col_numeric, col_real, col_double) VALUES
(.9,.9,.9),
(3.13579, 3.13579, 3.13579),
(4.1357987654, 4.1357987654, 4.1357987654)