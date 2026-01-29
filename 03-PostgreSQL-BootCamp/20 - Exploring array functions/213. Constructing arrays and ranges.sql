-- Using Array Function
-- ####################

select 
	int4range(1,6),
	numrange(1.4213,6.2986,'[]'),
	daterange('20100101','20201220','()'),
	tsrange(localtimestamp,localtimestamp + interval '8 days','(]');



	