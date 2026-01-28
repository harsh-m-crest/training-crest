-- 178. INNER joins with USINGt

-- using only when joining tables have SAME COLUMNS NAMES, rather then ON
-- Lets connect 'movies' and directors table 'Using' Keyword
SELECT
	*
FROM movies
INNER JOIN directors USING (director_id)

-- Can we connect 'movies' and 'movies_revneue' too?
SELECT
	*
FROM movies
INNER JOIN movies_revenues USING(movie_id)

-- can we connect more than tow tables
-- Connect 'movies', 'directors' and 'movies_revenues' tables

-- movies --> directors

SELECT
	*
FROM movies
INNER JOIN directors USING (director_id)
INNER JOIN movies_revenues USING (movies_id)