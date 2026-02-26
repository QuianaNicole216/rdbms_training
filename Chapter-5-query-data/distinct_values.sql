/* Distinct Values (DISTINCT)
	1. Check the unique values on each column to better undertand the dataset
	2. Count distinct values
*/
---------------------------------------------------------
/* Generic Syntax */
SELECT DISTINCT column1, column2
FROM table1;
----------------------------------------------------------
SELECT DISTINCT age_certification
FROM netflix.titles;
----------------------------------------------------------
/* Filter out NULL values */
SELECT DISTINCT age_certification
FROM netflix.titles
WHERE age_certification IS NOT NULL;
----------------------------------------------------------
SELECT DISTINCT title_type
FROM netflix.titles;
-----------------------------------------------------------
/* DISTINCT - Multiple Columns */
SELECT DISTINCT age_certification, title_type
FROM netflix.titles
WHERE age_certification IS NOT NULL;
------------------------------------------------------------
/* Count distinct values */
SELECT COUNT(DISTINCT age_certification) AS unique_agecerti
FROM netflix.titles
WHERE age_certification IS NOT NULL;
-------------------------------------------------------------
/* End of section */
