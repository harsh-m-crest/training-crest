-- 209. Duplicate a schema along with all data

-- Create a simple database called "test_schema";
CREATE DATABASE test_schema;

-- Create a table called "songs"

CREATE TABLE test_schema.public.songs (
	song_id SERIAL PRIMARY KEY,
	song_tittle VARCHAR(100)
)

INSERT INTO test_schema.public.songs (song_titTle) VALUES
('Counting Star'),
('Rolling On');

SELECT * FROM songs;






