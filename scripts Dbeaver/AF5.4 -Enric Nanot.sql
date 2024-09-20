-- Asegúrate de que todas las FK's estén claramente definidas en todas las tablas de la BBDD
-- (Tablas a modificar: member_history, program_grid y staff)

select * from member_history mh 
select * from movies

CREATE TABLE member_history2 LIKE member_history;
INSERT INTO  member_history2 SELECT * FROM  member_history;


ALter TABLE member_history 
ADD CONSTRAINT FK_movie_id FOREIGN KEY (movie_id)
REFERENCES movies (id);

ALter TABLE member_history 
ADD CONSTRAINT FK_member_id FOREIGN KEY (member_id)
REFERENCES member (id);


select * from program_grid pg 


ALter TABLE program_grid 
ADD CONSTRAINT FK_prog_movie_id FOREIGN KEY (movie_id)
REFERENCES movies (id);

ALter TABLE program_grid 
ADD CONSTRAINT FK_room_id FOREIGN KEY (room_id)
REFERENCES rooms (id);

ALter TABLE program_grid 
ADD CONSTRAINT FK_staff_o_id FOREIGN KEY (staff_opener_id)
REFERENCES staff (id);


ALter TABLE program_grid 
ADD CONSTRAINT FK_staff_t_id FOREIGN KEY (staff_technician_id)
REFERENCES staff (id);

ALter TABLE program_grid 
ADD CONSTRAINT FK_staff_m_id FOREIGN KEY (staff_menage_id)
REFERENCES staff (id);

select * from staff

ALter TABLE staff
ADD CONSTRAINT FK_profile_id FOREIGN KEY (profile_id)
REFERENCES profiles (id);


 ALTER TABLE staff MODIFY COLUMN job_id int;

ALter TABLE staff
ADD CONSTRAINT FK_job_id FOREIGN KEY (job_id)
REFERENCES jobs (id);


-- Corregir los nombres de campos:
-- tabla "producers": adress -> address!
-- tabla: "jobs": salary el tipo debería ser "decimal"
-- tabla: program_grid: renombrar el campo "start_session_id`  a "start_session"


ALTER TABLE producers CHANGE COLUMN adress address VARCHAR(255);


ALTER TABLE jobs MODIFY COLUMN salary decimal;


ALTER TABLE program_grid CHANGE COLUMN start_session_id start_session VARCHAR(255);

