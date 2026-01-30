-- 286. A view with UNION of multiple tables

-- Lets have a view for all peoples in a movies like actors and directors with first, last names
 
create view v_all_actors_directors as
select 
	first_name,
	last_name,
	'actors' as people_type
from actors 
union all 
select
	first_name,
	last_name,
	'directors' as people_type
from directors;

select *
from v_all_actors_directors
where first_name = 'John'
order by people_type, first_name;