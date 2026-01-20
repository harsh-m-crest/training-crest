-- Create the directors table

CREATE TABLE directors(
	director_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	date_of_birth DATE,
	nationally VARCHAR(20),
	add_date DATE,
	update_date DATE
);

SELECT * FROM directors;