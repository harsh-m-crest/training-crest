-- 116. CHECK constraint - Add, Rename, Drop on existing table

-- create sample table

create table prices(
	price_id serial primary key,
	product_id int not null,
	price numeric not null,
	discount numeric not null,
	valid_from date not null
)

alter table prices
add constraint 	price_check
check (
	price >0 
	and discount >=0 
	and price > discount
)

-- Insert data into table 

insert into prices 
(product_id,price,discount,valid_from) 
values ('2',100,20,'2020-10-01')

-- View table

select * from prices

-- Rename Constraint 

alter table prices
rename constraint 
price_check to price_discount_check

