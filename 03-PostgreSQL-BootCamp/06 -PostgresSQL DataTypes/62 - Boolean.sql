-- 62. Boolean

-- 1. Create a sample table called 'Table_boolean'
Create TABLE tabel_bollean(
	product_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

-- 2. Insert some data
INSERT INTO tabel_bollean (is_available) VALUES ('1'),('0')

--3. View the records
SELECT * FROM tabel_bollean

--4. Insert more variables of boolean
SELECT * FROM tabel_bollean
WHERE is_available = TRUE

-- 5. Some more condition search
SELECT * FROM tabel_bollean
WHERE is_available = 'f'

-- 6. Using NOT for conditions
SELECT * FROM tabel_bollean
WHERE is_available

-- 7. set default vaues for bollean
ALTER TABLE tabel_bollean
ALTER COLUMN is_available
SET DEFAULT '0'

INSERT INTO tabel_bollean (product_id) VALUES (12)
