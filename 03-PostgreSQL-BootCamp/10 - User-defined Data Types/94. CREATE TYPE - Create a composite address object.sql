-- 94. CREATE TYPE - Create a composite address object

-- Composite data type

-- Create a address composite data types

CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHAR(20)
);

CREATE TABLE companies (
	comp_id SERIAL PRIMARY KEY,
	address address
);

INSERT INTO companies (address) VALUES (ROW('LONDON','UK'))

INSERT INTO companies (address) VALUES (ROW('SURAT','INDIA'))

INSERT INTO companies (address) VALUES (ROW('SURAT','INDIA'))




SELECT * FROM companies

SELECT (address).country FROM companies;

SELECT (address).city FROM companies;