/* Querying the Database Dictionary */
--------------------------------------------
SELECT table_schema, table_name, table_type
FROM information_schema.tables
WHERE table_schema = 'netflix'
ORDER BY 1
---------------------------------------------
/* 
SELECT *
FROM information_schema,columns
WHERE table_schema = 'netflix' AND table_name = 'titles'
------------------------------------------------
SELECT constraint_name, table_name, constraint_type
FROM information_schema,table_constraints
WHERE table_schema = 'netflix' AND table_name = 'titles'
