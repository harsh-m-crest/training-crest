-- 71. UUID
-- ########

-- Enable 3rd party extensions first eg: uuid-ossp
CREATE EXTENSION IF NOT EXISTS "uuid-ossp"

-- genrerate a sample UUID value first
SELECT uuid_generate_v1();

-- Create a sample table 'table_uuid'
CREATE TABLE table_uuid(
	product_id UUID DEFAULT uuid_generate_V1(),
	product_name VARCHAR NOT NULL
);

-- Insert some Data
INSERT INTO table_uuid (product_name) VALUES ('ABCD12') 

SELECT * FROM table_uuid;

-- Chnage uuid default value
ALTER table table_uuid
ALTER COLUMN product_id
SET DEFAULT uuid_generate_v4();
