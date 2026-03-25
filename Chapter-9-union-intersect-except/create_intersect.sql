/* UNION Operator */
----------------------------------
SELECT customer_state, count(distinct customer_city) as amount_cities
FROM ecommerce_schema.customers
GROUP by customer_state
ORDER BY 2;
-----------------------------------

SELECT distinct customer_city
FROM ecommerce_schema.customers
WHERE customer_state = 'CE';

-------------------------------------

SELECT distinct supplier_city
FROM ecommerce_schema.suppliers
WHERE supplier_state = 'CE';

--------------------------------------
SELECT distinct customer_city
FROM ecommerce_schema.customers
WHERE customer_state = 'CE'
UNION
SELECT distinct supplier_city
FROM ecommerce_schema.suppliers
WHERE supplier_state = 'CE';
----------------------------------------
