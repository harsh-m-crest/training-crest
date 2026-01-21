-- 60. Concatenation techniquesc  

-- 1. Lets combine string 'Hello' and 'World'

SELECT 'Hello' || 'World' AS new_string;

SELECT 'Hello' || ' ' || 'World' AS new_string;

-- 2. Lets combine actor first and last names as 'Actor Name'

SELECT CONCAT(first_name, last_name ) AS "Actor Name"
FROM actors ;

-- 3. Lets add a seprator between first and last name in 'Actor'
SELECT CONCAT(first_name,' ', last_name) AS "Actor Name"
FROM  actors;

-- 4. Let print first name, last name and date of birth of all actors seprator by coma
SELECT CONCAT_WS(',',first_name,last_name,date_of_birth)
FROM actors
ORDER BY first_name;