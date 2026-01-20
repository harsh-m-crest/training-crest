-- SELECT ALL DATA FROM A TABLE
-- ############################

-- 1. Get all records from movies table
SELECT * FROM movies;

-- 2. Get all records from actors table
SELECT * FROM actors;

-- Get First name from the actor table
SELECT first_name from actors;

-- Select First_name , Last_name from actor table
Select first_name, Last_name from actors;

-- Get movie_name, movie_lang from movie table
Select movie_name, movie_lang from movies;


-- Adding Alias to the column Name
-- ###############################

-- Make an alias for first_name as FirstName from actors table
Select first_name as FirstName from actors;

Select first_name as "FirstName" from actors;

-- Column Aliases that contain space we will use Quotes.
Select first_name as "First Name" from actors;

-- Make alias for movie_name as "Movie Name" and movie_lang as "Language" from movie table
Select 
	movie_name as "Movie Name" , 
	movie_lang as "Language" 
from movies;

-- The As Keyword
Select
	movie_name "Movie Name",
	movie_lang "Language"
from movies;

-- Asigning Column alias to an expression
-- ######################################

--Lets get the first name and the last name from actor table
Select first_name, last_name from actors;

-- Combine first_name, last_name columns togather as Full_name
Select first_name || last_name from actors;

SELECT first_name || ' ' || last_name from actors;

SELECT
	first_name || ' ' || last_name AS "Full Name"
from actors;

SELECT 2 * 10;


-- Using ORDER BY to sort records
-- ##############################

-- Sort based on single column
-- Sort all movie records by their release_date in ascending order
SELECT 
	*
FROM movies
ORDER BY
	release_date ASC;

-- Order by clause without writting asc
SELECT 
	*
FROM movies
ORDER BY
	release_date;

-- Sort all movies records by their release_date in descending order
SELECT
	*
FROM movies
ORDER BY
release_date DESC;

-- Sort Based on multiple columns

SELECT
	*
FROM movies
ORDER BY
	release_date DESC,
	movie_name ASC;

-- Using ORDER BY with alias column name
-- #####################################

-- Get first_name, last_name from actors table
SELECT
	first_name,
	last_name
FROM actors;

-- Make an alias for last_name as surname
SELECT
	first_name,
	last_name As surname
FROM actors
ORDER BY last_name;

-- sort last_name DESC
SELECT
	first_name,
	last_name As surname
FROM actors
ORDER BY last_name DESC;

-- Now use alias surname in ORDER BY clause
SELECT
	first_name,
	last_name as surname
FROM actors
ORDER BY last_name DESC;

-- Use order by to sort rows by expression
--########################################

-- Let calculate the length of the actor name with Length_function
SELECT
	first_name,
	LENGTH(first_name)
FROM actors; 

-- Lets sort rows by length of the actor name in descending actor

SELECT
	first_name,
	LENGTH(first_name) as len
FROM actors
ORDER BY 
	len DESC;

-- HOW to use column name or column number in Order by clause
-- ##########################################################

-- SOrt all records by first_name asc, date_of_birth desceding
SELECT
	*
FROM actors
ORDER BY
	first_name ASC,
	date_of_birth DESC

-- Now use column number instead of column name for sorting
SELECT
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY
	1 ASC,
	3 DESC;

-- USing order BY with NUll Values
-- #############################@

-- Sorting ascending sends null to last by default
select 
	first_name, 
	length(first_name) as len
from actors 
order by 
	len nulls last;

-- Sorting by nulls first
select 
	first_name, 
	length(first_name) as len
from actors 
order by 
	len desc nulls first;

-- Selc=ecting Disticnt values
-- ###########################
-- Selecting unique value
select
	distinct director_id
from movies
order by 1;

-- Selecting multiple unique values
select
	distinct movie_lang, director_id
from movies
order by 1;


-- Selecting all unique records
select 
	distinct * 
from movies
order by movie_id asc;


	
	



