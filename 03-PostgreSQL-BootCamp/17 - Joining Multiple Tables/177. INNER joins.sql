-- 177. INNER joins
-- ###########################

-- FOR Inner Joins : All common columns defined at ON must match values on both tables

-- Let combine 'movies' and 'directors' table

SELECT
*
FROM movies
ORDER BY director_id;

SELECT
*
FROM directors  

-- directors.director_id = movies.director_id

SELECT 
	movies.movie_id,
	movies.movie_name,
	movies.director_id,
	directors.first_name
FROM movies
INNER JOIN directors
ON movies.director_id = directors.director_id
