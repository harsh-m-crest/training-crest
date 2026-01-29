-- 217. Array metadata functions
-- #############################

-- # af dimensions in array

select array_ndims(array[[1],[2]]) as "Dimensions";
select array_ndims(array[[1,2,3],[4,5,6]]);

-- Return a text expression of array's dimensions

select array_dims(array[[1],[2]])

-- Return a array length

select array_length(array[1,2,3,4,5,6],1);
select array_length(array[]::integer[],1);

-- Return lower bound of array 

select array_lower(array[1,2],1);
select array_lower(array[1,2,3,4,5,6],1);

-- Return upper bound of array 

select array_upper(array[1,2],1);
select array_upper(array[1,2,3,4,5,6],1);

-- Return the cardinality of the array dimentions

select 
	cardinality(array[[1],[2],[3],[4]]),
	cardinality(array[[1],[2],[3],[4],[5]]);