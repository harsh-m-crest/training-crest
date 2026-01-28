-- 170. Using GROUP BY

-- Get total count of all movies group by movie language

SELECT 
	movie_lang,
	COUNT(movie_lang)
FROM movies
GROUP BY
	movie_lang;

-- Get average movie length group by movie language

SELECT
	movie_lang,
	AVG(movie_length)
FROM movies
GROUP BY movie_lang ;

-- get the sum total movie length per age certificate 

SELECT
	age_certificate,
	SUM(movie_length)
FROM movies
GROUP BY age_certificate;

-- List Minimum and Maximum movie length group by movie language

SELECT
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang;


SELECT
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang
ORDER BY MAX(movie_length) DESC;


-- Can we use group by without aggregate function

SELECT
	movie_length
FROM movies
GROUP BY movie_length

SELECT
	movie_length
FROM 
	movies
;

-- It remove duplicate and take only unique 





