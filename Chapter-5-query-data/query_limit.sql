/* Query Data (SELECT)
WHAT data we want and from WHERE to take it */

SELECT * 
FROM netflix.titles
----------------------------------------------------
/*
SELECT title_id, title, title_type, description, release_year
FROM netflix.titles;
-------------------------------------------------------
SELECT product_num, price * 1.05
FROM product;
*/

SELECT product_num, ROUND(price * 1.05, 2)
FROM product
-------------------------------------------
/* After the FROM section - Types of tables

	> Regular stored table
	> A virtual table
	> Derived table from another SQL query
	> Temporary table
*/	
--------------------------------------------------
/* Identifiers - require columns and tables */
SELECT required_columns
FROM required_tables
/* A quoted identifier */
SELECT 'PRODUCT NUMBER'
---------------------------------------------
/* LIMIT */
SELECT required_columns
FROM required_tables
LIMIT number_of_records

SELECT * 
FROM netflix.titles;
LIMIT 10

*/


