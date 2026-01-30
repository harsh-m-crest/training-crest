-- 293. An updatable view with CRUD operations

-- Create an updatable view for directors table

create or replace view vu_directors as
select first_name,last_name
from directors;

-- Add some records via a view and not from underlying table

insert into vu_directors (first_name) values ('dir1'),('dir2');

-- Ckeck the contents of directors table via view

select * from vu_directors;

-- Delete somr records via  a view and not from underlying table

delete from vu_directors where first_name = 'dir1';