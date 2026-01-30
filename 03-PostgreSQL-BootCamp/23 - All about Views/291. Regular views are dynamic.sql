-- 291. Regular views are dynamic

-- A regular view;

select * from v_directors;
insert into directors (first_name) values ('test name1');
 
select * from directors;
delete from directors where director_id = 39;
