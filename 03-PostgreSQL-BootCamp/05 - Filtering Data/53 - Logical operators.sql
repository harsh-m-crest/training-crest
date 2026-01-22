 -- Logical operators
 -- #################

 -- 1. Get all the movies where the movie length is greater than 100
SELECT
 	*
FROM movies
WHERE
	movie_lenght > 100
ORDER BY movie_length ;

-- 2. Get all the movie where the length is greater than or equal to 100
SELECT 
	*
FROM movies
WHERE
	movie_length >= 100
ORDER BY movie_length ;

-- 3. Get all the movie where the movie length is less than 100

SELECT
	* 
FROM movies
WHERE 
	movie_length < 100
ORDER BY movie_length ;


-- 4. Get all the movie where the movie length is less than or equal to 100

SELECT
	*
FROM movies
WHERE
	movie_length <= 100
ORDER BY movie_length ;


-- 5. Working with date type
-- Get all the movies where release date is greater than 2000

SELECT * FROM 	movies
ORDER by 
	release_date ASC;

SELECT
	*
FROM movies
WHERE
	release_date > '1999-12-31';

-- Logical Operator with text
-- Get all movies which is greater than english language
SELECT
	*
FROM movies
WHERE
	movie_lang > 'English'
ORDER BY movie_lang;

-- Get all the movies which are less than english language
SELECT
	*
FROM movies
WHERE
	movie_lang < 'English'
ORDER BY
	movie_lang;

-- Get all the movie that are not in english language
SELECT
	*
FROM movies
WHERE
	movie_lang != 'English'
ORDER BY
	movie_lang;

SELECT
	*
FROM movies 
	WHERE movie_lang <> 'English'
ORDER BY
		movie_lang;

-- omit quotes when using numerical value
SELECT
	*
FROM movies
WHERE movie_length > 100
	
