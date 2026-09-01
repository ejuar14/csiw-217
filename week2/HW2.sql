-- query1
create database PracticeDB;
-- query2
create table Movies (Name_of_movie varchar (200), release_date date, tickets_sold numeric, Moive_Budget numeric);
-- query3
insert into Movies (Name_of_movie, release_date, tickets_sold, Moive_Budget)
values ('The Odyssey', '2026-07-17',250,10000),
('Spiderman: Brand New Day', '2026-07-31',300,8000),
('Superman', '2025-07-11',200,9000);
--ERROR:  syntax error at or near "2025", LINE 4: ('Superman'2025-07-11,200,9000);

-- The concept that has poped up for me is DISTINCT since it would be helpfull for spotting inconsistencies.
-- What is the point of the ASC and DESC when there are other commands that can help narrow down what you are looking for?
