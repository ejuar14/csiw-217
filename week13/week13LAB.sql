create table publishers (id integer generated always as identity primary key, publisher_name VARCHAR(100) not null);
create table games (id integer generated always as identity primary key, title varchar (100) not null, publisher_id integer references publishers(id), price numeric(6,2));
create table sales (id integer generated always as identity primary key, game_id integer references games(id), quantity integer not null, sale_date date not null);

INSERT INTO publishers (publisher_name)
VALUES ('Nintendo'), ('Electronic Arts'), ('Ubisoft'), ('Capcom');

INSERT INTO games (title, publisher_id, price)
VALUES ('Mario Kart 8 Deluxe', 1, 59.99), ('Super Smash Bros Ultimate', 1, 59.99), ('EA Sports FC 25', 2, 69.99), ('Assassins Creed Mirage', 3, 49.99), ('Street Fighter 6', 4, 59.99), ('Resident Evil 4', 4, 39.99), ('Indie Adventure', NULL, 19.99), ('Upcoming Racing Game', 2, 49.99);

INSERT INTO sales (game_id, quantity, sale_date)
VALUES (1, 5, '2025-10-01'), (1, 3, '2025-10-05'), (2, 4, '2025-10-03'), (3, 2, '2025-10-07'), (4, 3, '2025-10-09'), (5, 6, '2025-10-10'), (5, 2, '2025-10-12'), (6, 1, '2025-10-15');

select g.price, g.title, p.publisher_name from games g inner join publishers p on g.publisher_id =p.id
select g.price, g.title, p.publisher_name from games g inner join publishers p on g.publisher_id =p.id order by g.title asc
select g.price, g.title, p.publisher_name from games g inner join publishers p on g.publisher_id = p.id where p.id = 1 order by g.title asc; 
-- No, indie adventure did not pop up since it dosen't have a publisher ID and was not added to the publishers table 

SELECT g.title, p.publisher_name FROM games g LEFT JOIN publishers p ON g.publisher_id = p.id;
-- Indie adventure is now poping up
SELECT g.title, p.publisher_name, g.price FROM games g LEFT JOIN publishers p ON g.publisher_id = p.id;
SELECT g.title, p.publisher_name, g.price FROM games g LEFT JOIN publishers p ON g.publisher_id = p.id order by price desc;
-- One more game is poping up that was not before.

SELECT g.title, COUNT(s.id) AS total_sale FROM games g INNER JOIN sales s ON g.id = s.game_id GROUP BY g.id, g.title;
select g.title, sum(s.id) as total_sales from games g inner join sales s on g.id = s.game_id group by g.id, g.title;
select s.game_id, g.title, sum(s.quantity) as total_sales, count(s.quantity) as number_sold from games g inner join sales s on g.id = s.game_id group by g.id, g.title, s.game_id order by total_sales desc;
-- street fighter and mario kart 8 deluxe has sold the most copies 

SELECT p.publisher_name, COUNT(g.id) AS game_count, round(avg(g.price),2) as average_price FROM publishers p INNER JOIN games g ON p.id = g.publisher_id GROUP BY p.id, p.publisher_name order by average_price desc;
-- Electonic arts has the highest average 
