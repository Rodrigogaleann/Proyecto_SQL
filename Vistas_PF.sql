
-VISTA, creada para ver los nombres completos de todas las personas que realizaron transacciones

create or replace view 
     proyecto_ecommerce.view_filter_nombres
     AS(
     
     select nombre as 'nombre de cliente' , apellido as 'Apellido cliente'  from clientes c 
     inner join compras c3 on c.id_cliente = c3.id_cliente_num 
   
     
     );
    
-VISTA,creada para ver los productos que tengan menos de 10 unidades en stock

  create or replace view 
  proyecto_ecommerce.view_depositos_productos
  as (
   select nombre_producto , cantidad  from producto p 
   where cantidad < 10
   
  );

--VISTA, creada para ver que productos hay en cada deposito en todo el pais

   create or replace  view 
 proyecto_ecommerce.view_productos_depositos_provincias
 as (
       select Provincia ,  p.Nombre_Producto   from depositos d
        inner join depositos_productos dp on d.id_deposito  = dp.Id_Depositos 
        inner join producto p on dp.Id_Producto = p.id_producto
 
 );