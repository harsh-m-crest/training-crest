-- 81. Implicit to Explicit conversions

-- 1. Using integer and factorial

SELECT FACTORIAL(20);

SELECT FACTORIAL(20) AS "reuslt";

-- ! factorial taken an argument type bigint

SELECT FACTORIAL(CAST(5 AS bigint)) AS result;

-- round with numeric
SELECT ROUND(10,4) AS "result";

SELECT ROUND(CAST(10 AS NUMERIC),4) AS "result";

-- cast with text
SELECT SUNSTR('123456',2) AS "result"

SELECT
	SUBSTR('123456',2) AS "Implicit",
	SUBSTR(CAST('123456' AS TEXT),2) AS "explicit"