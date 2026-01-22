-- 61. Concatenation with ||, CONCAT and CONCAT_WS

-- Using ||
SELECT 'Hello' || ' ' || 'World';

SELECT 'Hello' || NULL || 'World'; 

-- Using CONCAT

SELECT 
	revenues_domestic,
	revenues_international,
	CONCAT_WS('| ',revenues_domestic, revenues_international) AS profits
FROM movies_revenues;





