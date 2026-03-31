/* LEFT OUTER JOIN */
---------------------------
-- Get the list of all customers living in a city called 'Franca' with their orders
-- Any customers whether they performed an order or NOT
SELECT c.customer_id, c.customer_name, o.order_id
FROM ecommerce_schema.customers as c
LEFT JOIN ecommerce_schema.orders o ON c.customer_id = o.customer_id
WHERE customer_city = 'franca'
ORDER BY 3 DESC;
-----------------------------
-- Compare to INNER JOIN
SELECT c.customer_id, c.customer_name, o.order_id
FROM ecommerce_schema.customers as c
INNER JOIN ecommerce_schema.orders o ON c.customer_id = o.customer_id
WHERE customer_city = 'franca'
ORDER BY 3 DESC;
-------------------------------