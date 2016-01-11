![One to one](imgs/one_to_one.png)
This example shows a one to one relationship between a user and their driver's license.  It functions as a one to one because the user can have at most one driver's license, but could have none (symbolized by all the values being NULL) note that the license table could be made more elaborate by adding class, expiration date, and numerous other characteristics.

![Many to many](imgs/many_to_many.png)

What is a one-to-one database?
A one to one database is a database where the linked tables are directly related as a pair.  The table can have no more than one property on the second table, and the values on the second table can be optionally null.
When would you use a one-to-one database? (Think generally, not in terms of the example you created).
When there is a group of fields that may often be empty, or when you have information that is infrequently used that you want to separate from your primary table.
What is a many-to-many database?
When you have a join table that combines two or more one to many tables
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
Whenever you have multiple tables that need to use information together frequently
What is confusing about database schemas? What makes sense?
When to break off pieces of tables to keep you database functioning optimally is a bit confusing, but searching through the database, and logically designing it originally seems pretty easy.
