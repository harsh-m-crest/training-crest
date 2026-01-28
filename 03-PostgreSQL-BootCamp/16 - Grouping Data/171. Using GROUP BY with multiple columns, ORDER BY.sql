-- 171. Using GROUP BY with multiple columns, ORDER BY

-- Can we use column1, aggregate function column without specifying GROUP BY clause

SELECT
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang
ORDER BY MAX(movie_length) DESC;

-- Using more than 1 column in SELECT
-- Get average movie length group by movie language and age certification

SELECT
	movie_lang,
	age_certificate,
	AVG(movie_length) as "Avg movie length"
FROM movies
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang
;


-- Can we group BY on all columns

SELECT
	movie_lang,
	age_certificate,
	AVG(movie_length) as "Avg movie length"
FROM movies
GROUP BY movie_lang, age_certificate
ORDER BY movie_lang, 3 DESC

-- filter some records
-- Get average movie length group by movie language and age_certification where movie length greater than 100

SELECT
	movie_lang,
	age_certificate,
	AVG(movie_length) AS "Avg movie length"
FROM movies
WHERE movie_length > 100
GROUP BY movie_lang, age_certificate, movie_length
ORDER BY movie_length

-- Get average movie length group by movie age certificate where age certificate = 10

SELECT
	age_certificate,
	AVG(movie_length)
FROM movies
WHERE age_certificate = '10'
GROUP BY age_certificate

-- How many directors are there per each nationality

SELECT
	nationality,
	COUNT(*) AS "TOTAL DIRECTORS"
FROM directors
GROUP BY nationality
ORDER BY 2 DESC;

-- Get total sum movie length for each age certificate and movie language combination

SELECT
	movie_lang,
	age_certificate ,
	SUM(movie_length)
FROM movies
GROUP BY movie_lang, age_certificate
ORDER BY 3 DESC

	








	