-- 182. INNER joins with different data type columns

-- Lets create a table with INT data type
CREATE TABLE t1 (test INT);

-- Create a table with VARCHAR data type
CREATE TABLE t2 (test VARCHAR(10));

-- Join above table
SELECT
*
FROM t1
INNER JOIN t2 ON t1.test = t2.test

-- DIffrent columns data types, how can we join
-- using cast

SELECT
*
FROM t1
INNER JOIN t2 ON CAST(t1.test AS VARCHAR)= 	t2.test

-- Test with some sample data for join
INSERT INTO t1 (test) VALUES (1),(2)
INSERT INTO t2 (test) VALUES (1),(2)

INSERT INTO t2 (test) VALUES ('aa'),('bb')

SELECT * FROM t2;