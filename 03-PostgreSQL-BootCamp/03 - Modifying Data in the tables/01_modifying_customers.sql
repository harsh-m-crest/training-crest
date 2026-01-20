--Insert into data a table
-##################################

-- 1. Create a test table called 'customers' with CREATE TABLE
-- customer_id, first_name, last_name, email, age

CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(150),
	age INT
);

-- 2. Let view the table data with SELECT
SELECT * FROM customers;

-- 3. Insert into a table

INSERT INTO customers (first_name, last_name,email, age)
VALUES ('Harsh', 'Mistry', 'hm@cspil.com', 21  );

-- 4. Lets view the 'customers' data with SELECT
SELECT * FROM customers;

-- Insert Multiple line of data
INSERT INTO customers (first_name, last_name)
VALUES
('John','Doe'),
('Rohit','Sharma'),
('Virat','Kohli');

-- After insert, lets return all rows
INSERT INTO customers (first_name)
VALUES('Prashant') RETURNING *;

-- After insert, lets return a single value column
INSERT INTO customers (first_name)
VALUES ('Vishal') RETURNING customer_id;

-- Insert into Data with quotes
INSERT INTO Customers (first_name)
VALUES
('Ab D''Villers');

-- Update Single Column Value
UPDATE customers
SET email = 'rs@bcci.com'
where customer_id = 4;

-- Update Multiple Column Value
UPDATE customers
SET email = 'vk@bcci.com',
age = 38
where customer_id = 5;

-- Use Returning to return the updated ROW
UPDATE customers
SET email = 'jd@test.com'
where customer_id = 3
RETURNING *;

-- Update all the records in the table
UPDATE customers
SET is_enable = 'N';

SELECT * FROM customers;

-- Delete records from the table
--##################################

-- Delete user based on the condition
DELETE FROM customers 
where customer_id = 6;

--Delete all the rows
DELETE FROM customers;


-- create sample table
CREATE TABLE t_tags(
	id serial PRIMARY KEY,
	tag text UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()
);

-- insert some sample data
INSERT INTO t_tags(tag) values
('Pen'),
('Pencil');

-- Lets view the data
select * from t_tags ;

-- Lets insert a record, on conflicts do nothing
INSERT INTO t_tags(tag)
VALUES ('Pen')
ON CONFLICT (tag)
DO
	NOTHING;


-- Lets insert a record, on conflict set new values
INSERT INTO t_tags(tag)
VALUES('Pen')
ON CONFLICT (tag)
DO
	UPDATE SET
		tag = EXCLUDED.tag || '1',
		update_date = NOW();
