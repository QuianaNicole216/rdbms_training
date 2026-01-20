/* Check Constraint */
CREATE TABLE netflix.titles3
(
	release_year integer CHECK (release_year>2010)
);
