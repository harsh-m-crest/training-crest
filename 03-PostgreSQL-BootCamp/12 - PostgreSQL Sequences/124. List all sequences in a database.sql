-- 124. List all sequences in a database

SELECT relname sequence_name
FROM  pg_class
WHERE 
relkind = 'S';