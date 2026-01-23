-- 90. CREATE DOMAIN - Create a domain data type for an email validation

-- 'proper_email' domain to check for a valid email address

CREATE DOMAIN proper_email VARCHAR(150)
CHECK (VALUE ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9._%-]+[.][A-Za-z]+$')

CREATE TABLE clients_names
(
	client_name_id SERIAL PRIMARY KEY,
	email proper_email
);

INSERT INTO clients_names (email) VALUES ('a@b.com')

INSERT INTO clients_names (email) VALUES ('a @b.com')

SELECT * FROM clients_names;