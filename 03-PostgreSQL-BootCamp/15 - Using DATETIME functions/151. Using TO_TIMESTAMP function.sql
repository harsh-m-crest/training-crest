-- 151. Using TO_TIMESTAMP function


select to_timestamp
('2020-01-01 10:20:30','YYYY-MM-DD HH:MI:SS');

select to_timestamp
('2020-01-01 10:20:30','YYYY-MM-DD HH:MI');

select to_timestamp
('2020-01-01 10:20:30','YYYY-MM-DD HH');

select to_timestamp
('01-01-2020 10:4','DD-MM-YYYY SS:MS');
