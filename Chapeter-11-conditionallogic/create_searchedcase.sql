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
