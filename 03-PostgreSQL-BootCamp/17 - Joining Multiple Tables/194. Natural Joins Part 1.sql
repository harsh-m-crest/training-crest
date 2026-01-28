-- 194. Natural Joins Part 1

-- Join table with NATURAL join

select *
from left_products
natural join right_products;

select *
from left_products
natural left join right_products;

select *
from left_products
natural right join right_products;