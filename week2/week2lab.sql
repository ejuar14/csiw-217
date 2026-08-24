-- table one
create table Animal_types (animal_id bigserial primary key, species varchar (50), habitat varchar (40), diet varchar (50));

insert into Animal_types (species,habitat,diet)
values ('Penguin', 'Antarctica', 'Fish'), 
('Shark', 'Ocean', 'fish and other ocean mammals'), 
('Black Mamba','Sub-saharan Africa','Small mammals and birds');
-- table two
create table Animals (animals_id bigserial, animal_name varchar (30), species_id bigserial, age numeric); 

insert into Animals (animals_id, animal_name, species_id, age)
values (1,'Skipper',1,1),
(2,'Bruce',2,1),
(3,'Smith',3,2)
-- part c  syntax error at or near "(" LINE 5: (4"sam"32) SQL state: 42601 Character: 123
