---------------------------------
CREATE TABLE books_schema.books1
(
	isbn varchar(15) PRIMARY KEY,
	book_title varchar(300),
	book_author varchar(300),
	year_of_publication integer,
	publisher varchar(300)
)
--------------------------------------
/*
COPY books_schema.books1 (isbn, book_title, book_author, year_of_publication, publisher)
FROM 'c:\data\books\books1.csv'
DELIMITER ','
CSV HEADER;
------------------------------------------
*/

