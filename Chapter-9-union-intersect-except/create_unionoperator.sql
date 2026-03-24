/* UNION Operator */
----------------------------------
SELECT customer_state, count(distinct customer_city) as amount_cities
FROM ecommerce_schema.customers
GROUP by customer_state
ORDER BY 2;
-----------------------------------