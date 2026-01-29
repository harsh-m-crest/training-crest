-- 221. Formatting and converting an array

-- Formatting and converting arrays
 
select string_to_array('1,2,3,4',',');
select string_to_array('1,2,3,4,ABC',',','ABC');
 
-- Setting an empty value to null

select string_to_array('1,2,3,4,ABC',',','');


