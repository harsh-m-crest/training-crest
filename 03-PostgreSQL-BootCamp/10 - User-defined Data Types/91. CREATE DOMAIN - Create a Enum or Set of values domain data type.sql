-- 91. CREATE DOMAIN - Create a Enum or Set of values domain data type

-- Create an Enumeration type (Enum or Set of values) Domain

CREATE  DOMAIN valid_color VARCHAR(10)
CHECK (VALUE IN ('red','green','blue'))

CREATE TABLE colors (
	color valid_color
)

INSERT INTO colors (color) VALUES ('orange')

SELECT * FROM colors;


CREATE DOMAIN user_status VARCHAR(10)
CHECK (VALUE IN ('enable','disable','temp'))

CREATE TABLE user_check
(
	status User
)