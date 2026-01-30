-- 294. Updatable views using WITH CHECK OPTION

-- Create a table for countries

create table countries(
	country_id serial primary key,
	country_code varchar(4),
	city_name varchar(100)
);

-- Insert sample data into table

insert into countries (country_code,city_name) values 
('US','New York'),
('US','New Jersey'),
('UK','London');

select * from countries;

-- Create a sample view called v_cities_us to list all us based cities

create or replace view v_cities_us as
select country_id,country_code,city_name
from countries
where country_code = 'US';

-- View the content of v_cities_us

select * from v_cities_us;

-- Inseret US based data

insert into v_cities_us (country_code,city_name) values 
('US','California');

-- Update view v_cities_us using with check option

create or replace view v_cities_us as
select country_id,country_code,city_name
from countries
where country_code = 'US'
with check option;

insert into v_cities_us (country_code,city_name) values 
('UK','Leeds');

-- Lets try the update operations on view having with check option, can we add the data
 
select * from v_cities_us;
 
update v_cities_us
set country_code = 'uk'
where city_name = 'new york';
 
insert into v_cities_us (country_code, city_name) values ('us', 'chicago');

update v_cities_us
set country_code = 'uk';
