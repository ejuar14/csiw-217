CREATE DATABASE week5_HW 

CREATE TABLE books (
ID integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
book_name varchar(100),
author varchar(50));

INSERT INTO books (book_name, author)
VALUES('The Maze Runner', 'James Dashner'),
('Lord of the Flies', 'William Golding'),
('The Outsiders', 'S.E. Hinton'),
('To Kill a Mockingbird', 'Harper Lee'),
('The Shadow over Innsmouth', 'H.P. Lovecraft');

ALTER TABLE books ADD COLUMN genre text;
ALTER TABLE books ADD COLUMN price numeric; 
