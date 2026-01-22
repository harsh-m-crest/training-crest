-- 82. Table data conversion

-- Create a table called 'ratings' with initial data as characters

CREATE TABLE ratings(
	rating_id SERIAL PRIMARY KEY,
	rating VARCHAR(1) NOT NULL
);

SELECT * FROM ratings;

-- 2. insert some data
INSERT INTO ratings(rating) VALUES
('A'),
('B'),
('C'),
('D');

-- 3 
INSERT INTO ratings (rating ) VALUES
(1),
(2),
(3),
(4)

SELECT * FROM ratings;

-- CAST to change all n0n-numeric data

SELECT
	rating_id,
	CASE
		WHEN rating~E'^\\d+$' THEN
			CAST (rating AS INTEGER)
		ELSE 
			0
		END AS rating
FROM
	ratings;
	
