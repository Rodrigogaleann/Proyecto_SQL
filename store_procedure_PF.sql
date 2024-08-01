--Nos aseguramos que si existe previamente EL PROCEDIMIENTO se borre para crear uno nuevo.
drop database if exists etl_pagos_rechazados


--PROCEDIMINETO de pagos rechazados en transacciones
DELIMITER //

create procedure etl_pagos_rechazados
begin
	
	select concat (c.nombre , c.apellido) as "Clientes" from clientes c 
	inner join compras c2 on c.id_cliente = c2.id_cliente_num 
	where c2.pago = 0;
end; //

DELIMITER;


--PROCEDIMIENTO para ver si dias de entregas de proveedores

DELIMITER //

create procedure etl_dias_entregas_proveedor()
begin 
	
	select  nombre_prov as "Porveedores" , dias_entregas as " Dias de entregas Proveedores" 
	from proveedores p ;
	
end //

DELIMITER ;