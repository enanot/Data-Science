-- Ejercicio 07
-- 
-- Escribe una Query SQL que muestre el nombre de la suscripción más cara de la tabla “subscriptions” y su precio. Las columnas se llamarán respectivamente "Nombre de la suscripción más cara" y "Precio".
select name as "Nombre de la suscripción más cara", price  as "Precio" from subscriptions where price=(SELECT MAX(price) FROM subscriptions);

select * from subscriptions s 

-- Ejercicio 08
-- 
-- Escribe una Query SQL que muestre el título de la película cuyo género sea "action" o "romance"

select m.title,g.name from movies m inner join genres g on m.genre_id = g.id where g.name ="action" OR g.name= "romance" order by m.id 

select * from movies 

select * from genres 
-- Ejercicio 09
-- 
-- Escribe una Query SQL que muestre la duración en minutos de la película más corta. Las películas con duración NULL o 0
-- 
-- no deben tenerse en cuenta. La columna se llamará "Duración de la película más corta".

select title, min_duration as "Duración de la película más corta" from movies where  min_duration = (select MIN(min_duration) from movies);

select * from movies order by min_duration asc


-- Ejercicio 10
-- 
-- Escribe una Query SQL que muestre el identificador de las películas cuyo título contenga la cadena de caracteres "tard" (distingue mayúsculas de minúsculas).
-- 
-- La columna se llamará "Identificador".
 
	select id as "Identificador", title from movies where title like BINARY "%tard%";
	select * from movies 

-- Ejercicio 11
-- 
-- Escribe una Query SQL que muestre el número de películas cuyo título termina con la cadena "tion" (sin distinguir mayúsculas de minúsculas).
-- 
-- La columna se llamará "Número de películas que terminan en "tion"".
	
   select count(*)  from movies where title like "%tion"
-- Ejercicio 12
-- 
-- Escribe una query que muestre el apellido seguido del nombre de cada miembro
-- 
-- de la tabla profiles.
-- 
-- La primera letra del apellido y la primera letra del nombre irán en mayúsculas.
-- 
-- Los miembros deben mostrarse del más joven al más viejo. La columna se llamará "Full name".
-- 
   select Concat (concat(UCASE(Left(lastname,1)),Lcase(SUBSTRING(lastname,2))),', ', concat(UCASE(Left(firstname,1)),Lcase(SUBSTRING(firstname,2)))) "Full Name" ,birthdate from profiles order by birthdate desc
   
   select * from profiles 
   
-- 
-- 
-- ENTREGA: "M2-AF2.2-Nombre Alumne.sql"