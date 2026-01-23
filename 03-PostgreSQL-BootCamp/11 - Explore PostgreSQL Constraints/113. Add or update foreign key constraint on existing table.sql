-- 113. Add or update foreign key constraint on existing table

alter table t_products
add constraint t_products_supplier_id_fkey foreign key (supplier_id) references t_suppliers (supplier_id)