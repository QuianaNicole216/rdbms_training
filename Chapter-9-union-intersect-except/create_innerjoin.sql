/* INNER JOIN */
--------------------------------
-- List of customers, list of orders --> connection is customer_id
-- Get the list of orders with the customer information.
SELECT o.order_id, o.order_status, c.customer_id, c.customer_city
FROM ecommerce_schema.customers as c
INNER JOIN ecommerce_schema.orders as o ON c.customer_id = o.customer_id;
---------------------------------