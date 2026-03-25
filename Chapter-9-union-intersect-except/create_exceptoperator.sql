/* EXCEPT Operator */
------------------------
SELECT distinct customer_city
FROM ecommerce_schema.customers
WHERE customer_state = 'CE'
EXCEPT
SELECT distinct supplier_city
FROM ecommerce_schema.suppliers
WHERE supplier_state = 'CE';
---------------------------
