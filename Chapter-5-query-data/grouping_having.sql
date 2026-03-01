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
-----------------------------------------------
/* Combine data from another table */
-----------------------------------------------
SELECT c1.title_id, t1.title, COUNT(DISTINCT c1.person_id) AS unique_actors
FROM netflix.credits AS c1, netflix.titles AS t1
WHERE
	role = 'ACTOR' AND c1.title_id = t1.title_id
GROUP BY c1.title_id, t1.title
ORDER BY unique_actors DESC;
-----------------------------------------------
/*
SELECT name, count (title_id) AS num_part_of_a_cast
FROM netflix.credits
WHERE
	role = 'ACTOR'
GROUP BY name	
ORDER BY num_part_of_a_cast DESC;
*/
--------------------------------------------------
/* Multicolumn GROUPING */
--------------------------------------------------
SELECT title_type, MAX(imdb_score) AS max_imdb_score
FROM netflix.titles
GROUP BY title_type
ORDER BY title_type;
----------------------------------------------------
SELECT title_type, release_year, MAX(imdb_score) AS max_imdb_score
FROM netflix.titles
GROUP BY title_type, release_year
HAVING MAX(imdb_score) IS NOT NULL
ORDER BY title_type, release_year;
-----------------------------------------------------
/* HAVING
	WHERE - filtering rows on the source tables
	HAVING - filtering group-level aggregated rows created by the group by
	*/
---------------------------------------------------
SELECT title_type, release_year, MAX(imdb_score) AS max_imdb_score	
FROM netflix.titles
GROUP BY title_type, release_year
HAVING MAX(imdb_score) IS NOT NULL
ORDER BY title_type, release_year;
--------------------------------------------------
/* Order of Execution */
--------------------------------------------------
FROM >> WHERE >> GROUPED BY >> HAVING >> SELECT >> ORDER BY 
--------------------------------------------------
