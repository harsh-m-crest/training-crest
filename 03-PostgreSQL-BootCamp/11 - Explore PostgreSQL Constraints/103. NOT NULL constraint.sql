-- 103. NOT NULL constraint

--1. create sample table

create table table_nn(
	id serial primary key,
	tag text not null
);

--2. Insert data into table 

insert into table_nn (tag) values ('Adam')
insert into table_nn (tag) values ('')
insert into table_nn (tag) values ('0')

--3. View table

select * from table_nn

--4. create sample table

create table table_nn2(
	id serial primary key,
	tag2 text not null
);

alter table table_nn2
alter column tag2 set not null

--5. Insert data into table 

insert into table_nn2 (tag2) values ('Adam')
insert into table_nn2 (tag2) values (null)
insert into table_nn2 (tag2) values ('')
