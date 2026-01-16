/* Check Constraint */
CREATE TABLE netflix.titles2
(
	release_year integer CHECK (release_year>2010)
	);
)