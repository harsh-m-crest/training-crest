-- 290. Add a column in a view

-- Can i add a column to an existing view?
 
create or replace view v_directors as
select first_name,last_name,nationality
from directors;