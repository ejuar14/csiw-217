CREATE DATABASE week3_homework;
CREATE TABLE Movies (id bigserial, Name_of_movie varchar (200), release_year numeric, genre varchar (25), rating numeric);
INSERT INTO Movies (Name_of_movie, release_year, genre, rating)
VALUES 
('The Odyssey',2026,'Action/Fantasy',94),
('Spiderman: Brand New Day',2026,'Action/Adventure',89),
('Superman',2025, 'Action/Sci-fi',83),
('Buddy',2026, 'Horror',88),
('The Other Guys',2010, 'Comedy/Action',78),
('All Quiet on the Western Front',2022,'War/Action',90);


SELECT * FROM Movies;
-- Shows the table.
SELECT Name_of_movie FROM Movies;
-- Shows only the names of the films from the table.
SELECT DISTINCT release_year FROM Movies;
-- Shows only one movie that was released that year.  
SELECT Name_of_movie, genre FROM Movies WHERE genre ILIKE 'Action%';
-- Show the movies that had action at the beginning of the genre. 
SELECT Name_of_movie,release_year FROM Movies WHERE release_year < 2022 or release_year = 2022;
-- Shows movies that were released before or during 2022.
SELECT Name_of_movie, rating FROM Movies ORDER BY rating DESC;
-- Ordering the movies with the highest rating at the top and lowest at the bottom.


-- Ch 4 skim
-- I learned that char(n) is a specific number of characters for the column, and if you write less than the number specified, then it will fill the rest with spaces.
-- I am wondering if you can change a date type from smallserial to serial? 
