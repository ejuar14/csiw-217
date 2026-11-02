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
-- primary and forenig keys are improtant in a relational database, data lives inb multiple tables, but those tables must connect somehow 
-- with keys 
-- PK: a column that uniquely identifies a row in a table 
-- FK: a colum in one table that referes to a PK in another table 
-- think of pk/fk like a parent-child relationship - a parent can have many children, but a child has only one parent
-- create table customers(id serial primary key,name text,email text,city text);
-- create table orders(id serial primary key, customer_id int, product text, total numeric(10,2), foreign key(customer_id) references customers(customer_id))
-- customer_id linked each order back to a customer
-- the fk constraint prevents orphan records
-- (you can't creat an order for a non-existent customer)
-- inserting sample data 
--INSERT INTO customers ("name", email, city)
--values
--('alice', 'alice@email.com', 'Boise'),
--('brian', 'brian@email.com', 'Twin Falls'),
--('carmen', 'carmen@email.com', 'Jerome');

--insert into orders (customer_id, product, total)
--values
--(1,'laptop',999.99),
--(1,'mouse',20.99),
--(2,'headponhes',89.89),
--(3,'keyborad', 100.99)

--select customers.name, custumers.city, orders.product, orders.total from orders join customers on orders.custumer_id = customers.customer_id
--create table fw_characters (character_name text primary key, age numeric(10,2), likes text)
--create table factions (faction_name text primary key, charater_name text, postion text, gods_they_worship text, foreign key (character_name) references fw_characters (character_name))

--create table students(student_id serial primary key,name text,email text,DOB integer);
--create table courses(courses_id serial primary key, student_id int, courses_name text, credits numeric (10,2), foreign key(student_id) references students(student_id));
--INSERT INTO students ("name", email, DOB)values('juan', 'juan10@email.com', 20050215),('brian', 'brian89@email.com', 20050922),('jake', 'jake.j13@email.com', 20091212);
--insert into courses (student_id, courses_name, credits)values(1,'com101',3.0),(1,'chem101',3.0),(2,'eng101',3.0),(2,'into to weling',3.0),(3,'com101', 3.0);
--SELECT students.name,courses.courses_name,courses.credits FROM courses JOIN students ON courses.student_id = students.student_id;
