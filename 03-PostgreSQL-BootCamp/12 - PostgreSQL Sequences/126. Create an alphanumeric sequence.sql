-- 126. Create an alphanumeric sequence


CREATE TABLE contacts(
	contact_id SERIAL PRIMARY KEY,
	contact_name VARCHAR(150)
)

INSERT INTO contacts (contact_name) VALUES ('Harsh')

INSERT INTO contacts (contact_name) VALUES ('Prakash')

SELECT * FROM contacts

DROP TABLE contacts;

CREATE SEQUENCE table_seq;

CREATE TABLE contacts (
	contact_id TEXT NOT NULL DEFAULT ('ID' || nextval('table_seq')),
	contact_name VARCHAR(150)
)

ALTER SEQUENCE table_seq OWNED BY contacts.contact_id

INSERT INTO contacts (contact_name) VALUES  ('Adam')

