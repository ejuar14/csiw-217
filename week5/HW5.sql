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
ALTER TABLE books ADD COLUMN last_updated timestamp;
ALTER TABLE books ADD COLUMN in_stock boolean;

UPDATE books
SET genre = 'Young Adult Dystopian Science Fiction',
price = 39.99,
last_updated = now(),
in_stock = TRUE
WHERE book_name = 'The Maze Runner';

UPDATE books
SET genre = 'allegorical novel',
price = 30.00,
last_updated = '20260812',
in_stock = False
WHERE book_name = 'Lord of the Flies';

UPDATE books
SET genre = 'Young Adult',
price = 25.00,
last_updated = now(),
in_stock = False
WHERE book_name = 'The Outsiders';

UPDATE books
SET genre = 'Bildungsroman and Southern Gothic',
price = 35.00,
last_updated = '20260525',
in_stock = True
WHERE book_name = 'To Kill a Mockingbird';

UPDATE books
SET genre = 'Horror',
price = 20.00,
last_updated = now(),
in_stock = True
WHERE book_name = 'The Shadow over Innsmouth';

ALTER TABLE books
RENAME COLUMN price TO rating;

ALTER TABLE book
RENAME COLUMN rating TO price;

ALTER TABLE books
RENAME COLUMN price TO rating;

SELECT * FROM books
SELECT book_name FROM books
SELECT book_name, in_stock FROM books WHERE in_stock = false
SELECT book_name, genre FROM books ORDER BY genre 
SELECT book_name, price FROM books WHERE in_stock = true ORDER BY price DESC;
