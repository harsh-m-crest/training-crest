-- 251. List all indexes

-- all indices
SELECT
	*
FROM pg_indexes
WHERE
	schemaname = 'public'
ORDER BY
	tablename,
	indexname

-- indices of a table
SELECT
*
FROM pg_indexes
WHERE
	tablename = 'orders'
ORDER BY
	tablename,
	indexname

	