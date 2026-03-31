SELECT DISTINCT isbn
FROM books_schema.ratings
GROUP BY isbn
HAVING avg(book_rating) = 9.5;
------------------------------------
/*
SELECT isbn, book_title, year_of_publication
FROM books_schema.books2
WHERE year_of_publication > 2000
	AND isbn IN
-----------------------------------------	
SELECT DISTINCT isbn
FROM books_schema.ratings
GROUP BY isbn
HAVING avg(book_rating) = 9.5);