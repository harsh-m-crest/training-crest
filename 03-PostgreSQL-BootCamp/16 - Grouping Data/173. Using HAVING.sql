-- 173. Using HAVING

-- List movies languages where sum total length of the movies is greater than 200

SELECT
	movie_lang,
	SUM(movie_length)
FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) < 200;

-- List directors where their sum total movie length is greater than 200

SELECT
	director_id,
	SUM(movie_length)
FROM movies
GROUP BY director_id
HAVING SUM(movie_length) > 200

-- Using column aliases wiht Having clauses (Not Possible)
SELECT
	director_id,
	SUM(movie_length) as 'tml'
FROM movies
GROUP BY director_id
HAVING tml > 200
ORDER BY 2 desc;


	