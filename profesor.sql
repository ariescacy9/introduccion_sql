create table person (
  id int4 primary key,
  name varchar not null,
  last_name varchar not null
);

insert into person (id, name, last_name) values (1,'juan','peres'),
  (2,'jhon','lopez'),
  (3,'richard','flores'),
  (4,'tom','sulca'),
  (5,'luis','yopla'),
  (6,'diana','ramirez'),
  (7,'luis miguel','cardenas'),
  (8,'diana maria','isis'),

select * from person;
select name from person;
select p.name, p.last_name from person p;
select p.name, p.last_name from person p where p.name like 'd%';
select p.name, p.last_name from person p where p.name like 'l%';
select p.name, p.last_name from person p where p.name like '%s';
select p.name, p.last_name from person p where p.name like '%o%';

update person set last_name='cruz' where name='tom';

select  p.name, p.last_name from person p where p.name like 'tom';

delete from person where id=3;

select * from person p;

-- solo lectura permite cambiar el nombre de la columna
alter table person rename column name to nombres;

-- se agrega el atributo edad
ALTER TABLE person ADD age int;
--se actuliza la edad del usuario tom
update person set age=23 where nombres='tom';
