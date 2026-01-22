-- 74. JSON

-- Create our sample task
CREATE TABLE table_json(
	id SERIAL PRIMARY KEY,
	docs JSON
);

SELECT * FROM table_json;

-- insert some data
INSERT INTO table_json (docs) VALUES
('[1,2,3,4,5,6]'),
('[2,3,4,5,6,7]'),
('{"key":"value"}');

-- Lets search the data
SELECT docs FROM table_josn;

-- search specifc data in json column
SELECT * FROM table_json
WHERE docs @> '2';

CREATE INDEX ON table_json USING GIN (docs jsonb_path_ops)

