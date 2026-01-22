-- 69. TIME


-- CREATE a  samplke data
CREATE TABLE table_time(
	id SERIAL PRIMARY KEY,
	class_name varchar(100) NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

-- Insert some values
INSERT INTO table_time (class_name,start_time,end_time) VALUES
('MATH','08:00:00','09:00:00'),
('CHEMISTRY','09:01:00','10:00:00');

-- View the data
SELECT * FROM table_time;

-- Getting current time
SELECT CURRENT_TIME;

--Getting current time with precesion
SELECT CURRENT_TIME(4);

-- Local Time
SELECT LOCALTIME;
SELECT CURRENT_TIME, LOCALTIME;

-- Arithmetic operations
04:00
10:00

SELECT time'10:00' - time'04:00' as RESULT;

-- Using Interrval
interval  'n-type'

n = number
type = second, minute, hours, day, month, year....

SELECT
CURRENT_TIME,
CURRENT_TIME + interval '-2 hours' as result;

