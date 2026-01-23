-- 87. CREATE DOMAIN - Create a DOMAIN data type, create an address

-- Example # 1: ''addr' Domain with VARCHAR(100)

CREATE DOMAIN addr VARCHAR(100) NOT NULL;

CREATE TABLE locations (
	address VARCHAR(100) NOT NULL
)

INSERT INTO locations (address) values ('123 London')

SELECT * from locations