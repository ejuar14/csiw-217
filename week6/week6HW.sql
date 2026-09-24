CREATE DATABASE week6homework;
CREATE TABLE offers(id integer primary key,ean varchar(35),stock integer, price numeric(10,2));
SELECT SUM(price*stock) AS stock_sold FROM offers;
SELECT AVG(price) AS price_per_stock FROM offers;
SELECT * FROM offers WHERE price > 500;
SELECT COUNT(*) FROM offers GROUP BY stock;
SELECT price, stock FROM offers ORDER BY price ASC;

-- New concept that i have noticed is JOIN.
-- How often do you normally join tables together?
