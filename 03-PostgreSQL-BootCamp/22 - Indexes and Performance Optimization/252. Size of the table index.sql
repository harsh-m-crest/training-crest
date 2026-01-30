-- 252. Size of the table index

-- Create an index on supplier -> region

SELECT
	pg_indexes_size('orders');

SELECT
	pg_size_pretty(pg_indexes_size('orders'));

SELECT COUNT(*) from orders;

SELECT
	pg_size_pretty(pg_indexes_size('suppliers'));

-- Create an index on supplier -> region
CREATE INDEX idx_suppliers_region ON suppliers(region)

CREATE UNIQUE INDEX idx_u_suppliers_supplier_id ON suppliers (supplier_id)
	
