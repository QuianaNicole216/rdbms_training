/* Order Implicitly */
INSERT INTO products VALUES (1,'Tomtato', 6.5);
------------------------------------------------
/* Explicitly list the column */
INSERT INTO products (product_no, p_name, price) VALUES (1, 'Tomtato',6.5);
------------------------------------------------
/* Multiple Rows */
INSERT INTO products (product_no, p_name, priced) VALUES
	(1, 'Tomtato', 2.5),
	(2, 'Onion', 1.5),
	(3, 'Cucumber', 2);
	-----------------------------------------------
/* Using a sub-query */
INSERT INTO tables2
	SELECT * FROM table1
	WHERE conditions;
	-------------------------------------------------
	INSERT INTO products VALUES (1, 'TAOMTATO', NULL);
	