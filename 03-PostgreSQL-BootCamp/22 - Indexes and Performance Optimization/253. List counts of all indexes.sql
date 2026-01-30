-- 253. List counts of all indexes

-- all stats
SELECT
	*
FROM pg_stat_all_indexes

-- for a schema
SELECT
*
FROM pg_stat_all_indexes
WHERE 
	schemaname = 'public'
ORDER BY 
	relname, indexrelname

-- for a table
SELECT
*
FROM pg_stat_all_indexes
WHERE relname = 'orders'
ORDER BY relname, indexrelname