/* Window Function - Ranking */
----------------------------------
-- RANK() window function
-----------------------------------
SELECT *
FROM (
	SELECT city, 
	user_id,
	age,
	RANK() OVER (
					PARTITION BY city
					ORDER BY age DESC
				) as rank_num
	FROM books_schema.users
	) as t
ORDER by city;
-------------------------------------
