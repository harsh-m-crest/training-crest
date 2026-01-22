-- 70. TIMESTAMP and TIMESTAMPTZ

-- Create a sample table

CREATE TABLE table_time_tz (
	ts TIMESTAMP,
	tstz TIMESTAMPTZ
);

--  SET THE TIMEZONE
INSERT INTO table_time_tz (ts, tstz) VALUES
('2026-01-06 10:10:10-07','2026-01-06 10:10:10-07')

SELECT * FROM table_time_tz;

-- show current timezone
 SHOW TIMEZONE;

-- Changw the timezone
SET TIMEZONE = 'America/New_York';

-- chnage to orignal time zone
SET TIMEZONE = 'Asia/Kolkata'

--current time of the day
SELECT TIMEOFDAY();

-- timezone() function to convert time based on time zone
SELECT timezone('Asia/Singapore','2026-01-01 00:00:00')