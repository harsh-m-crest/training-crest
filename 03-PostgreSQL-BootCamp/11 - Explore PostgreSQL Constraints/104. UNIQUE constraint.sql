-- 04. UNIQUE constraint

-- create sample table

create table table_emails(
	id serial primary key,
	email text unique
);

-- Insert data into table 

insert into table_emails (email) values ('a@b.com')

-- View table

select * from table_emails

-- create sample table

create table table_products(
	id serial primary key,
	product_code varchar(10),
	product_name text
);

alter table table_products
add constraint unique_product_code UNIQUE (product_code,product_name)

--10. Insert data into table 

insert into table_products (product_code,product_name) values ('apple','A')

--11. View table

select * from table_products