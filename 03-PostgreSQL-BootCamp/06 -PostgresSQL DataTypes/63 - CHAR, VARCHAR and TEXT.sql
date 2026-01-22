-- Characters Data types
-- #####################

-- CHARACTER(n), CHAR(n)
-- =====================

SELECT CAST('Adam' AS character(10)) AS "Name"


SELECT 'Adam'::char(10) as "Name"

SELECT
	CAST('Adnan' AS character(10)) as "Name1",
	'Adnan'::char(10) as "Name2"

SELECT 'Adam'::varchar(10);

SELECT 'This is a test from the syste' :: varchar(10)

SELECT 'ABCD 123':: VARCHAR(10)


-- TEXT
-- VARIABLE LENGTH
