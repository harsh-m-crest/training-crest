--249. Create an index

-- Create an index on order_date on orders table
CREATE INDEX id_orders_order_date ON orders (order_date);

CREATE INDEX idx_orders_ship_city ON orders (ship_city);

-- Create an index on multiple fields say orders -> customer_id,order_id

CREATE INDEX idx_orders_customer_id_order_id ON orders (customer_id, order_id)