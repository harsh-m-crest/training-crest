-- 115. CHECK constraint - Add to new table

-- create sample table

create table staff(
	staff_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	birth_date date check (birth_date > '1990-01-01'),
	joined_date date check (joined_date > birth_date),
	salary numeric check (salary>0)
)

--Insert data into table 

insert into staff 
(first_name,last_name,birth_date,joined_date,salary) 
values ('Adam','king','1990-01-02','2002-01-01',100)

insert into staff 
(first_name,last_name,birth_date,joined_date,salary) 
values ('John','Adams','2020-01-01','2020-01-02',100)

-- View table

select * from staff

update staff
set salary = 1000
where staff_id = 2 