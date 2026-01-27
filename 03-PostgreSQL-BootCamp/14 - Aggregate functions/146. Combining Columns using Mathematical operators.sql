-- 146. Combining Columns using Mathematical operators

select 2+10 as addition;
select 2 -10 as substration;
select 11/2::numeric(10,2) as divide;
 
select 2.5*2.5;
select 10%3;

SELECT * FROM movies;

SELECT
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) AS "total revenue"
FROM movies_revenues

SELECT
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) AS "total revenues"
FROM movies_revenues
ORDER BY 4 DESC;