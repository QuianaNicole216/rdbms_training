/* Window Function
	OVER AND PARTITION BY */
--------------------------------
--OVER: transform a function to a window function
--PARTITION BY: divides the rows into groups (partition) sharing the same partition value
---------------------------------
--The list of users and for each user present, also the average age of users living in the same city
SELECT user_id, age, city, ave(age) OVER (PARTITION BY city) as avg_age
FROM books_schema.users
WHERE city IS NOT NULL
ORDER BY 1 DESC;
---------------------------------
/* 
SELECT user_id, age, city, avg(age) OVER (PARTITION BY city) as avg_age
FROM books_schema.users
WHERE city ='new york'
---------------------------------
*/