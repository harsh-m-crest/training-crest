-- 98. ALTER TYPE - Alter an ENUM data type

-- Create a sample ENUM data type
CREATE TYPE mycolors as ENUM ('green','red','blue')

-- update a value
ALTER TYPE mycolors RENAME VALUE 'red' to 'orange'

-- List all the ENUM values
SELECT enum_range(NULL::mycolors)

-- To add a new value
ALTER TYPE mycolors add VALUE 'yellow' BEFORE 'green'