/* Common Table Expressions (CTEs) */
-------------------------------------
-- CTE is temporary named result set that we can reference within a SELECT statement
-- starts with the keyword "WITH" followed by the CTE Expression Name to which we can refer later in a query
--------------------------------------
-- Define the CTE query.
WITH avg_books_ratings_CTE
AS
(
	SELECT isbn, avg(book_rating) as avg_rating
	FROM books_schema.ratings
	GROUP BY isbn
)

-- Define the outer query referencing the CTE name.
SELECT max(avg_rating) as max_avg_rating
FROM avg_books_ratings_CTE;
--------------------------------------
-- Define the CTE query.
WITH cities_users_CTE
AS
(
	SELECT city, user_id, age, ROW_NUMBER() OVER (PARTITION BY city ORDER BY age DESC) as row_num
	FROM books_schema.users
)
-- Define the outer query referencing the CTE name
SELECT *
FROM cities_users_CTE
WHERE row_num <= 5
ORDER BY city;
---------------------------------
	
)
