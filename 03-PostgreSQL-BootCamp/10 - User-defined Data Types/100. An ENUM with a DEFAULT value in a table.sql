-- 100. An ENUM with a DEFAULT value in a table

-- First create an enum data type
CREATE TYPE status AS ENUM ('pending','approved','declined')

CREATE TABLE cron_jobs(
	cron_job_id INT,
	status status DEFAULT 'pending'
)

-- Test with insert data
INSERT INTO cron_jobs (cron_job_id) VALUES (1)

SELECT * FROM cron_jobs;