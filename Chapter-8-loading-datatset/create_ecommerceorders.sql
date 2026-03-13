
COPY ecommerce_schema.suppliers (supplier_id, supplier_zip_code_prefix, supplier_city, supplier_state)
FROM 'c:\\data\\ecommerce\\suppliers.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE ecommerce_schema.orders
(
	order_id varchar(32) PRIMARY KEY,
	customer_id varchar(32) REFERENCES ecommerce_schema.customers(customer_id),
	order_status varchar(20),
	order_purchase_timestamp timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp	
);