-- Database: mydata

-- DROP DATABASE IF EXISTS mydata;

CREATE DATABASE mydata
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE persons(
	person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL
);

ALTER TABLE persons
ADD COLUMN age INT NOT NULL;


SELECT * FROM persons;

ALTER TABLE persons
ADD COLUMN nationality VARCHAR(20) NOT NULL,
ADD COLUMN email VARCHAR(20) UNIQUE