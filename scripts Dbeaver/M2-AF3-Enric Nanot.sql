
select title, summary,release_date, end_release_date, prod_year from movies where title in (
	select title 
	from movies 
	group by title 
	having count(1) > 1
)order by title, prod_year;

-- Creamos una copia de la tabla original
CREATE TABLE movies2 LIKE movies;

-- movies.movies2 definition

CREATE TABLE `movies2` (
  `id` int NOT NULL,
  `genre_id` tinyint DEFAULT NULL,
  `producer_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(300) NOT NULL,
  `release_date` date DEFAULT NULL,
  `end_release_date` date NOT NULL,
  `min_duration` int DEFAULT NULL,
  `prod_year` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_id` (`genre_id`),
  KEY `producer_id` (`producer_id`),
  KEY `title` (`title`),
  KEY `prod_year` (`prod_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- Insertamos la informacion de la tabla original en la tabla copiada

INSERT INTO movies2 SELECT * FROM movies 

ON DUPLICATE KEY UPDATE movies2.title = concat (movies2.title + "(remake)");

-- Para eliminar la tabla creada

--drop table movies2


-- Comprovamos que la consulta de el mimsmo output
select id, title, summary,release_date, end_release_date, prod_year from movies where title in (
	select title 
	from movies2 
	group by title 
	having count(1)>1
)order by title, prod_year ;

select * from movies2 where title like "%remake%"


update movies2 m
inner join movies2 mm

on m.title = mm.title and m.id != mm.id 
set mm.title =concat (mm.title, "(remake)")

where m.prod_year >= mm.prod_year
