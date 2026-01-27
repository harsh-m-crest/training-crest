-- 118. Restart, rename a sequence, and use pgAdmin to alter a sequence

SELECT nextval('test_seq')

ALTER SEQUENCE test_seq RESTART WITH 100

ALTER SEQUENCE test_seq RENAME TO my_sequence4
