-- 111. Foreign keys maintains referential data integrity

INSERT INTO t_suppliers(supplier_id, supplier_name) VALUES
(1,'Supplier1'),
(2,'Supplier1')

insert into t_products (product_id,product_name,supplier_id) values 
(1,'Pen',1),
(2,'Paper',2),(3,'Computer',3)

select * from t_suppliers

select * from t_products