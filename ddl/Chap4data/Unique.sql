/* Unique Constraint */
CREATE TABLE netflix.titles4
(
	title_id varchar(10) UNIQUE
);

CREATE TABLE mytable1 (
	a integer,
	b integer,
	c integer,
	UNIQUE (a,c)
);