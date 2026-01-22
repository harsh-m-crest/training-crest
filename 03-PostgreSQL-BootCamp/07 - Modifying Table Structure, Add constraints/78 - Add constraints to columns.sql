-- 78. Add constraints to columns

-- Add a UNIQUE CONSTRAINTS to a Column
CREATE TABLE web_links (
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_target VARCHAR(20)
);

SELECT * FROM web_links;

INSERT INTO web_links(link_url,link_target) values ('https://www.google.com','_blank')

INSERT INTO web_links(link_url,link_target) values ('https://www.amazon.com','_blank')

ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE(link_url);

-- To set a column to accept only defined allowed/ accepted

ALTER TABLE web_links
ADD COLUMN is_enable VARCHAR(2);

INSERT INTO web_links(link_url,link_target,is_enable) values ('https://www.cspl.com','_blank','Q')


ALTER TABLE web_links
ADD CHECK (is_enable IN ('Y','N'))


UPDATE web_links
SET is_enable = 'Y'
WHERE link_id = 1