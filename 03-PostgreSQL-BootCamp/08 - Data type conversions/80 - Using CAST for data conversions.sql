-- 80. Using CAST for data conversions

-- CAST (expression AS target_data_type);

-- String to Integer Conversion
SELECT 
	CAST ( '10' AS INTEGER)

SELECT 
	CAST ('10n' AS INTEGER);

-- String to date conversion
SELECT 
	CAST ( '2026-01-01' AS DATE), 
	CAST ('01-MAY-2025' AS DATE)

-- String to Boolean
SELECT 
	CAST ('true' AS Boolean),
	CAST('false' AS Boolean),
	CAST ('T' as Boolean),
	CAST ('F' as Boolean);
	
SELECT
	CAST('0' AS BOOLEAN ),
	CAST('1' AS BOOLEAN );

-- String to Double
SELECT
	CAST('14.7888' AS DOUBLE PRECISION );

-- expression::type

SELECT 
	'10'::INTEGER,
	'2026-01-06'::DATE,
	'01-01-2026'::DATE

-- 5. String to timestamp
SELECT '2020-02-20 10:30:25.467'::TIMESTAMP;

-- with timezone
SELECT '2020-02-20 10:30:25.467'::TIMESTAMPTZ

-- String To Interval
SELECT
	'10 minute '::INTERVAL,
	'4 hour'::INTERVAL,
	'1 day'::INTERVAL,
	'2 week'::INTERVAL,
	'5 month'::INTERVAL