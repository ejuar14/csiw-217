--create table products("index" integer primary key, "name" varchar(100), description text, brand text, category varchar (78), price numeric (10,2),currency varchar(5), stock integer, ean text, color text,"size" text,availability text,internal_id integer);
-- What are fuctions in SQL. 
-- Funtcions that are built-in oprations that perform a specific task inside a query.
-- common built in futions are 
-- round(), ex: round(3.4567,2)
-- ceil()/floor(), round up or down ex: select seil (2.1); -> 3

-- text funtions 
-- upper(text), converts text to upper case ex: select upper(brand)
-- lower(text), converts text to lower
-- length(text), returns charater count

-- data function
-- now(), current timestamp ex: select now()
-- current_date, today's date
-- age(), ex: select age('2025-10-20','2000-05-15')
-- Date fuctions are used for reports or logs.

-- select category, round(avg(price),2) as avg_price from products group by category order by avg_price

-- views, is a saved SQL query that acts like a virtuals table, it dosen't store new data 
-- create view product_summary as select category, round(avg(price),2) as avg_price, sum(stock) as total_stock from products group by category;
-- select * from product_summary
-- to update the view
-- replace view products_summary as 
-- to delete views
-- drop view products_summary
