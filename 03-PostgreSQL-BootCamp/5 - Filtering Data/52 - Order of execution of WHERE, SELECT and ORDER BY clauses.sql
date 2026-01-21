-- 52. Order of execution of WHERE, SELECT and ORDER BY clauses
-- FROM | WHERE | SELECT | ORDER BY
SELECT
	*
FROM movies
Where
	movie_lang = 'English'
ORDER BY
	movie_length DESC

