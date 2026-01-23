-- 105. DEFAULT constraint

-- create sample table

create table employees(
	employee_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	is_enable varchar(2) default 'Y'
);

-- Insert data into table 

insert into employees (first_name,last_name) values ('John','Adam')
insert into employees (first_name,last_name,is_enable) values ('Adam','John','N')

-- View table

select * from employees