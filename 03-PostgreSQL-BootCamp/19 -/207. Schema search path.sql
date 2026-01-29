-- 207. Schema search path

-- view the current schema
SELECT current_schema();

-- view current search path
SHOW search_path;

-- postgress.public
SELECT * FROM public.orders

-- add new schema to search path
SET search_path TO humanresources, public;

SELECT * FROM ORDERS