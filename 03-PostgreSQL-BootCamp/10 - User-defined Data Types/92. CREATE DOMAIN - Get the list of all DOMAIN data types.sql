-- 92. CREATE DOMAIN - Get the list of all DOMAIN data types

SELECT typname
FROM pg_catalog.pg_type
JOIN pg_catalog.pg_namespace
ON pg_namespace.oid = pg_type.typnamespace
WHERE
typtype = 'd' and nspname = 'public' ;