-- 123. Attach a sequence to a table column

-- Attach sequence to an existing table
CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50)
)

INSERT INTO users(user_name) VALUES ('ADNAN')

SELECT * FROM users;

ALTER SEQUENCE users_user_id_seq RESTART WITH 100

CREATE TABLE user2
(
	user2_id INT PRIMARY KEY,
	user2_name VARCHAR(50)
);

CREATE SEQUENCE user2_user2_id_seq
START WITH 100 OWNED BY user2.user2_id

ALTER TABLE user2
ALTER COLUMN user2_id SET DEFAULT nextval('user2_user2_id_seq')

INSERT INTO user2 (user2_name) VALUES ('ADAM2')

SELECT * FROM user2




