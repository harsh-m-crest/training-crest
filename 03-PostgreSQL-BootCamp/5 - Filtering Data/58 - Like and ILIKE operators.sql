-- Like and ILIKE operators 

-- 1. Full Character 
SELECT 'HELLO' LIKE 'HELLO'

-- 2. Partial character search using '%'

SELECT 'hello' like 'h%';

SELECT 'hello' like '%e%';

SELECT 'hello' like 'hell%';

SELECT 'hello' like '%ll';

-- 3. Single character search using '_'
SELECT 'hello ' like '_ello';

-- 4. Checking occurance of search using '_'
SELECT 'hello' like '__ll_';

-- 5. Using % and _ together
SELECT 'hello' like '%ll_';

-- 6. Get all actors name where first name starting with 'A'
SELECT *
FROM actors
WHERE 
	first_name like 'A%'
ORDER BY first_name ;

-- 7. Get all actors names where last name ending with 'a'
SELECT 
*
FROM actors
WHERE
	last_name like '%a'
ORDER BY last_name;


-- 8. Get all actors names where first name with 5 character only
SELECT *
FROM actors
WHERE first_name LIKE '_____'
ORDER BY first_name ;

-- 9. Get all actors names where first nme contains 'l' on the second place
SELECT *
FROM actors
WHERE first_name LIKE '_l%'
ORDER BY first_name;

-- 10. Is Like is casesensitive
-- Get record fro actors where actor name is 'Tim'

SELECT
*
FROM actors
WHERE First_name LIKE 'Tim'

-- Get record from actors where actor name is 'tim'
SELECT 
*
FROM  actors
WHERE
	first_name LIKE 'tim'



