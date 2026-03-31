/* INNER JOIN */
--------------------------------
-- List of customers, list of orders --> connection is customer_id
-- Get the list of orders with the customer information.
SELECT o.order_id, o.order_status, c.customer_id, c.customer_city
FROM ecommerce_schema.customers as c
INNER JOIN ecommerce_schema.orders as o ON c.customer_id = o.customer_id;
---------------------------------

-- Get the list of items per each order (using the order_id)
SELECT o.order_id, o.customer_id, o.order_status, oi.order_item_id, oi.price
FROM ecommerce_schema.orders as o
INNER JOIN ecommerce_schema.order_items as oi ON o.order_id = oi.order_id
ORDER BY o.order_id;
---------------------------------
-- Adding the name of the customer to the previous query
-- Two inner joins
SELECT o.order_id, o.customer_id, c.customer_name, o.order_status,  oi.order_item_id, oi.price
FROM ecommerce_schema.customers as c
INNER JOIN ecommerce_schema.orders as o ON c.customer_id = o.customer_id
INNER JOIN ecommerce_schema.order_items as oi ON o.order_id = oi.order_id
ORDER BY o.order_id
-----------------------------------