-- 141. Sum with SUM function

--Lets look at all movie revenue records
 
select * from movies_revenues;
 
-- Get total domestic revenues for all events
 
select sum(revenues_domestic)
from movies_revenues;
 
-- Get the total domestic revenues for all movies where domestic revenue is greater than 200
 
select sum(revenues_domestic)
from movies_revenues
where revenues_domestic > 200;
 
-- find the total movie length of all english languge movies
 
select * from movies;
 
select sum(movie_length)
from movies
where movie_language = 'English';
 
--  Can I sum all movies name?
 
select sum(distinct revenues_domestic)
from movies_revenues;


