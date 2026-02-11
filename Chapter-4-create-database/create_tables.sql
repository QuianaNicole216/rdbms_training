CREATE TABLE netflix.titles
(
	title_id varchar(10),
	title varchar(200),
	title_type varchar(5),
	description varchar(2000),
	release_year integer,
	age_certification varchar(10),
	runtime smallint,
	genres varchar(30) ARRAY[10],
	production_countries varchar(5) ARRAY[10],
	seasons smallint,
	imdb_score decimal(2,1),
	imdb_vote integer
	);
