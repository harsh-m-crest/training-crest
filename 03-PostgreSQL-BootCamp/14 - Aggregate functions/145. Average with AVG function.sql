-- 145. Average with AVG function

-- Get the average movie_length fromm movies data
 
SELECT AVG(movie_length)
FROM movies;
 
-- Get te average movie_length for all english based movies
 
SELECT (movie_length)
FROM movies
WHERE movie_language = 'English';
 
-- Using avg and sum functions together
 
SELECT AVG(movie_length),sum(movie_length)
FROM movies
WHERE movie_language = 'English';

