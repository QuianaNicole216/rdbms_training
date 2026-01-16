/* Check Constraint */
CREATE TABLE netflix.titles7a
(
	release_year integer CHECK (release_year>2010)
	);
------------------------------------------------------------------
/* Unique Constraints */
CREATE TABLE netflix.titles8a
(
title_id varchar (10) UNIQUE
);

CREATE TABLE mytable (
	a integer,
	b integer,
	c integer,
	UNIQUE (a, c)
);
-----------------------------------------

