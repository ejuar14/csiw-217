-- What is a index? is is like a table of contents for a database 
-- It helps SQL find rows faster without scanning the entire table
-- how to creat a index
create index idx_category on products (category);

-- analyze query performance 
explain analyze select * from products where category='Skincare'

-- forcing sql to use index scan
set enable_seqscan=off;
explain analyze select * from products where category='Skincare';
-- small tables don't benfit from indexes
-- When the entire table fits into memory, it's faster for SQL to read all rows directly than perform mulitple index lookups 
-- index have lookup overhead 
-- each index lookup adds extra work, postgreSQL has to look for the index, then retrieve the rows, then piece them back together
-- indexes are extremely useful when database have thousands or millions of rows
