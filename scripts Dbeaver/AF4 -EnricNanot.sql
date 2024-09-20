-- Escribe una consulta que muestre todos los productores y el número total de películas que han producido. Si un productor no ha producido ninguna película, aún debe aparecer en la lista.


select p.name, count(1) as total from movies m inner join producers p where (p.id = m.producer_id) group by producer_id HAVING count(1) >=0


-- Escribe una consulta que muestre el título de todas las películas lanzadas después del 2000 junto con el nombre de su género y de su productor.
-- En caso que el género y/o el productor sean valores NULOS, mostrar el texto: "No definido"

select m.title ,p.name,g.name from movies m inner join genres g inner join producers p where (m.genre_id = g.id AND p.id = m.producer_id AND m.release_date >= '2000-01-01')

-- Escribe una consulta que muestre el género, el número total de películas por género y el promedio de duración mínima de las películas en cada género.

select g.name, count(1) as 'total movies', AVG (m.min_duration) from genres g inner join movies m where (g.id = m.genre_id) group by m.genre_id 

-- Escribe una consulta que muestre los títulos de las películas que tienen una duración mínima superior a la duración promedio de todas las películas.


select m.title from movies m where m.min_duration  > (select AVG (min_duration) from movies )

-- Crea un procedimiento almacenado "procedure" que acepte un producer_id y una fecha de lanzamiento, que devuelva el número de películas producidas por ese productor después de la fecha dada.
-- El procedure deberá llamarse "CountMoviesAfterDate".

CREATE PROCEDURE CountMoviesAfterDate (IN producer_id int, IN release_date DATE)
       BEGIN
         SELECT COUNT(1) as num_movies from movies m where (m.producer_id = producer_id and  m.release_date > release_date);
       END
       
select * from movies where producer_id =1
   
CALL CountMoviesAfterDate(1,'2006-01-01');