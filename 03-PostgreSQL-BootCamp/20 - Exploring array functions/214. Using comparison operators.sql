-- 214. Using comparison operators

select
	array[1,2,3,4] = array[1,2,3,4] as "Equality",
	array[1,2,3,4] = array[2,3,4] as "Equality",
	array[1,2,3,4] <> array[1,2,3,4] as "Not Equality to",
	array[1,2,3,4] < array[2,3,4,5] as "Less than",
	array[1,2,3,4] <= array[2,3,4,5] as "Less than and equal to",
	array[1,2,3,4] > array[2,3,4,5] as "Greater than",
	array[1,2,3,4] >= array[2,3,4,5] as "Greater than and equal to";

-- Shorter array considered to be less than a longer array!!
 
select
	int4range(1,4) @> int4range(2,3) as "Contains",
	daterange(current_date, current_date + 30) @> current_date + 15 as "Contains value",
	numrange(1.6, 5.2) && numrange(0, 4)