-- 68. DATE
-- ########

-- Create a sample table with DATE data type column

CREATE TABLE table_dates(
	id serial PRIMARY KEY,
	employee_name varchar(100) NOT NULL,
	hire_date DATE NOT NULL,
	add_date DATE DEFAULT CURRENT_DATE
);

-- Insert some data
INSERT INTO table_dates(employee_name,hire_date) VALUES
('HARSH','2026-01-05'),
('JAYESH','2025-07-10');

-- view the data
SELECT * FROM table_dates;


-- Some usefull functions
-- current date and time
SELECT NOW();

-- Current date
SELECT CURRENT_DATE;