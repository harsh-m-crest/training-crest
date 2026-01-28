-- 181. INNER joins with filter data Part 3

-- What ar the top 10 most profitable movies between year 2005 and 2008.
-- Print the movie name, movie name, director name, movie language, total revenue

SELECT 
	mv.movie_name,
	mv.release_date,
	d.first_name,
	d.last_name,
	mv.movie_lang,
	r.revenues_domestic,
	r.revenues_international,
	(r.revenues_international + r.revenues_domestic) as "Total Revenues" 
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues r ON mv.movie_id = r.movie_id
WHERE 
	mv.release_date BETWEEN '2005-01-01' AND '2008-12-31'
ORDER BY 8 DESC NULLS LAST
LIMIT 10