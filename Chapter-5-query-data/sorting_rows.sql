/* Sorting Rows (ORDER BY)
NOTE - we should not assume records are stored sorted
*/
------------------------------------------------------
/* Generic Syntax */
SELECT column1, column2
FROM table1
ORDER BY column1 ASC, column2 DESC;
------------------------------------------------------
/*
SELECT title, release_year
FROM netflix.titles
ORDER BY release_year
*/
-------------------------------------------------------
/* Sort with multiple columns */
SELECT title, release_year, runtime
FROM netflix.titles
ORDER BY release_year, runtime;
--------------------------------------------------------
/* Using column position */
