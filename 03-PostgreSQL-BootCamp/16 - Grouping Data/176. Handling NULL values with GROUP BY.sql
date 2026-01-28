-- 176. Handling NULL values with GROUP BY
-- ######################################

-- Lets creates our test table 'employess_test' with some data e.g.

CREATE TABLE employees_test(
	employee_id SERIAL PRIMARY KEY,
	employee_name VARCHAR(100),
	department VARCHAR(100),
	salary INT
);

SELECT * FROM employees_test

INSERT INTO employees_test (employee_name, department, salary) VALUES
('John','Finance',2500),
('Mary',NULL,3000),
('Adam',NULL,4000),
('Bruce','Finance',4000),
('Linda','IT',5000),
('Megan','IT',4000);

SELECT * FROM employees_test;

SELECT
	employee_name,
	department
	salary
FROM employees_test
ORDER BY
	department

-- How many employees are there for each group

SELECT 
	department,
	COUNT(salary) AS total_employees
FROM employees_test
GROUP BY 
	department
ORDER BY
	department

-- Handle the NULL value
-- COALESCE(source,'')
-- COALESCE(department,'NO DEPARTMENT')

SELECT
	COALESCE(department,'NO DEPARTMENT') AS department,
	COUNT(salary) as total_employees
FROM employees_test
GROUP BY
	department
ORDER BY 
	department





