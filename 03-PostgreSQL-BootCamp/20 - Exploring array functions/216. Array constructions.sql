-- 216. Array constructions
-- ########################

SELECT 
	ARRAY_CAT (ARRAY[1,2,3], ARRAY[4,5,6]) AS "Combine arrays via ARRAY_CAT"

SELECT
	ARRAY[1,2,3] || ARRAY[4,5,6] AS "Combine arrays"
	 