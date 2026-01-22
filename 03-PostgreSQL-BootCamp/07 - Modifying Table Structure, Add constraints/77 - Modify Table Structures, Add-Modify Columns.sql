-- 77. Modify Table Structures, Add/Modify Columns

-- Rename a table
ALTER TABLE USERS
RENAME TO persons;

-- Rename a column

ALTER TABLE persons
RENAME COLUMN age TO person_age;

-- Drop a column
ALTER TABLE persons
DROP COLUMN person_age;

ALTER TABLE persons
ADD COLUMN age VARCHAR(10);

-- Change the data type
ALTER TABLE persons
ALTER COLUMN age TYPE integer
USING age::integer;

ALTER TABLE persons
ALTER COLUMN age TYPE VARCHAR(20)

SELECT * FROM persons;

-- set a default values;
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(1);

ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';

INSERT INTO persons
(
	first_name,
	last_name,
	nationality,
	age
)
VALUES
(
	'JOHN',
	'BENJAMIN',
	'US',
	40
)

