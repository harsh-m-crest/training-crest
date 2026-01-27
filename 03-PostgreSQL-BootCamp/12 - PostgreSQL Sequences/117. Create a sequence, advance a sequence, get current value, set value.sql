-- 117. Create a sequence, advance a sequence, get current value, set value

-- Create a sequence
CREATE SEQUENCE IF NOT EXISTS test_seq

-- Advance sequence and return new value
SELECT nextval('test_seq')

-- Return most current value of the sequence
SELECT currval('test_seq')

-- Set a Sequence
SELECT setval('test_seq',100)

-- Set a sequence and do not skip over
SELECT setval('test_seq',200,false)

-- Control the sequence START Value
CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100



