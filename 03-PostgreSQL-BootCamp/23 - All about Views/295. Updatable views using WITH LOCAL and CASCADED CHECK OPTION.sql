-- 295. Updatable views using WITH LOCAL and CASCADED CHECK OPTION

-- Using local and cascaded in with check option
 
create or replace view v_cities_c as
select country_id,country_code,city_name
from countries
where city_name like 'c%';
 
select * from v_cities_c;
 
create or replace view v_cities_c_us as
select country_id,country_code,city_name
from countries
where city_name like 'c%' and country_code = 'us'
with local check option;

insert into v_cities_c_us (country_code, city_name) values('us', 'connecticut');

select * from v_cities_c_us;

insert into v_cities_c_us (country_code, city_name)values ('us', 'los anglese');

select * from v_cities_c_us;
 
select * from countries;