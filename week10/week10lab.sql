select upper(brand) from products
select round(price) from products
select age ('2026/10/19','1985-05-25')
create view price_V200 as select upper(name), lower(description), price from products where price = 200 or price > 200 order by price asc
select * from price_V200
