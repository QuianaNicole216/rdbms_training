/* Sub-quiries: As Inline Views (FROM)
	Simplify complex queries
---------------------------------------------
Syntax;
-- SELECT column_list
-- FROM (inline view/sub-query) as alias_name
*/
--------------------------------------------
-- The maximum average book rating.
--------------------------------------------
-- Calculate the average rating per each book
SELECT isbn, avg(book_rating) as avg_rating
FROM books_schema.ratings
GROUP BY isbn;
----------------------------------------------
/*
SELECT max(avg_rating) as max_avg_rating
FROM
	(
		SELECT isbn, avg(book_rating) as avg_rating
		FROM books_schema.ratings
		GROUP BY isbn
	)	as avg_books_ratings;
--------------------------------------
*/
	)