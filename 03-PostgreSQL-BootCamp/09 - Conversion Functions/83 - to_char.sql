-- to char()
-- #########

-- Convert an integer to a string

SELECT
	TO_CHAR(
		100870,
		'9,999999'
	);

-- movie-release date in DD-MM-YY format
SELECT
	release_date,
	TO_CHAR(release_date, 'DD-MM-YY'),
	TO_CHAR(release_date, 'Dy,MM,YYYY')
FROM movies;

-- converting timestamp literal to a string

SELECT
	TO_CHAR(
		TIMESTAMP '2020-01-01 10:30:45',
		'HH24:MI:SS'
	);

-- Adding currency symbol to say movies revenues

SELECT
	movie_id,
	revenues_domestic,
	TO_CHAR(revenues_domestic,'$9999D99')
FROM movies_revenues
