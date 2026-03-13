CREATE TABLE ecommerce_schema.orders_reviews
(
	review_id integer PRIMARY KEY,
	order_id varchar(32) REFERENCES ecommerce_schema.orders(order_id),
	review_score smallint,
	review_creation_date timestamp
)