-- 143. GREATEST AND LEAST functions

-- Using GREATEST and LEAST functions
 
select greatest(200,10,20);
select least (10,20,5);
 
-- Find the greatest and least revenue per each movie
 
select
	movie_id,
	revenues_domestic,
	revenues_international,
	greatest(revenues_domestic, revenues_international) as "Greatest",
	least(revenues_domestic, revenues_international) as "Least"
from movies_revenues;