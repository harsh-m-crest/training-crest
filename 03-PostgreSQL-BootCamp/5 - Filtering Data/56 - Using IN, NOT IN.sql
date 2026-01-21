-- 1. Get all the movies fro english, chinese, and japanese
SELECT 
*
FROM movies
WHERE 
	movie_lang = 'English'
	OR movie_lang = 'Chinese'
	OR movie_lang = 'Japanese'
ORDER BY movie_lang;

--Using IN operator

SELECT
*
FROM movies
WHERE
	movie_lang IN ('English','Chinese','Japanese')
ORDER BY movie_lang 

--2. Get all movies where age certificate is 13 and PG type
SELECT
*
FROM movies
WHERE 
	age_certificate IN ('12','PG')
ORDER BY age_certificate

--3.
SELECT
*
FROM movies
WHERE 
	director_id NOT IN ('10','13')
ORDER BY director_id

-- 4. Get all actors where actor_id is not 1,2,3,4
SELECT
*
FROM actors
WHERE actor_id NOT IN (1,2,3,4)
ORDER BY actor_id