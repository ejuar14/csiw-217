create database week5lab

CREATE TABLE products (
id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
product_name varchar(100),
quantity integer);

INSERT INTO products (product_name, quantity)
VALUES('Keyboard', 10),
('Controller', 8),
('Game Chair', 5),
('Headset', 12);

alter table products
add column description text
  
alter table products
add column price numeric(7,2)
  
alter table products
add column rating real
  
alter table products 
add column last_updated timestamp with time zone
  
alter table products 
add column in_stock boolean

UPDATE products
SET description = 'Wireless Headset',
price = 69.99,
rating = 6.8,
last_updated = now(),
in_stock = TRUE
WHERE product_name = 'Headset';

UPDATE products
SET description = 'Chair that helps with long gaming sessions',
price = 99.90,
rating = 8.6,
last_updated = now(),
in_stock = False
WHERE product_name = 'Game Chair';

UPDATE products 
SET description = 'Wired Xbox controller',
price= 59.999,
rating = 9.0,
last_updated = '2026-09-10 11:30:00',
in_stock = True
WHERE product_name = 'Controller';
06 is with daylight saving and 07 is without daylight savings


update products
set price=56.899
where product_name = 'Keyboard'
-- it rounded the number to the second decimal place 

UPDATE products 
SET description = 'Wired keyboard',
rating = 8.5,
last_updated = '2025-12-10 11:45:00',
in_stock= False
WHERE product_name = 'Keyboard'
