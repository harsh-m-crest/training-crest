-- 289. Delete a column in a view

SELECT * FROM v_directors;

CREATE VIEW v_directors AS
SELECT
	first_name
FROM directors