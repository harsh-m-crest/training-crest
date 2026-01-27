-- 128. LEFT and RIGHT

SELECT LEFT ('ABCD',1)

SELECT LEFT ('ABCD',3)

SELECT LEFT ('ABCD',-1)

SELECT LEFT ('ABCD',-3)

-- GET INTIAL FORM ALL DIRECTORS NOW
SELECT
	LEFT (first_name,1) AS initial
FROM directors
ORDER BY 1;

SELECT
	LEFT(first_name, 1) AS INTITALS,
	COUNT (*) AS total_initials
FROM directors
GROUP BY 1
ORDER BY 1;

SELECT 
	movie_name,
	LEFT(movie_name,6)
FROM movies;

-- right string

SELECT RIGHT ('ABCD',1)

SELECT RIGHT ('ABCD',-1)

-- Find all directors where they last name ends with 'on'
SELECT * FROM directors;

SELECT 
	last_name, RIGHT(last_name,2)
FROM directors
WHERE RIGHT(last_name,2) = 'on'





