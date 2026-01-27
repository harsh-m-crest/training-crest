-- 142. MIN and MAX functions

-- What is the longtest length movie in movie table
 
select movie_length
from movies
order by movie_length desc;
 
select max(movie_length)
from movies;
 
-- What is the shortest length movie in movie table
 
select movie_length
from movies

-- What is the longtest length movie in movies table within all english based language
 
select max(movie_length)
from movies
where movie_language = 'English';
 
-- What is latest release movie in english language
 
select max(release_date)
from movies
where movie_language = 'English';
 
-- What was first movie release in chinese language

select max(release_date)
from movies
where movie_language = 'Chinese';
 
-- Can we use MIN and MAX for text data types
 
select max(movie_name) from movies;