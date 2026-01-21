-- USE WHERE before FROM

SELECT
* 
FROM movies
WHERE
	movie_lang = 'English'

	
-- Use Where after ORDER BY

SELECT
*
FROM movies
WHERE -- can only be used before order by
	age_certificate = '15'
ORDER BY movie_lang
