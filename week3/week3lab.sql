-- Task 1
SELECT * FROM games;
-- Task 2
SELECT title, platform, rating FROM games;
-- Task 3 
SELECT genre,title,release_year FROM games;
-- Task 4 
SELECT title, rating FROM games ORDER BY rating DESC;
-- Task 5
SELECT title, release_year FROM games ORDER BY release_year;
-- Task 6 
SELECT platform, title, rating FROM games ORDER BY platform, rating DESC;
-- Task 7
SELECT DISTINCT platform FROM games;
-- Task 8
SELECT DISTINCT platform, genre FROM games;
-- Task 9 
SELECT title,platform,release_year FROM games WHERE platform = 'Switch';
-- Task 10
SELECT title,genre,rating FROM games WHERE rating > 9.0 OR rating = 9.0 ORDER BY rating DESC;
-- Task 11
SELECT title,release_year FROM games WHERE release_year < 2020 ORDER BY release_year ASC;
-- Task 12
SELECT title,rating FROM games WHERE rating BETWEEN 8.5 AND 9.2;
-- Task 13
SELECT title,genre FROM games WHERE title LIKE 'M%';
-- Task 14 
SELECT title FROM games WHERE title ILIKE '%the%';
-- Task 15
SELECT title,genre FROM games WHERE title LIKE '%i%';
-- Task 16
SELECT title,platform,rating FROM games WHERE platform= 'PC' AND rating > 9.0;
-- Task 17
SELECT title,genre FROM games WHERE genre= 'RPG' OR genre= 'Fighting';
-- Task 18
SELECT title,platform,release_year FROM games WHERE platform= 'PC' AND (release_year <2017 OR release_year >2022); 
-- Task 19 
SELECT title,genre,platform,rating FROM games WHERE rating > 8.8 OR rating = 8.8 ORDER BY platform, rating DESC;
-- Task 20
SELECT title,rating,release_year,genre FROM games ORDER BY release_year, rating DESC;

-- Notes
-- * is for all tables
-- select * from teachers;

-- select first_name, school from teachers;

-- select salary,first_name from teachers order by salary DESC;

-- select last_name,first_name from teachers order by last_name;

-- The default sorts in ascending order
-- Desc for decending order
-- ASC meaning acending and for numbers it gose numal
-- and for letters it go apabetical
-- for dates lodest to newest 

-- select last_name,school,hire_date from teachers order by school asc, hire_date desc;

-- we can find unique valeus by using DISTINCT after SELECT
-- removes repeating values, makes data retrival look neater

-- select distinct school from teachers;

-- select first_name,last_name,school from teachers where school= 'Myers Middle School';

-- comparing operators 
-- = equal to
-- <> or ! not equal to
-- > graeter than
-- < less than
-- between, in range
-- in, match one of several values

-- find all teachers hired before 1/1/2010
-- date is writen 

-- select First_name,hire_date from teachers where hire_date < '2010-01-01';
-- when using between you neef to add and and for the range
-- select first_name, salary from teachers where salary between 40000 and 60000;

-- can use like for sercing for texts 
-- select first_name from teachers where first_name ilike 'sam%';
-- like is case senitive and is in most program languges  
-- Ilike is not case sentive and is for only SQL

-- select first_name from teachers where first_name like '_anet'
-- select * from teachers where school= 'Myers Middle School' and salary < 40000;

-- select * from teachers where last_name ='Cole' or last_name='bush';
-- select * from teachers where school='F.D. Roosevelt HS' and(salary <38000 or salary>40000);

-- select is what data do we want?
-- from is where dose the data comes from?
-- where is which rows do we want?
-- order by how are the results sorted 
