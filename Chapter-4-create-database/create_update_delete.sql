/* Updating Rows */
UPDATE products SET price = 15 WHERE price > 20;
--------------------------------------------------
/* Remaining Columns */
ALTER TABLE products RENAME COLUMN product_id TO product_number;
---------------------------------------------------
/* Adding Columns */
ALTER TABLE products ADD COLUMN description varchar(10);
----------------------------------------------------
/* Deleting - Rows */
DELETE FROM products WHERE price > 200;
/* Deleting - ALL ROWS */
DELETE FROM products;
---------------------------------------------------
/* Deleting a Column */
ALTER TABLE products DROP COLUMN description;
--------------------------------------------------
/* Deleting a table */
DROP TABLE products
