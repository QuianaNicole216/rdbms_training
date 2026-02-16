/* COPY (PostgreSQL) */

COPY netflix.titles (title_id, title_type, description, release_year,
					age_certification, runtime, genres, production_countries, seasons, imdb_score)
FROM 'c:\data\netflix\titles.csv'
DELIMITER','
CSV HEADER;
---------------------------------------------------------
/*
COPY netflix.credits (person_id, title_id, name, character, role)
FROM 'c:\data\netflix\credits.csv'
DELIMITER','
CSV HEADER;
*/