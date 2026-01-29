-- 236. Update and Delete JSON Data

--10. Update author10 to Adnan

update books
set book_info = book_info || '{"author":"Adnan"}'
where book_info ->> 'author' = 'author10';

update books
set book_info = book_info || '{"title":"The future 1.0"}'
where book_info ->> 'author' = 'Adnan';

--11. Add additional field with boolean value

update books
set book_info = book_info || '{"best_seller":"true"}'
where book_info ->> 'author' = 'Adnan';

select * from books;

--12. Add Multiple key values

update books
set book_info = book_info || '{"category":"Science","pages":250}'
where book_info ->> 'author' = 'Adnan';

--13. Delete best seller

update books
set book_info = book_info - 'best_seller'
where book_info ->> 'author' = 'Adnan'
returning *;

--14. Add nested array data in json

update books
set book_info = book_info || '{"availability_location":["New York","New Jersey"]}'
where book_info ->> 'author' = 'Adnan'
returning *;

--15. Delete from array via path #-

update books
set book_info = book_info #- '{availability_location,1}'
where book_info ->> 'author' = 'Adnan'
returning *;
