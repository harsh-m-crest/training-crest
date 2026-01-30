-- 250. Create unique indexes

-- Create a unique index on products table on product_id
CREATE UNIQUE INDEX idx_u_products_product_id ON products(product_id);

-- Create a unique index on employees table on employee_id
CREATE UNIQUE INDEX idx_u_employees_employee_id ON employees (employee_id);

-- Unqiue on multiple columns
-- orders > order_id, customer_id
CREATE UNIQUE INDEX idx_u_orders_order_id_customer_id ON orders (order_id,customer_id)

-- employees --> employee_id, hire_date
CREATE UNIQUE INDEX idx_u_employees_employee_id_hire_date ON employees(employee_id,hire_date)