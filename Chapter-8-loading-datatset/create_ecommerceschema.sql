CREATE SCHEMA ecommerce_schema;

CREATE TABLE ecommerce_schema.customers
(
	customer_id VARCHAR(32) PRIMARY KEY,
	customer_name VARCHAR(20),
	customer_zip_code_prefix INTEGER,
	customer_city VARCHAR(50),
	customer_state VARCHAR(20)
);

COPY ecommerce_schema.customers (customer_id, customer_name, customer_zip_code_prefix, customer_city, customer_state)
FROM 'C:\\data\\ecommerce\\customer.csv'
DELIMITER ','
CSV HEADER;
