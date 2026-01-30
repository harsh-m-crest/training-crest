-- 285. Using filters with views

-- Create a view to list all movies released after 1997
CREATE OR REPLACE VIEW v_movies_after_1997 AS
SELECT 
*
FROM movies
WHERE release_date >='1997-12-31'
ORDER BY release_date DESC

-- Select all the movies with english language from the view 
SELECT
*
FROM v_movies_after_1997
WHERE movie_lang = 'English'
ORDER BY movie_lang

-- Select all movies with english language and age certificate 12 only from the view
select * 
from v_movie_after_1997
where movie_language = 'English' and age_certificate = '12'
order by movie_language;

--Select all movies with directors with american and japanese nationality
select *
from movies mv
inner join directors d on d.director_id = mv.director_id
where nationality in ('American','Japanese')
order by nationality;

