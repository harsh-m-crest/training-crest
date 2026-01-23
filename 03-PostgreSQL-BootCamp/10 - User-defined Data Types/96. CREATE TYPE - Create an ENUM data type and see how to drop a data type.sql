-- 96. CREATE TYPE - Create an ENUM data type and see how to drop a data type

-- Currency ENUM Data type with currency data

CREATE TYPE currency AS ENUM ('USD','EUR','GBP');

SELECT 'USD'::currency;

ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR'

CREATE TABLE stocks
(
	stock_id SERIAL PRIMARY KEY,
	stock_currency currency
)

INSERT INTO stocks (stock_currency) VALUES ('USD')

INSERT INTO stocks (stock_currency) VALUES ('CHF')

SELECT * FROM stocks

CREATE TYPE sample_type AS ENUM ('ABC','123')

