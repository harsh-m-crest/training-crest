-- 131. TRIM, BTRIM, LTRIM and RTRIM

select 
	trim(leading from '  amazing postgresql'),
	trim(trailing from 'amazing postgresql  '),
	trim('  amazing postgresql  ');

-- Remove leading 0

select trim(leading '0' from cast (00001234 as text));

-- LTRIM, RTRIM, BTRIM

select ltrim('yummy','y');
select rtrim('yummy','y');
select btrim('yummy','y');
