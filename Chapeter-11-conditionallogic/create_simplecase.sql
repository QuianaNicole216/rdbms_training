/* Simple CASE statement */
-----------------------------
-- Syntax:
-- CASE input_expression
--	WHEN when_expression THEN result_expression[ ...n ]
--	[ELSE else_result_expression]
--	END	
-------------------------------
/* Typical use case - Data Transformation */
SELECT user_id, age, country,
	CASE gender
		WHEN 'M' THEN 'MALE'
		ELSE 'Female'
	END AS gender
FROM books_schema.users;
--------------------------------
/* Processing steps
---------------------------------
> For every row the SELECT statement receives, the CASE statement goes through conditions from top to bottom
