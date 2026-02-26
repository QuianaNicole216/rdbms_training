/* Alias for Columns */
--------------------------------
SELECT title, title_type, runtime AS movie-length, (release_year + 1) updated_year
--SELECT title, title_tupe, runtime movie_length, (release_year +1) updated_year
FROM netflix.titles
---------------------------------
/* Alias for Tables */
--SELECT t1.title, title_type, runtime
--FROM netflix.titles AS t1, netflix.credits AS t2