-- 219. Array modification functions
-- #################################

-- Array CAT
 
select array_cat(array[1,2,3], array[4]);

-- Array Append
 
select array_prepend(4, array[1,2,3]);
 
-- Array remove
 
select array_remove(array[1,2,3,4], 4);
 
-- Array replace
 
select array_replace(array[1,2,3,4],2,16);
  