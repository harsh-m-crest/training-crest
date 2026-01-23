-- 89. CREATE DOMAIN - Create a postal code validation data type

-- 'us_postal_code' domain to check for valid us postal code fromat

CREATE DOMAIN us_postal_code AS TEXT
CHECK (
	VALUE ~ '^\d{5}$'
	OR VALUE ~ '^\D{5}-\d{4}$'
);

CREATE TABLE address (
	address_id SERIAL PRIMARY KEY,
	postal_code us_postal_code
)

INSERT INTO address (postal_code) VALUES ('10000')

INSERT INTO address (postal_code) VALUES ('10000-1000-1000')