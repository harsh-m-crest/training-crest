-- 190. Joining multiple tables

-- Count each movies for each directors

select
	concat(d.first_name,' ',d.last_name),
	count(m.movie_name) as total_movies
from directors d
join movies m on d.director_id = m.director_id
group by concat(d.first_name,' ',d.last_name)
order by count(movie_name);

-- Count each movies for each directors
select
	concat(d.first_name,' ',d.last_name),
	count(m.movie_name) as total_movies
from directors d
join movies m on d.director_id = m.director_id
group by concat(d.first_name,' ',d.last_name)
order by count(movie_name);

-- Get all the movie with age certificate for all directors where nationality is American,Chinese,Japanese

select *
from directors d 
join movies m on d.director_id = m.director_id
where d.nationality in ('American','Chinese','Japanese')
order by nationality;