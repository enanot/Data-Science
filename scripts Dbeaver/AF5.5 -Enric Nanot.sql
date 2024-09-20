-- Añadimos la gestión de la venta de entradas.
-- La tabla "program_grid"  representa la parrilla de programación del cine. Necesitamos modificar la estructura de esta tabla 
-- añadiendo un campo "id" que se incremente automáticamente para poder relacionar de una forma rápida y sencilla la información contenida en ella.



alter table program_grid add id int not null; -- no autoincrementa

alter table program_grid add primary key (id);

-- Crea una tabla para registrar las ventas de entradas, vinculando cada venta a un miembro, a una entrada específica de la tabla "program_grid" y a un descuento. 
-- La nueva tabla tendrá que registrar también el precio de la entrada y la fecha de venta.

select * from program_grid 
select * from discounts


CREATE TABLE ticket_sales (

   id int  AUTO_INCREMENT PRIMARY KEY,
   staff_id int,
   grid_id int,
   discount_id int,
   tiket_price decimal,
   sale_date Date,
   FOREIGN KEY (staff_id) REFERENCES staff(id),
   FOREIGN KEY (grid_id) REFERENCES program_grid(id),
   FOREIGN KEY (discount_id) REFERENCES discounts(id)

);

select * from ticket_sales ts 