-- 185. LEFT joins Part 3

-- Add a where conditions, say get list of english and chinese movies only

SELECT
	d.first_name,
	d.last_name,
	mv.movie_name,
	mv.movie_lang
FROM directors d
LEFT JOIN movies mv ON mv.director_id = d.director_id
WHERE
	mv.movie_lang IN ('English','Chinese')

-- Count all movies for each directors
SELECT
	d.first_name,
	d.last_name,
	COUNT(*) AS "total_movies"
FROM directors d
LEFT JOIN movies mv ON mv.director_id = d.director_id
GROUP BY d.first_name, d.last_name
ORDER BY COUNT(*) DESC

-- Get all the movies age certification for all directors where nationalities are 'American','Chinese' and 'Japanese'
-- What is the first table : directors

SELECT
	*
FROM directors d
LEFT JOIN movies mv ON d.director_id = mv.director_id 
WHERE d.nationality IN('Japanese','American','Chinese')

