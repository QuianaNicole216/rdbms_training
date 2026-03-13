CREATE TABLE ecommerce_schema.order_payments
(
	order_id varchar(32),
	payment_sequential smallint,
	payment_type varchar(20),
	payment_installments smallint,
	payment_value float,
	PRIMARY KEY (order_id, payment_sequential)
)	
