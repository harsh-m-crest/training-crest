-- 79. What is a data type conversion


-- ' Type Conversion ' examples

SELECT * FROM movies;

-- integer = integer
SELECT * FROM movies
WHERE movie_id =1 

-- integer = string
SELECT * FROM movies
WHERE movie_id = '1'

-- use Explicit Conversion'
SELECT * FROM movies
WHERE movie_id = integer '1'

