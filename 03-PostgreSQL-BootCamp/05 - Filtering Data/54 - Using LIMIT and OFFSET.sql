-- Using LIMIT and OFFSET

-- 1. Get the top 5 biggest movies by length

SELECT
*
FROM movies
ORDER BY movie_length
LIMIT 5;


-- 2. Get the top 5 oldest american director

SELECT 
*
FROM directors
WHERE nationality = 'American'
ORDER BY date_of_birth
LIMIT  5;

-- 3. Get the top 10 youngest female
SELECT
*
FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10;

-- 4. Get the top 10 most domestic profitable movie

SELECT 
*
FROM movies_revenues
ORDER BY revenues_domestic DESC NULLS LAST
LIMIT 10;

--5. Get the top 10 least domestic profitable movie
SELECT
*
FROM movies_revenues
ORDER BY revenues_domestic ASC NULLS LAST
LIMIT 10;

--Using OFFSET
-- List 5 films starting from the fourth one ordered by movie_id

SELECT
*
FROM movies
ORDER BY movie_id
LIMIT 5 OFFSET 3;

-- List all the top 5 movies after the top 5 higest domestic profits movie
SELECT
*
FROM movies_revenues
ORDER BY revenues_domestic DESC NULLS LAST
LIMIT 5 OFFSET 5;


