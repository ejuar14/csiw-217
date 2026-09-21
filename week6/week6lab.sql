CREATE database week6
create table product (product_index integer primary key,product_name text, description text , brand text, caregory text, price numeric (10,2),currency varchar (20), stock integer, EAN text, color text, product_size varchar(25), availability text, internal_id integer)
SELECT * FROM product LIMIT 5
SELECT product_name, price*stock FROM product
SELECT AVG(price) FROM product
SELECT MIN(price), MAX(price) FROM product
SELECT count(*) FROM product
