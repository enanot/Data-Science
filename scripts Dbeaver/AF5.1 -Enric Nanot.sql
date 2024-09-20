
-- Crear foreign keys en la tabla movies para géneros y productoras 

select * from movies

ALter TABLE movies
ADD CONSTRAINT FK_movie_genres_id FOREIGN KEY (genre_id)
REFERENCES genres (id);

ALter TABLE movies
ADD CONSTRAINT FK_movie_producers_id FOREIGN KEY (producer_id)
REFERENCES producers (id);