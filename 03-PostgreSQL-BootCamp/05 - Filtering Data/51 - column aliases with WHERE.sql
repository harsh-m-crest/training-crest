51. Can we use column aliases with WHERE

-- column aliases with WHERE

SELECT
	first_name,
	last_name as suranme
FROM
actors
WHERE last_name = 'Allen'
;

SELECT
	first_name,
	last_name as suranme
FROM
actors
WHERE surname = 'Allen'
;

-- if we use column alias in the select clause you cannot use then in the where clause.