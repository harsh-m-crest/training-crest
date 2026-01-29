-- 235. Create our first table with JSONB data type

-- Create a table called "Books"

CREATE TABLE books (
	book_id SERIAL PRIMARY KEY,
	book_info JSONB
);

-- INSERT SOME JSON OBJECTS
-- Single records

INSERT INTO books (book_info) values
('(
	"tittle":"Book title1",
	"author":"author1"
)')

SELECT * FROM books;

INSERT INTO books (book_info) VALUES
('{
	"title":"Book title1",
	"author":"author1"
}'),
('{	
	"title":"Book title1",
	"author":"author1"
}'),
('{
	"title":"Book title1",
	"author":"author1"
}')

-- Select all JSON records

SELECT * FROM books;

-- Use Selector

select book_info -> 'title' from books;
select book_info -> 'title' as Title, book_info -> 'author' as Author from books;

-- Return as text
select book_info ->> 'title' from books;

-- Filter records
select 
	book_info ->> 'title' as Title, 
	book_info ->> 'author' as Author 
from books
where book_info ->> 'author' = 'author1';
