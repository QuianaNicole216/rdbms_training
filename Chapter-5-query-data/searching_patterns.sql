/* Searching Patterns (Wildcards and LIKE)
-------------------------------------------
Wildcards:
 underscore(_) - One character
 Percent (%) - Any number of characters
 */
 -------------------------------------------
SELECT title, title_type
FROM netflix.titles
WHERE
	title LIKE 'The%';
--------------------------------------------
/*
SELECT title, title_type
FROM netflix.titles
WHERE
	title LIKE '_a%ver';
---------------------------------------------
SELECT title, title_type
FROM netflix.titles;
*/
	