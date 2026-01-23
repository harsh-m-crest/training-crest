-- 97. ALTER TYPE - Alter a composite data type, change schema and more

-- Alter Data types
-- ################

CREATE TYPE myaddress AS (
	city VARCHAR(50),
	COUNTRY varchar(20)
)

-- Rename a data type
-- Alter type name rename to newname

ALTER TYPE myaddress RENAME TO my_address

-- change the owner
-- Alter type name owner TO username

ALTER TYPE my_address OWNER TO postgres

-- change the schema
ALTER TYPE my_address SET SCHEMA test_scm
 
-- To add a new attribute
ALTER TYPE my_address ADD ATTRIBUTE street_address.VARCHAR(150)

