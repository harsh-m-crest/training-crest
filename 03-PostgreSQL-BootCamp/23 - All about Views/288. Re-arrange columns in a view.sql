-- 288. Re-arrange columns in a view

-- Reaarnge colum to an existing view
CREATE VIEW v_directors AS
SELECT
	last_name,
	first_name
FROM directors