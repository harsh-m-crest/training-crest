-- 72. Array


-- Create a sample table

CREATE TABLE table_array(
	id SERIAL,
	name varchar(100),
	phones text []
);

-- View the data
SELECT * FROM table_array;

-- insert some data
INSERT INTO table_array (name,phones)
VALUES ('Adam', ARRAY ['(801)-123-4567'])

INSERT INTO table_array (name,phones)
VALUES ('Linda', ARRAY[ '(201)-123-4567'])

-- Query Data
SELECT * FROM table_array

SELECT 
	name,
	phones[1]
FROM
	table_array;