------------------------------------------
CREATE TABLE books_schema.ratings
(
	rating_id integer PRIMARY KEY,
	user_id integer,
	isbn varchar(15),
	book_rating smallint
)
-----------------------------------
/*
COPY books_schema.ratings (rating_id, user_id, isbn, book_rating)
FROM 'c:\data\books\ratings.csv'
DELIMITER ','
CSV HEADER;
---------------------------------------
*/