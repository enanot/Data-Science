-- DDL --

CREATE table users (
	id int,
	username varchar(80),
	email varchar(255)
);


drop table users;

-- DML --
# las 4 operaciones básicas de DML

/*

C = insert 
R = select
U = update 
D = delete

*/

INSERT INTO users (id, username, email) values (1, 'carlos', 'carlos@aws.com');
INSERT INTO users (id, username, email) values (2, 'carolina', 'carol@aws.com');
INSERT INTO users (id, username, email) values (3, 'paco', 'pacurro@aws.com');
INSERT INTO users (id, username, email) values (4, 'pepe', 'putatibus@aws.com');
INSERT INTO users (id, username, email) values (5, 'jose', 'jose@microsoft.com');

delete from users;
truncate table users;


# francisco -> san francisco -> PAter COmunitatis 
# Pepe -> José (Jesús) -> Pater Putatibus


select * from users where username = 'paco';  # el where con cadenas es case insensitive !!!
select * from users where id = 3;
select * from users where email like '%aws%';

delete from users where username = 'jose';
update users set id = 5 where username = 'jose';