-- 215. Using inclusion operators

-- Inclusion Operators
-- @> , <@ , &&

select
	array[1,2,3,4] @> array[2,3,4] as "Contains",
	array['a','b'] <@ array['a','b'] as "Contaned by",
	array[1,2,3,4] && array[2,3,4] as "Is overlap";

