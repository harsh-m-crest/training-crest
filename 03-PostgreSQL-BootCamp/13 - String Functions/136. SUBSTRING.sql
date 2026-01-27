-- 136. SUBSTRING

select substring('Whatt a wonderful World' from 1 for 4);
select substring('Whatt a wonderful World' from 5 for 10);

select 
	first_name,last_name,
	substring (first_name,1,1) as initial
from directors
order by last_name;