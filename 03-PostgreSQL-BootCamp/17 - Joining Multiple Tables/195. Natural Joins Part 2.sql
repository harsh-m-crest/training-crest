-- 195. Natural Joins Part 2

-- Natural join actors with directors 

select *
from movies
natural join directors;

select *
from movies
natural inner join directors;

select *
from movies
natural left join directors;

select *
from movies
natural right join directors;