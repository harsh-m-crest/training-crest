-- 234. Exploring JSON objects

-- Represent a JSON object in PostgreSQL
SELECT '("title":"The lord of the rings")'::TEXT

-- Cast data type to make it JSON Data types?
SELECT '{"title":"The Lord of the ring"}'::json

-- preserve white spaces
SELECT '{
	"title":"The lord of the rings",
	"author":"J.R.R"
}'::jsonb















