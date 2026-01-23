-- 99. Update an ENUM data in production server

CREATE TYPE status_enum AS ENUM ('queued','waiting','running','done')

CREATE TABLE jobs
(
	job_id SERIAL PRIMARY KEY,
	job_status status_enum
)

INSERT INTO jobs (job_status) VALUES ('queued')

INSERT INTO jobs (job_status) VALUES ('running')

INSERT INTO jobs (job_status) VALUES ('waiting')

select * from jobs

UPDATE jobs SET job_status = 'running' WHERE job_status = 'waiting'

ALTER TYPE status_enum RENAME TO status_enum_old

CREATE TYPE status_enum as enum ('queued','running','done')

ALTER TABLE jobs ALTER COLUMN job_status TYPE status_enum using job_status::text::status_enum

DROP TYPE status_enum_old