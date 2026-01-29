-- 205. Schema Hierarchy

-- Postgres SQL automatically creates a schema called public for every new database
-- Lets create a new database called 'test'
CREATE DATABASE test ;

-- Select a table from a 'public' schema
SELECT * FROM employees;

-- Select a table other than 'public' schema
SELECT * FROM hr.humanreources