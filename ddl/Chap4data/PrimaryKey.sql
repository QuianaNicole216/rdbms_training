/* Primary Key Constraint */
CREATE TABLE netflix.titles9
(
	title_id varchar(10) PRIMARY KEY,
	title varchar(200),
	title_tupe varchar(5),
	description varchar(2000),
	release_year integer,
	age_certification varchar(10),
	runtime smallint,
	genres varchar(30) ARRAY[10],
	production_countries varchar(10) ARRAY[10],
	seasons smallint, 
	imdb_score decimal(2,1),
	imdb_votes integer
);
