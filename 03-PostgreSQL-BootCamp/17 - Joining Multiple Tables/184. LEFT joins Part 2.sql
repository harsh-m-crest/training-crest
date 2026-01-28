-- 184. LEFT joins Part 2

-- List all the movies with directors first and last names, and movie name
SELECT
	d.first_name,
	d.last_name,
	mv.movie_name
FROM movies mv
LEFT JOIN directors d ON d.director_id = mv.director_id

-- reverse the table directors and movies
SELECT
	d.first_name,
	d.last_name,
	mv.movie_name
FROM directors d
LEFT JOIN movies mv ON mv.director_id = d.director_id

-- Lets add a record in our directors table

INSERT INTO directors (first_name,last_name,date_of_birth, nationality) VALUES
('James','David','2010-01-01','American')

SELECT * FROM directors;