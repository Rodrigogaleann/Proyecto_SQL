--TRIGGERS PARA CUANDO HAYA VENTAS MAYORES A $50.000 SE ENVIE UN DESCUENTO ESPECIAL

--CHEQUEAMOS SI YA EXISTE EL TRIGGERS, EN CASO QUE LO ESTE BORRARLO PARA GENERAR UNO NUEVO
drop trigger if exists trg_check_ventas ;
delimiter //
--CREACION DEL TRIGGER
create trigger trg_check_ventas
--EN QUE MOMENTO SE DISPARARA
after insert on proyecto_ecommerce.compras 
--CANTIDAD DE LINEAS
for each row
begin 
	--SI EL MONTO SUPERA LOS $50.0000
	if new.precio > 50000  then 
	signal sqlstate '45000'
	--SETEAMOS EL MENSAJE A DISPARAR
	set message_text = 'Obtuvo un cupon de descuento de 15% en su proxima compra';
    end if;
end; //

DELIMITER

--TRIGGER PARA CONTROLAR LAS UNIDADES EN STOCK

--CHEQUEAMOS SI YA EXISTE EL TRIGGERS, EN CASO QUE LO ESTE BORRARLO PARA GENERAR UNO NUEVO
drop trigger if exists check_stock;
DELIMITER //
--CREACION DEL TRIGGER
create trigger check_stock 
--EN QUE MOMENTO SE DISPARARA
before update on proyecto_ecommerce.producto 
for each row 
begin 
	--CHEQUEAMOS SI LAS UNIDADES SON MENORES A 5 
	if new.cantidad < 5 then 
		signal sqlstate '45000'
	--SETEAMOS MENSJAE A DISPARAR
	set message_text = 'Se agota el stock, realizar pedido';
    end if;
end; //

DELIMITE

--TRIGGER PARA TENER UN REGISTRO DE QUE USUARIO REALIZA UNA MODIIFCACION EN LOS DATOS DE CLIENTES

--CHEQUEAMOS SI YA EXISTE EL TRIGGERS, EN CASO QUE LO ESTE BORRARLO PARA GENERAR UNO NUEVO
drop trigger if exists logs_clientes
DELIMITER //
--CREACION DEL TRIGGER
create trigger logs_clientes
--INDICAMOS EL MOMENTO QUE SE EJECUTARA
after update on proyecto_ecommerce.clientes 
--CANTIDADES DE LINEAS
for each row  
   begin    
        
	   insert into proyecto_ecommerce.logs_clientes
	   (Nombre,Apellido,Email_update,Usuario_update,Fecha_modificacion)
	   values (
	      new.Nombre ,
	      new.apellido,
	      new.Email,
	      session_user(),
	      now()
	   );
	   
   end //
   
   DELIMITER