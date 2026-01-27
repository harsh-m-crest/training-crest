-- 127. UPPER, LOWER and INITCAP

SELECT UPPER('amazing postgresql')

SELECT 
	UPPER(first_name) as first_name,
	UPPER(last_name) as last_name
FROM directors;

SELECT LOWER('amazing postgresql')

SELECT INITCAP('this world is changing with a lightining speed');

SELECT 
	INITCAP(
		CONCAT (first_name, ' ',last_name)
	) AS full_name
FROM 
	directors
ORDER BY
	first_name;
 