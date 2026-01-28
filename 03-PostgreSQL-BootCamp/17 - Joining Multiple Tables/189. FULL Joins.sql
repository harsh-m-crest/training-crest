-- 189. FULL Joins

-- Join table with full join

select *
from left_products
full join right_products on left_products.product_id = right_products.product_id;

select *
from right_products
full join left_products on left_products.product_id = right_products.product_id;

--34.List all the movies with director first nam,last name and movie name 

select
	d.first_name,
	d.last_name,
	m.movie_name
from directors d
full join movies m on d.director_id = m.director_id;

--35. Add a where conditions,say get list of all English and Chinese movies only

select 
	d.first_name,
	d.last_name,
	m.movie_name,
	m.movie_lang
from directors d
full join movies m on d.director_id = m.director_id
where  movie_lang in ('English','Chinese')
order by movie_lang;