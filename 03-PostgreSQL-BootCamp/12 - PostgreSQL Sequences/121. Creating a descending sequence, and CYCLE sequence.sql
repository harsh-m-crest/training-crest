-- 121. Creating a descending sequence, and CYCLE sequence

CREATE SEQUENCE seq_asc 

SELECT nextval('seq_asc')

CREATE SEQUENCE seq_des
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;

SELECT nextval('seq_des')

CREATE SEQUENCE seq_des1
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
NO CYCLE;

SELECT nextval('seq_des1')