/* Filtering Conditions (WHERE) - Part 2 */
/* AND Operator */
--------------------------------------------------
SELECT column1, column2
FROM table_name
WHERE 
	conditions1 AND conditions2 AND conditions3;
--------------------------------------------------
SELECT title, title_type, release_year, imdb_score
FROM netflix.titles
WHERE
	title_type = 'MOVIE' AND
	release_year >= 2000 AND
	imdb_score >= 8.0;
-------------------------------------------------
/* OR Operator */
------------------------------------------------
/*
SELECT column1, column2 
FROM table1
WHERE condition1 OR condition2 OR condition3;
*/

SELECT title, title_type, runtime, release_year
FROM netflix.titles
WHERE
	runtime <= 30 OR release_year > 1980;
-------------------------------------------------
/* Order of Operations */
-----------------------------------------------
SELECT title, title_type, runtime, release_year
FROM netflix.titles
WHERE
	title_type = 'SHOW' AND (runtime > 100 OR release_year = 2000);
