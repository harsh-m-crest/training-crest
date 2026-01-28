-- 179. INNER joins with filter data Part 1

-- Select movie name , director name, domestic revenues for all japanese movies
SELECT
	mv.movie_name,
	d.first_name,
	d.last_name,
	r.revenues_domestic
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues r ON mv.movie_id = r.movie_id
WHERE
	mv.movie_lang = 'Japanese'

-- Select movie name , director name for all English, chinese and Japanese movies where domestic revenues is greater then 100

SELECT
	mv.movie_name,
	d.first_name,
	d.last_name,
	r.revenues_domestic
FROM movies mv
INNER JOIN directors d ON mv.director_id = d.director_id
INNER JOIN movies_revenues r ON mv.movie_id = r.movie_id
WHERE
	mv.movie_lang IN ('English','Chinese','Japanese')
	AND r.revenues_domestic > 100