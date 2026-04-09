/* Window Function - Sequential Numbers */
------------------------------------------
-- A sequential integer number for every row inside group of rows while we decide how this group will be ordered.
-- HOW_NUMBER() window function
------------------------------------------
SELECT city, user_id, age, ROW_NUMBER() OVER (PARTITION BY city ORDER BY age DESC) as row_num
FROM books_schema.users
WHERE city IS NOT NULL
------------------------------------------
The oldest user per each city, meaning the first user per each city.
SELECT * 
FROM (
		SELECT city, user_id, age, ROW_NUMBER() OVER (PARTION BY city ORDER BY age DESC) as row_num
		FROM books_schema.users
	) as t
WHERE row_num = 1;
-------------------------------------------
SELECT
FROM (
		SELECT city, user_id, age, ROW_NUMBER() OVER (PARTITION BY city ORDER BY age DESC) as row_num
		FROM books_schema.users
	) as t
WHERE ROW_UM <= 5
ORDER BY city;
------------------------------------------