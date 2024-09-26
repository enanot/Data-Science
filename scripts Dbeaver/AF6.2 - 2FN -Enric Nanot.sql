/*A los datos de la tabla Estudiantes en 1FN aplicar las modificaciones necesarias para obtener la 2FN
(crear tablas adicionales si lo consideráis oportuno)

Ejemplo de tablas a crear:

1. estudiantes
2. materias
3. profesores
4. datos_estudiantes_2FN 

*/

select * from datos_estudiantes_1FN 

create table Estudiantes_2FN(
id int primary key,
nombre varchar(255)
)

create table Materias_2FN(
id int primary key auto_increment,
nombre varchar(255)
)

create table Profesores_2FN(
id int primary key auto_increment,
nombre varchar(255)
)

create table datos_estudiantes_2FN(
id_estudiante int,
id_materia int,
id_profesor int,
 foreign key (id_estudiante) references Estudiantes_2FN(id),
 foreign key (id_materia) references Materias_2FN(id),
 foreign key (id_profesor) references Profesores_2FN(id)
)
-- Insert en tabla estudiantes_2FN
insert into Estudiantes_2FN (id, nombre) 
select ID_Estudiante, nombre from datos_estudiantes_1FN group by Nombre 

select * from Estudiantes_2FN ef 


-- Insert en tabla materias_2FN

insert into Materias_2FN  (nombre)
select Materia from datos_estudiantes_1FN group by Materia 

SELECT * from Materias_2FN mf 


-- insert in profesores_2FN
insert into Profesores_2FN (nombre)
select Profesor from datos_estudiantes_1FN def group by Profesor

select* from Profesores_2FN pf 

-- insert into datos_estudiante_2FN
select * from datos_estudiantes_2FN def 
select * from datos_estudiantes_1FN def 

-- materias 

select m.id from Materias_2FN m inner join datos_estudiantes_1FN d where m.nombre =d.Materia 
-- estudiantes 

select e.id from Estudiantes_2FN e inner join datos_estudiantes_1FN d where e.nombre = d.nombre

-- Profesores

select p.id from Profesores_2FN p inner join datos_estudiantes_1FN d where p.nombre = d.Profesor 

-- todas

insert into datos_estudiantes_2FN (id_estudiante, id_materia, id_profesor)
select e.id, m.id, p.id from Estudiantes_2FN e inner join datos_estudiantes_1FN d inner join Materias_2FN m inner join Profesores_2FN p
where e.nombre = d.Nombre ANd p.nombre = d.Profesor AND m.nombre = d.Materia 