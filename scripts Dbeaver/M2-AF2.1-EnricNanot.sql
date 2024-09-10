-- Ejercicio 01

-- Escribir una query SQL que muestre la lista de todas las tablas de la base de datos “movies”

SHOW FULL TABLES FROM movies

-- Ejercicio 02

-- Escribe una Query SQL que muestre la estructura de la tabla “movies”.

SHOW COLUMNS FROM movies

-- Ejercicio 03

-- Escribe una Query SQL que muestre la fecha actual en una columna llamada "Fecha" con el formato "AAAA-MM-DD".

SELECT CURDATE() AS 'Fecha'

-- Ejercicio 04

-- Escribe una Query SQL que muestre el título y resumen de todas las películas ordenadas alfabéticamente.

SELECT title, summary FROM movies order by title asc

-- Ejercicio 05

-- Escribe una Query SQL que muestre el nombre de todos los géneros de la tabla “genres” en mayúsculas. La columna se llamará "NOMBRE DE TODOS LOS GÉNEROS".

select UPPER(name) as "NOMBRE DE TODOS LOS GÉNEROS" from genres 

-- Ejercicio 06

-- Escribe una Query SQL que muestre el título de las últimas 42 películas de la tabla movies. 

-- La columna se llamará "Título de las últimas 42 películas". 
-- Los resultados deben ordenarse por "id" decreciente.

select title as "Título de las últimas 42 películas" from movies order by title desc Limit 42

-- ENTREGA: "M2-AF2.1-NombreAlumne.sql" con todas las queries SQL y comentarios necesarios.