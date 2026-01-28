-- 187. RIGHT joins
-- ################

-- Join left_products and right_products via RIGHT JOIN

select *
from left_products
right join right_products on left_products.product_id = right_products.product_id;

select *
from right_products
right join left_products on left_products.product_id = right_products.product_id;

--28.List all the movies with director first nam,last name and movie name 

select
	d.first_name,
	d.last_name,
	m.movie_name
from directors d
right join movies m on d.director_id = m.director_id;

--29. Add a where conditions,say get list of all English and Chinese movies only

select 
	d.first_name,
	d.last_name,
	m.movie_name,
	m.movie_lang
from directors d
right join movies m on d.director_id = m.director_id
where  movie_lang in ('English','Chinese')
order by movie_lang;