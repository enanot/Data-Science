-- 1. renombrar las tablas "discount" y "member" para que se alineen con el estilod e nombres del resto de tablas
-- 2. Añadir las fk's en la tabla "members" (nuevo nombre) aplicando los cambios oportunos en los datos.
   -- 2.1 members.profile_id
   -- 2.2 members.sub_id
   -- 2.3 members.last_movie_id

rename table discount to discounts

rename table member to members 

select * from members m 

ALter TABLE members
ADD CONSTRAINT FK_profile_members_id FOREIGN KEY (profile_id)
REFERENCES subscriptions (id);

SET FOREIGN_KEY_CHECKS=0

ALter TABLE members
ADD CONSTRAINT FK_member_sub_id FOREIGN KEY (sub_id)
REFERENCES subscriptions (id);

SET FOREIGN_KEY_CHECKS=1

ALter TABLE members
ADD CONSTRAINT FK_lastmovie_movie_id FOREIGN KEY (last_movie_id)
REFERENCES movies (id);