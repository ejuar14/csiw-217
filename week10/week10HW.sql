select category, round(avg(price),2) from products group by category;
select category, ceil(avg(price)) from products group by category;
select min(price), max(price) from products;
select floor(price) from products;
select upper(category) from products;
create view category_overview as select category, round(avg(price),2) as avg_price, sum(stock) as total_stock from products where price > 50 group by category;
