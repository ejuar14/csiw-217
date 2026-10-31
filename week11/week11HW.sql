create table products_big ("index" integer primary key, "name" varchar(100), description text, brand text, category varchar (78), price numeric (10,2),currency varchar(5), stock integer, ean text, color text,"size" text,availability text,internal_id integer);
select count(*) from products_big;
select * from products_big limit 5;
explain analyze select * from products_big where category = 'Skincare';
-- 96981 filtered, planning 0.109, execution 15.646 
create index idx_category on products_big (category);
-- Yes, and it was faster
create index idx_big_cat_price on products_big (price);
explain analyze select * from products_big where category = 'price';
set enable_seqscan=on;
-- With the index, it was faster, and without the index it was slower
-- When you execute the command
-- With the larger table, it is more useful to have an index since there is more data, so it would be slower for it to go through the table.
-- If there is not a lot of data, it can choose to use the index if it is faster, but if it's not, then it will scan the whole table.
