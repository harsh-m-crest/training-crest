-- 198. Combine results sets with UNION

-- Lets use UNION on left_products and right_products table
SELECT
	product_id, product_name
FROM left_products
UNION 
SELECT
	product_id, product_name
FROM right_products

-- D