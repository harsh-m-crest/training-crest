-- Using Logical or operator 

-- Get all english or chinese language movie

SELECT * FROM movies;

SELECT * FROM movies
where 
	movie_lang = 'English' 
	OR movie_lang ='Chinese'
ORDER BY movie_lang;

-- Get all english language movie and director id equal to 10

SELECT * FROM movies
WHERE
	movie_lang = 'English'
	AND director_id = '10'