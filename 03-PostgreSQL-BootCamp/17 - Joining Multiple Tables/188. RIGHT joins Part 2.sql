-- 188. RIGHT joins Part 2

-- Count each movies for each directors

select
	concat(d.first_name,' ',d.last_name),
	count(m.movie_name) as total_movies
from directors d
right join movies m on d.director_id = m.director_id
group by concat(d.first_name,' ',d.last_name)
order by count(movie_name);

-- Count each movies for each directors

select
	concat(d.first_name,' ',d.last_name),
	count(m.movie_name) as total_movies
from directors d
right join movies m on d.director_id = m.director_id
group by concat(d.first_name,' ',d.last_name)
order by count(movie_name);
