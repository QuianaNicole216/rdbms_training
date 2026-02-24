/* filtering Conditions (WHERE) - Part 1
THINK about optimized filters when building queries
*/
--------------------------------------------------
/* Generic Syntax */
--SELECT column1, column2
--FROM table1
--WHERE conditions
--------------------------------------------------
/* Filtering on a single condition */
SELECT title, title_type
FROM netflix.titles
WHERE
--	title_type = 'MOVIE';
-------------------------------------------------
/* Checking for Non-Matches */
SELECT title, title_type
FROM netflix.titles
WHERE
	release_year BETWEEN 1980 AND 1990
/*
-------------------------------------------------
/* Randge of Values- BETWEEN */
--SELECT title, title_type, release_year
--FROM netflix.titles
--WHERE
------------------------------------------
/* Filtering NULL Values */
SELECT title, title_type, release_year, seasons
FROM netflix.titles

SELECT title, title_type, release_year, seasons
FROM netflix.titles
WHERE
	seasons IS NOT NULL
---------------------------------------------
*/