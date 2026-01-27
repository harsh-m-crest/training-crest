-- 139. Counting results via COUNT function

-- Count all records
 
select count(*) from movies;
 
-- Count all records of a specific column
 
select count(movie_length) from movies;
 
-- Using COUNT with DISTINCT
 
select count(distinct(movie_lang))
from movies;
 
-- Count all english movies
 
select count(*)
from movies
where movie_lang = 'English';