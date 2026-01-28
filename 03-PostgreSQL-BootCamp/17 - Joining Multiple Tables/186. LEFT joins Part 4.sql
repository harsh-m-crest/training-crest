-- 186. LEFT joins Part 4

-- Get all the total revenues done by each files for each directors
SELECT
*
FROM directors;

-- we need total 38 records ? Yes for each directors

SELECT
	d.first_name,
	d.last_name,
	SUM(r.revenues_domestic + r.revenues_international) as "total_revenues"
FROM directors d
LEFT JOIN movies mv ON mv.director_id = d.director_id
LEFT JOIN movies_revenues r ON r.movie_id = mv.movie_id
GROUP BY d.first_name, d.last_name
HAVING SUM(r.revenues_domestic + r.revenues_international) > 0
ORDER BY 3 DESC NULLS LAST



