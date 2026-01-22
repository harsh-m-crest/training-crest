-- 73. hstore
-- #########


-- Instal the extension
CREATE EXTENSION IF NOT EXISTS hstore;

-- Create table
CREATE TABLE table_hstore(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	book_info hstore
);

INSERT INTO table_hstore (title,book_info) VALUES
(
	'TITLE',
	'
		"publisher" => "ABC Publisher",
		"paper_cost" => "20,.00",
		"e_cost" => "10.85"
	'
)


SELECT * FROM table_hstore;


-- Query specific hstore value
SELECT book_info -> 'publisher' as "publishers" from table_hstore;