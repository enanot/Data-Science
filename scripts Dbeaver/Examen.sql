
/*Actividad 1 (6pts)
Lanza el Script.sql adjunto y crea las tablas necesarias para obtener una base de datos normalizada que contenga los datos de los pedidos de la tabla "orders_base".
Entrega el script de creación de base de datos resultante.
*/

select * from orders_base
describe orders_base 

-- crear tabla clientes 
create table clients(
id int  primary key auto_increment,
name varchar(100),
id_city int,
address varchar(100),
phone varchar(100));

-- drop table clients;

-- crear tabla products

create table products(
id int  primary key auto_increment,
description varchar(100),
price float);

 -- drop table products;

-- crear tabla orders

create table orders(
id int primary key auto_increment,
order_date date,
shipment date,
delivered date,
id_client int,
id_product int,
quantity int,
constraint fk_id_client foreign key (id_client) references clients(id),
constraint fk_id_product foreign key (id_product) references products(id)
);

-- drop table orders

-- tabla cities

create table cities(
id int primary key auto_increment,
name varchar(100));

-- añadimos fk_id_city a la tabla users

alter table clients
add constraint fk_id_city foreign key(id_city) references cities(id)

-- Rellenamos tablas 

-- cities 

insert into cities(name)
select distinct client_city
from orders_base 

select * from cities

-- clients 

insert into clients(name, id_city, address,phone)
select distinct o.client_name, c.id,o.client_address,o.client_tel
from orders_base o inner join cities c on o.client_city = c.name

select * from clients

select client_name from orders_base ob group by client_name -- faltan dos mismo nombre diferente direccion

-- products

insert into products(id, description,price)
select DISTINCT product_id,product_des,price_unit
from orders_base 

select * from products  


-- orders 

insert into orders
(order_date,shipment,delivered,id_client,id_product,quantity)
select o.order_date, o.order_shipment,o.order_delivered,c.id,p.id,o.quantity
from orders_base o 
inner join clients c on o.client_name = c.name 
inner join products p on o.product_id = p.id;

select * from orders 




/*Actividad 2 (2pts)
Utilizando la base de datos creada anteriormente escibe una query que
para cada pedido muestre el "peso" (importe) en porcentaje
 de el pedido respeto al total de pedidos de la misma ciudad.
Entrega el script SQL de la query*/


select 
    o.id as order_id,
    ci.name as city_name,
    truncate((o.quantity * p.price / SUM(o.quantity * p.price) OVER (PARTITION BY ci.id)) * 100, 2) AS percentage
from 
    orders o
inner join
    clients c on o.id_client = c.id
inner join
    cities ci on c.id_city = ci.id
inner join 
    products p on o.id_product = p.id
 order by o.id ;

/*Actividad 3 (2pts)
Utilizando la base de datos creada anteriormente escibe una query
 que para cada pedido muestre el "peso" (importe) 
 en porcentaje de el pedido respeto al total de pedidos
  del mismo mes y en la misma ciudad.
Entrega el script SQL de la query
*/


select 
    o.id as order_id,
    ci.name as city_name,
    o.order_date as order_month,
    truncate((o.quantity * p.price / SUM(o.quantity * p.price) 
        over (partition by ci.id, DATE_FORMAT(o.order_date, '%Y-%m'))) * 100, 2) as percentage
from 
    orders o
inner join
    clients c on o.id_client = c.id
inner join
    cities ci on c.id_city = ci.id
inner join
    products p on o.id_product = p.id
order by 
    o.id;