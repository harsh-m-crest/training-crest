-- 133. LENGTH

select length('amazing postgresql');
select length(cast(100122 as text));

select char_length(' ');
select char_length(null);

select 
	first_name ||' '||last_name as full_name,
	length (first_name ||' '||last_name) as full_name_length
from directors
order by 2 desc;