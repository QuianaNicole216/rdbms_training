/* Grouping Rows (GROUP BY and HAVING) */
--------------------------------------------
/* Generic Syntax */
SELECT column_s
FROM table_s
WHERE condition_s
GROUP BY column_s
ORDER BY column_s;
---------------------------------------------
/* Single-Column Grouping */
---------------------------------------------
SELECT title_type, AVG(imdb_score) AS avg_score
FROM netflix.titles
WHERE release_year >= 2000
GROUP BY title_type;
----------------------------------------------
SELECT * 
FROM netflix.credits;
----------------------------------------------
SELECT title_id, COUNT(DISTINCT person_id) AS unique_actors
FROM netflix.credits
WHERE role = 'ACTOR'
GROUP BY title_id
ORDER BY unique_actors DESC;
