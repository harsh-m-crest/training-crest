-- 130. SPLIT_PART


SELECT SPLIT_PART ('1,2,3',',',2)

SELECT SPLIT_PART ('ONE,TWO,THREE', ',' ,2)

SELECT SPLIT_PART ('A|B|C|D','|',3)

-- Get the release year of all the movies
SELECT
	movie_name,
	release_date,
	SPLIT_PART(release_date::text,'-',1)as release_year
FROM movies;
