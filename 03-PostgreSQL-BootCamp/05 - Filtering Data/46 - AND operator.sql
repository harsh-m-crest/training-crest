SELECT * FROM movies;

-- Get all the english language movies
SELECT * FROM movies
WHERE 
	movie_lang = 'English'

-- Get all Japanese Language Movies
SELECT * FROM movies
WHERE
	movie_lang = 'Japanese'

-- Use Mutiple Condition 
-- Get all English language movies and age certificate to 18

SELECT * FROM movies
WHERE
	movie_lang = 'English'
AND
	age_certificate = '18'