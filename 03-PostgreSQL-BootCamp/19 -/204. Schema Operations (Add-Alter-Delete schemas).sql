-- 204. Schema Operations (Add/Alter/Delete schemas)
-- #################################################

-- Create a schema

CREATE SCHEMA sales

CREATE SCHEMA hr

-- Rename a schema
-- ALTER SCHEMA SCHEMA_NAME RENAME To new_schema_name

ALTER SCHEMA sales RENAME TO programming

-- Drop a schema
-- Drop SCHEMA schema_name

DROP SCHEMA hr