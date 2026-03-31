SELECT AVG(product_weight_g)
FROM ecommerce_schema.products;
---------------------------------------------
SELECT product_id, product_weight_g
FROM ecommerce_schema.products
WHERE product_weight_g > 2276;
----------------------------------------------
SELECT product_id, product_weight_g
FROM ecommerce_schema.products
WHERE product_weight_g >
	(
		SELECT AVG(product_weight_g)
		FROM ecommerce_schema.products
	);
---------------------------------------------
