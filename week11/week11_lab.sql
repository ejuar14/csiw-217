select count(index) from products
-- a1 - 1,000
-- a2 - It will affect the performance in how much stuff it needs to scan and the more data there is the more time it will take to look at all the information.
select * from products where category='Skincare'
-- b1 - no
-- b2 - 10
-- b3 - 0.075
-- c1 - It used bitmap
-- c2 - slower
-- c3 - becomes it knows if it is faster to use an index or to just scan the hole table it will pick the faster option.
-- d1 - no
-- d2 - if there is not a lot of rows in the table then it will prefer to scan the hole table and if there is a lot of information the it will us the index.
