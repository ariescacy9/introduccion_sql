create table profesor (
  id_profesor int4 primary key not null,
  nombre_profesor varchar not null,
  apellido_profesor varchar not null
);

insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (1,'juan','peres');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (2,'jhon','lopez');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (3,'richard','flores');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (4,'tom','sulca');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (5,'luis','yopla');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (6,'diana','ramirez');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (7,'luis miguel','cardenas');
insert into profesor (id_profesor, nombre_profesor, apellido_profesor) values (8,'diana maria','isis');

select * from profesor;
select nombre_profesor from profesor;
select p.nombre_profesor, p.apellido_profesor from profesor p;
select p.nombre_profesor, p.apellido_profesor  from profesor p where p.nombre_profesor like 'd%';
select p.nombre_profesor, p.apellido_profesor  from profesor p where p.nombre_profesor like 'l%';
select p.nombre_profesor, p.apellido_profesor  from profesor p where p.nombre_profesor like '%s';
select p.nombre_profesor, p.apellido_profesor  from profesor p where p.nombre_profesor like '%o%';

update profesor set apellido_profesor='cruz' where nombre_profesor='tom';

select  p.nombre_profesor, p.apellido_profesor from profesor p where p.nombre_profesor like 'tom';

delete from profesor where id_profesor=3;

select * from profesor p;

-- solo lectura permite cambiar el nombre de la columna
alter table profesor rename column nombre_profesor to nombres;