

select* from Matriculas m 

-- Tabla Estudiantes 

Alter table Estudiantes 
add column class1 varchar(100),
add column class2  varchar(100),
add column proffesor1  varchar(100),
add column proffesor2  varchar(100)


select * from Estudiantes e 


Update Estudiantes 	
set class1 = SUBSTRING_INDEX(Cursos_Materias,',',1),
    class2 = SUBSTRING_INDEX(SUBSTRING_INDEX(Cursos_Materias,',',1),',',-1) 


Update Estudiantes 	
set proffesor1 = SUBSTRING_INDEX(Profesores ,',',1),
    proffesor2 = SUBSTRING_INDEX(SUBSTRING_INDEX(Profesores,',',1),',',-1) 

Alter table Estudiantes 	
	drop column Profesores,
	drop column Cursos_Materias
	
-- Tabla registro_escolar



select * from Registro_Escolar1 re 

Alter table Registro_Escolar1 
add column Nombre_Materia1 varchar(100),
add column Nombre_Materia2 varchar(100)

Update Registro_Escolar1 
set Nombre_Materia1 = SUBSTRING_INDEX(Nombre_Materia ,',',1),
 	Nombre_Materia2 = SUBSTRING_INDEX(SUBSTRING_INDEX(Nombre_Materia,',',1),',',-1) 
 	
Alter table Registro_Escolar1 
	drop Column Nombre_Materia
	
	
