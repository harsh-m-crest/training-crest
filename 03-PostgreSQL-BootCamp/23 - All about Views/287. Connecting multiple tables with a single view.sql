-- 287. Connecting multiple tables with a single view

-- Lets connect movies, directors, movies revenues tables with a single view
 
select *
from movies mv
inner join directors d on d.director_id = mv.director_id
inner join movies_revenues r on r.movie_id = mv.movie_id;

-- The above query contains multiple same column like movie_id, can we use CREATE VIEW?
 
create view v_movies_directors_revenues as
select
	mv.movie_id,
	mv.movie_name,
	mv.movie_length,
	mv.movie_language,
	mv.age_certificate,
	mv.release_date,
	d.director_id,
	d.first_name,
	d.last_name,
	d.nationality,
	d.date_of_birth,
	r.revenue_id,
	r.revenues_domestic,
	r.revenues_international
from movies mv
inner join directors d on d.director_id = mv.director_id
inner join movies_revenues r on r.movie_id = mv.movie_id;

-- Without views

select
	mv.movie_id,
	mv.movie_name,
	mv.movie_length,
	mv.movie_language,
	mv.age_certificate,
	mv.release_date,
	d.director_id,
	d.first_name,
	d.last_name,
	d.nationality,
	d.date_of_birth,
	r.revenue_id,
	r.revenues_domestic,
	r.revenues_international
from movies mv
inner join directors d on d.director_id = mv.director_id
inner join movies_revenues r on r.movie_id = mv.movie_id
where age_certificate = '12';
 
-- With views

select *
from v_movies_directors_revenues 
where age_certificate = '12';