-- 152. Formatting Dates

select current_timestamp;
select current_timestamp,to_char('2020-01-01 10:00:00'::timestamp, 'yyyy month dd');
 
select 
    current_timestamp,
    to_char('2020-01-01 10:00:00'::timestamp, 'yyyy month dd'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'yyyy month dd');
 
select 
    current_timestamp,
    to_char('2020-01-01 10:00:00'::timestamp, 'yyyy month dd'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'yyyy month dd'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'yyyy month dd hh:mi:ss tz');
 
select 
    current_timestamp,
    to_char('2020-01-01 10:00:00'::timestamp, 'yyyy month dd'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'yyyy month dd'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'yyyy month dd hh:mi:ss tz'),
    to_char('2020-01-01 10:00:00'::timestamptz, 'fmmonth ddth yyyy hh:mi:ss tz');