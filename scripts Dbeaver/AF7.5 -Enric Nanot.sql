select * from cities c 
select * from customers
select * from orders order by customer_id
select *from states s 

-- Escribe una consulta que muestre los 2 pedidos con más importe de cada ciudad. 

	-- orders saco customer_id join costumer, saco city_id
	
	select o.id, o.amount, c.city_id  from orders o inner join customers c where o.customer_id = c.id  order by city_id 
			
	SELECT city_id, amount
	FROM (
	    SELECT c.city_id, o.id, o.amount,
	           ROW_NUMBER() OVER (PARTITION BY c.city_id ORDER BY o.amount DESC) AS rn
	    FROM orders o
	    INNER JOIN customers c ON o.customer_id = c.id
	) AS order_by_city
	WHERE rn <= 2
	ORDER BY city_id, amount DESC;

-- Calcula la diferencia entre el importe de cada pedido y el importe promedio de pedidos en la misma ciudad.

SELECT o.id, c.city_id, o.amount, truncate(AVG(o.amount) OVER (PARTITION BY c.city_id ),2) as avg_control,
     truncate(o.amount - AVG(o.amount) OVER (PARTITION BY c.city_id),2) AS diferencia
FROM orders o
JOIN customers c ON o.customer_id = c.id;
