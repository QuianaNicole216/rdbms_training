SELECT MAX(product_price)
FROM ecommerce_schema.products;
-- add the outer  query

SELECT product_id, product_category_name, product_price
FROM ecommerce_schema.products
WHERE product_price =
	(
		SELECT MAX(product_price)
		FROM ecommerce_schema.products
	);
-----------------------------------------