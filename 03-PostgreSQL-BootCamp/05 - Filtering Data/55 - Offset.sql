 -- OFFSET
 
 -- 1. Get first row of movies table
SELECT 
*
FROM movies
FETCH FIRST 1 ROW ONLY

-- 2. Get the top 5 biggest movies by movie_length

SELECT 
*
FROM movies 
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY

-- 3. Get the top 5 oldest american directors

SELECT
*
FROM directors
ORDER BY date_of_birth ASC
FETCH FIRST 5 ROW ONLY

-- 4. Get the top 10 youngest female actors

SELECT
*
FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROW ONLY

-- 5.Get the first 5 movies from the 5th records onwards by long movie length
SELECT
*
FROM movies
ORDER BY movie_length
FETCH FIRST 5 ROW ONLY
OFFSET 4
