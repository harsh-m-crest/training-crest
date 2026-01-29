-- 218. Array search functions

select 
	array_position(array['Jan','Feb','March','April','May'],'Feb'),
	array_position(array[1,2,3,4,5,6],3);
