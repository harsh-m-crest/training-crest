-- Combining the AND and OR Condition
-- Get all English or Chinese and movies with age certifcation equal to 12

--Wihtout Paranthesis
SELECT * FROM movies
WHERE 
	movie_lang = 'English'
	AND age_certificate = '12'
	OR movie_lang ='Chinese'

-- With Parantheseis
SELECT * FROM movies
WHERE
	(movie_lang = 'English'
	OR movie_lang = 'Chinese')
	AND age_certificate = '12'
	
	