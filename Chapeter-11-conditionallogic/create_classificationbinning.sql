/* Searched CASE statement */
--------------------------------
-- Syntax:
-- CASE
-- 		WHEN condition1 THEN result1
--		WHEN condition2 THEN result2
--		WHEN conditionN THEN resultN
--		ELSE result
-- END;
------------------------------------
/* Typical use case - Data Classification */
-------------------------------------
-- classify each user into typical age groups like children, yourth, adults, and seniors.
SELECT user_id, country,
	CASE
		WHEN age<=14 THEN 'children'
		WHEN age>=15 AND age<=64 THEN 'youth'
		WHEN age>=25 AND age<=64 THEN 'ADULTS'
		ELSE 'seniors'
	END as age_category
FROM books_schema.users;
/*
--------------------------------
/* Typical use case- Data Binning */
--------------------------------
-- divide the products by their weight using the following binning groups: "quite heavy", "heavy", and "light".
SELECT product_id, product_category_name,
	CASE
		WHEN product_weight_g<=100 THEN 'light'
		WHEN product_weight_g >=100 AND product_weight_g <=500 THEN 'heavy'
		ELSE 'quite heavy'
	END as weight_category
FROM ecommerce_schema.products;
--------------------------------
-- summarize the number of products per each group
SELECT
	CASE
		WHEN product_weight_g<=100 THEN 'light'
		WHEN product_weight_g >=100 AND product_weight_g <=500 THEN 'heavy'
		ELSE 'quite heavy'
			END as weight category,
		count(*) as amount
FROM ecommerce_schema.products
GROUP BY 1;
----------------------------