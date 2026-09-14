-- create table  games (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY, title varchar (100),release_year integer)
-- insert into games (title, release_year)
-- values ('Elder Ring',2022),('Minecraft', 2011),('Hades',2020)
-- char(n) stores a fixed length char value
-- alter table games
-- add column games char(5)

-- alter table games
-- add column description text

-- update games
-- set games = 'ER001'
-- where title = 'Elder Ring'

-- text store variable length without requiring a max length


-- update games
-- set description='Open world RPG'
-- where title='Elder Ring'

-- alter table games
-- add column price numeric(6,2);
-- update games
-- set price=59.99
-- where title='Elder Ring'

-- alter table games
-- add column rating numeric(6,2)

-- update games
-- set rating = 4.12345689
-- where title= 'Hades'

-- alter table games 
-- add column last_played timestamp

-- update games 
-- set last_played='2026-09-01 14:30:00'
-- where title = 'Elder Ring'

-- alter table games
-- add column hours_played double precision;

-- alter table games
-- add column hours_played

-- update 
