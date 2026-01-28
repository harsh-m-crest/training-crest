-- 175. HAVING vs WHERE

-- Having works on result group
-- Where works on SELECT columns and not on result group

-- Get the movie language where their sum total movie length is greater than 200
SELECT
	movie_lang,
	SUM(movie_length)
FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 200
ORDER BY 2 DESC

-- Using where
SELECT
	movie_lang,
	SUM(movie_length)
FROM movies
WHERE movie_length > 100
GROUP BY movie_lang
ORDER BY 2 DESC

