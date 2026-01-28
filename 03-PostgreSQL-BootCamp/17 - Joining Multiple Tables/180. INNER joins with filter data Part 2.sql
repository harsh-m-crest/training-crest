-- 180. INNER joins with filter data Part 2

-- select movie_name, director name, movie language, total revnues for all top 5 movies

SELECT
	mv.movie_name,
	d.first_name, 
	d.last_name,
	r.revenues_domestic,
	r.revenues_international,
	(r.revenues_domestic + r.revenues_international) as "Total Reveneues"
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues r ON mv.movie_id= r.movie_id
ORDER BY 6 DESC NULLS LAST
LIMIT 5