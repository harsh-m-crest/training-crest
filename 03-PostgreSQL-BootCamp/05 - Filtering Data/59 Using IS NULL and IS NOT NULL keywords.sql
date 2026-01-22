-- 59. Using IS NULL and IS NOT NULL keywords

-- 1. Find list of actors with missing birth date
SELECT
*
FROM actors
WHERE date_of_birth IS NULL
ORDER BY first_name;

-- 2. Find lsit of actors with mssing birth date or missing first name
SELECT
* FROM actors
WHERE 
	date_of_birth IS NULL 
	OR first_name IS NULL
ORDER BY actor_id;

-- 3. Get the list of movis where domestic revnues is NULL
SELECT *
FROM movies_revenues
WHERE revenues_domestic IS NULL
ORDER BY revenue_id;

-- 4. Get list of movies where either domestic or international revneues is NULL
SELECT
*
FROM movies_revenues
WHERE revenues_domestic IS NULL
	OR revenues_international IS NULL

-- 5. Get list of movies where domestic and international revenue is null
SELECT
*
FROM movies_revenues
WHERE revenues_domestic IS NULL
	AND revenues_international IS NULL

