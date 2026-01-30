-- 282. Creating a view

-- Crete a view 
CREATE OR REPLACE VIEW v_movie_quick AS
SELECT
	movie_name,
	movie_length,
	release_date
FROM movies mv

-- Lets see how to use view now!

CREATE OR REPLACE VIEW v_movies_directors_all AS
SELECT
	mv.movie_id,
	mv.movie_name,
	mv.movie_length,
	mv.movie_lang,
	mv.age_certification,
	mv.release_date,
	mv.director_id,
	d.first_name,
	d.last_name,
	d.date_of_birth,
	d.nationality
FROM movies mv
INNER JOIN directors d ON d.director_id = mv.director_id

SELECT * FROM v_movie_quick;

SELECT * FROM v_movies_directors_all
