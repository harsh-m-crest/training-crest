-- 193. CROSS Joins

-- Join table with right join

select *
from left_product
cross join right_product;

select *
from right_product
cross join left_product;

-- Cross join actors with directors 

select *
from movies
cross join directors;