CREATE TABLE netflix.credits
(
	person_id integer,
	title_id varchar(10) REFERENCES netflix.titles(title_id),
	name varchar(300),
	role varchar(10)
);