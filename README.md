![image](https://github.com/user-attachments/assets/2b22b442-f605-4815-85af-dc137cffa16b)


# Proyecto_SQL_E-COMMERCE

## Problema

Importante empresa de tecnologia y de productos tangibles puso a disposicion su plataforma de web para que proveedores puedan publicar sus productos y vender a traves de ella. Necesita optimizar la extraccion de datos para agilizar los procesos de compras, minimizar errores y podes realizar sus entregas en timepo y forma con todos sus clientes. 
Parte de estas bases de datos es saber sus puntos estrategicos de depositos para poder llevar a cabo un proyecto de expacion hacia paises limitrofes y tambien poder ofrecer de forma personalizada productos de grna interes segun historial de compra a todos sus clientes.

## Desarrollo 

Trabajaremos con 6 tablas que se encuentran conectadas entre si para saber productos y que categoria pertenece, tambien saber que deposito es el que tiene mayor fluides de mercaderia para saber que dias tendremos que abastecerlo y asai poder cuantificar que cantidad de mercaderia sale del mismo. A su vez,  tener informacion de los proveedores para saber que dias realizan las entregas y cuales son los que tiene mi producto ganador de ventas.

# Tablas
- ***CLIENTES***: Tabla que tendremos toda la informacion personal de cada cliente como nombre apellido y apelliddo, domicilio, de que pias es para saber que pais demuestra mayor interes en nuestros producto y llevar a cabo el proyecto de expancion comentado anteriormente, email dato que sirve para poder enviar promociones y encuestas satisfactorias y un dato que se pedio por prtotcolo de la empresa si es un cliente activo o no este dato nos va a permitir conocer si es un cliente golondrina o si compra frecuentemente.

- ***PROVEEDORES***: Tabla que alojaremos datos de nuestros proveedores, la empresa quiere tener esta informacion ya que quiere saber con exactitud cuales son los que tienen sus productos ganadores de ventas web y de salon, para formar en un futuro grandes alianzas junto a esas marcas.

- ***COMPRAS***: Nuestra tabla de echos, por esta misma obtendremos el dato de mucho valor. Sabremos que productos son los que mas se venden, en que horario ya que el sector de marketing realiza ofertas espontaneas en horas no muy particulares, datos de cliente para llevar  un historial y asi poder ofrecerle algo mas personalizado y por ultimo de que deposito salio.

- ***PRODUCTO_COMPRAS***: Tabla que trata de normalizar nuestras tablas y obtener optimizacion de flujos de datos. Esta tendra datos del producto que compra y datos del cliente, estos mismo datos estan de forma secundaria en la tabla compras.

- ***DEPOSITOS***: Aca figuraran los datos de nuestros depositos, cuanta merccaderia almacena, su ubicacion, medir el trafico de entrada y salida de productos.

- ***PRODUCTO***: En esta tabla detallaremos la descripcion del producto, cantidad que hay en el stock actual para saber su reposicion, que proveedores lo tienen y su precio.
  

# Diagrama de DER

Como podemos ver todas nuestras tablas se conectan entre si, cada una de las tablas obtiene datos detallados de otras, en el proceso de expancion que tiene previsto la empresa se iran agregando mas en el diagrama para no dejar nada librado al azar y poder ser una de las empresas mas competitivos en latinoamerica. 

![image](https://github.com/Rodrigogaleann/Proyecto_SQL/assets/141097778/e71b4a64-8ba0-447b-8b81-bda77abc7b33)

# Parte de la segunad entrega

* Listado de Vistas más una descripción detallada, su objetivo, y qué tablas las componen.
* Listado de Funciones que incluyan una descripción detallada, el objetivo para la cual fueron creadas y qué datos o tablas manipulan y/o son implementadas.
* Listado de Stored Procedures con una descripción detallada, qué objetivo o beneficio aportan al proyecto, y las tablas que lo componen y/o tablas con las que interactúa
* Listado de Triggers

En esta segunda parte de la entrega notaremos modificaciones de talas e incluso la incorporacion de 2 tablas intermedias con relacion de muchos a muchos para optimizar nuestra base de datos. 

Estas tablas se tienen relacion de PROVEEDORES / PRODUCTOS y de PRODUCTOS / DEPOSITOS, para una rapida lectura de datos.

![image](https://github.com/user-attachments/assets/9d766dd7-c74a-4cae-9aeb-3ab397ea9c8e)

- ***DEPOSITOS_PRODUCTOS***: Es una tabla que se agrego para la rapida lectura de saber que productos contienen cada deposito ubicado en cada provincia. En la misma vamos encontrar un ID que va a contener el ID_DEPOSITO y el ID_PRODUCTO, de esa manera vamos a poder agilizar en cada consulta.

- ***PROVEEDORES_PRODUCTOS***: Es una tabla que se agrego para tambien tener una lectura rapida de ver que proveedores tiene cada producto que comercializamos. En la misma vamos a encontrar un ID que va a contener el ID_PROVEEDORES y el ID_PRODUCTO, de esa manera vamos a poder agilizar en cada consulta.

  ![image](https://github.com/user-attachments/assets/6a10a22f-dabc-4efc-bad8-f80bf0cb62cd)


## VISTAS

### Vista: VIEW_FILTER_NOMBRES
**Descripcion:** Esta vista muestra nombres completos con apellido de todas las transacciones que se realizaron.

**Columnas:** 
* **Id_Cliente:** Numero unico e identificaor de cleinte
* **Nombre:** Nombre de cada cliente
* **Apellido:** Apellido de cada cliente

**Ejemplo de consulta:**
```sql
    create or replace view 
     proyecto_ecommerce.view_filter_nombres
     AS(
     
     select nombre as 'nombre de cliente' , apellido as 'Apellido cliente' from clientes c 
     inner join compras c3 on c.id_cliente = c3.id_cliente_num 
     
     );
```


### Vista: VIEW_DEPOSITOS_PRODUCTOS
**Descripcion:** Esta vista nos muestra productos que tengan menos de 10 unidades en stock, para saber cuando realizar el proximo pedido o que esta necesitando la empresa.

**Columnas:** 
* **Nombre_Producto:** Nombre del producto
* **Cantidad:** Cantidades en stock

**Ejemplo de consulta:**
  ```sql

    create or replace view 
  proyecto_ecommerce.view_depositos_productos
  as (
   select nombre_producto , cantidad  from producto p 
   where cantidad < 10
   
  );
  ```
  

### Vista: VIEW_PRODUCTO_DEPOSITOS_PROVINCIAS 
**Descripcion:** Esta vista nos muestra los depositos de cada provincia y que tienen en stock en existencias, esto nos sirve pra tener un pantallaso general y rapido de lo que tenemos en cada uno de nuestros depositos.

**COLUMNAS**
* **Provincia:** Vamos a poder visualizar el deposito de cada provinicia y que productos tienen.
* **Nombre_Producto:** Nombre del producto.

**Ejemplo de consulta:**
```sql
    create or replace  view 
 proyecto_ecommerce.view_productos_depositos_provincias
 as (
       select Provincia ,  p.Nombre_Producto   from depositos d
        inner join depositos_productos dp on d.id_deposito  = dp.Id_Depositos 
        inner join producto p on dp.Id_Producto = p.id_producto
 
 );
```

## Documentación de Funciones 

### Función: Cantidad_Producto

**Descripción:** Esta funcion es para contabilizar la cantidad de productos que tenemos actualmente.

**Parámetros:**
* **Id_producto:** Identificador unico de cada producto

* **Retorno:**
* **Cantidad:** Esta funcion nos devuelve la cantidad de productos actuales que tenemos.

```sql
   ELECT proyecto_ecommerce.cantidad_producto();
``` 

### Función: Precios_con_iva

**Descripcion Esta funcion toma como para el id_producto y lo que hace es sumar el 10,5% a cada precio , por id consultado.

**Parametro** 
* **Id_producto:** Identificador unico de cada producto.

**Retorno**
* **Precio_con_iva:** Devuelve el precio del ID consultado con el valor de iva sumado.

```sql
SELECT proyecto_ecommerce.precios_con_iva(:id_producto);
```

## Documentación de Procedimientos Almacenados

### Procedimiento: etl_pagos_rechazados

**Descripción:** Este procedimiento muestras las transacciones con pagos rechazados.

* **Nombre y Apellido:** Datos provenientes de la tabla clientes concatenados con la sentencia CONCAT.
* **Pagos:** : Dato de tipo bool que nos trae 1 si es verdadero o 0 si es falso, en este caso nos traera todas las transacciones rechazadas.

**Ejemplo de uso:**

```sql
  call etl_pagos_rechazados
```
### Procedimiento:etl_dias_entregas_proveedor

**Descripción:** Este procedimiento nos muestra con facilidad los dias de entregas de los proveedores, para tener una mejor dinamica a la hora de los envios y abastecimientos.

* **Nombre_prov:** Nos traera los dias de entregas y los nombre de los proveedores

**Ejemplo de uso:**

```sql
   call etl_dias_entregas_proveedor
```

# ENTREGA FINAL

*TRIGGER, que cumplen una funcion escencial en el proyecto ya que son disparadores que se ejecutan antes o despues de una accion.
*BACKUP de tablas, datos, procediminetos , vistas y tiggers
*Usuarios, generacion de los mismos para que cada sector tenga un acceso a cada una de sus herramientas.
*NUEVAS TABLAS, para seguir teniendo una mejor optimizacion de las tablas y una mejor integridad se generaron 6 nuevas tablas, de las cuales una table es para auditorias sobre modoficaciones de clientes tomando los datos de sucursal y numeros de vendedr.

### NUEVAS TABLAS

![image](https://github.com/user-attachments/assets/beea56b9-f00d-4a0c-a2fc-b509e043ac0e)

- ***VEDEDORES*** : Tabla creada con datos de los vendedores desde su nombre y apellido hasta fecha de ingreso y el numero de sucursal actual.

- ***SUCURSALES*** : Tabla creada con el fin identificar las mismas con un numero unico, su nombre y provincia en la que se encuentra.

- ***VENDEDORES_COMPRAS***: Con el fin de optimizar mejor las relaciones y no tener redundancias de datos se creo una tabla intermedia entre COMPRAS y VENDEDORES para tener mas a mano la informacion de quien hizo cada venta.

- ***PAGOS_PROVEEDORES***: Se creo una tabla de transacciones para registrar todos los pagos a proveedores con su fecha y hora de cada transaccion realizada.


- ***LOGS_CLIENTES***: Tabla de registro, es una tabla que no tiene relacion con niniguna pero que guarda cada modificacion que se haga en cada cliente tomando los datos nuevos si los hay y que usuario los modifiico, con la fecha y hora.

![image](https://github.com/user-attachments/assets/4ec66505-083a-4073-9cf6-64a7d24e88ab)


### TRIGGER

> * "trg_check_ventas

> Este TRIGGERS se ejecuta DESPUES de agregar una venta que supera los $50.000.-, automaticamente se disparara si la venta suepra ese monto un mensaje que el cliente accede a un descuento que dispondra la empresa.

*Ejemplo
>Si un cliente realiza una compra de una notebook o de varios productos que superan el monto total de $50.000.- automaticamente acccede al descuento para su proxima compra.

- ***ESTRUCTURA***
```sql

drop trigger if exists trg_check_ventas ;
delimiter //
create trigger trg_check_ventas
after insert on proyecto_ecommerce.compras 
for each row
begin 
	
	if new.precio > 50000  then 
	signal sqlstate '45000'
	set message_text = 'Obtuvo un cupon de descuento de 15% en su proxima compra';
    end if;
end; //

DELIMITER

```
___

> * "check_stock

>Creado para alertar al sector administracion cada vez que un stock baje menos de 5 unidades y lograr a tiempo su reposicion.

*Ejemplo
>Si se realiza una venta de un producto del cual solo habia 6 unidades al descontar la unidad vendida saldra un cartel alertando al sector correspondiente que quedan pocas unidades.

- ***ESTRUCTURA***
```sql

drop trigger if exists check_stock;
DELIMITER //
create trigger check_stock 
before update on proyecto_ecommerce.producto 
for each row 
begin 
	
	if new.cantidad < 5 then 
		signal sqlstate '45000'
	set message_text = 'Se agota el stock, realizar pedido';
    end if;
end; //

DELIMITER

```

___

> * "Logs_clientes

>Este TRIGGERS fue creado con el fin de guardar cualquier modificacion que se haga sobre los datos de un cliente asi tomando el usuario que lo hizo , la fecha y el horario.

*Ejemplo
>Si un cliente su primera vez realizo una compra por tienda web y al tiempo se acerco hacia alguna de nuestras sucursales y modifico el email , podremos tener un registro del mismo de quien lo hizo y en que sucursal se encontraba.

- ***ESTRUCTURA***
```sql

drop trigger if exists logs_clientes
DELIMITER //
create trigger logs_clientes
after update on proyecto_ecommerce.clientes 
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

```

# BACKUP

Vamos dar el paso a paso de como hacer un back si es que se lo requiere desde la interfaz worckbench

* **PRIMERO**
Vamos al apartado del lado derecho de la pantalla, encontraremos 2 solapas, hacemos clicks en ADMINISTRATION.
<img width="950" alt="BACK 1" src="https://github.com/user-attachments/assets/664f33ad-dcd6-4111-962b-0dde60be2a25">

* **SEGUNDO**
Seleccionamos la opcion EXPORT
<img width="950" alt="BACK 2" src="https://github.com/user-attachments/assets/799673a1-a25d-44c3-91d2-d817e69740e6">

* **TERCERO**
Luego traera todas las bases de datos. Seleccionamos la bases a la cual queremos realzar el backup
<img width="950" alt="BACK 3" src="https://github.com/user-attachments/assets/fdea1edf-189e-41d0-9771-f6bfb6f0d853">

* **CUARTO**
A continuacion nos traera todas las tablas y objetos que tenga esa base de datos.

Tenemos una solapa en donde podemor seleccionar que queremos que nos traiga si la estructura con los datos, solo los datos o solo la estructura (color verde)
<img width="950" alt="BACK 4" src="https://github.com/user-attachments/assets/371c223f-68a0-4ece-b13c-fd62842e8e2e">

* **QUINTO**
Mas abajo encontraremos un apartado donde podemos tambien seleccionar si queremos que nos guarde los TRIGGER, VISTAS o LOS PROCEDIMIENTOS.

<img width="950" alt="BACK 5 3" src="https://github.com/user-attachments/assets/ab183645-abfb-409d-b2eb-19323896f485">


* **SEXTO**
Una vez seleccionado lo que queremos que nos traga , seleccionamos la carpeta o direccion  donde queremos guardar todos los datos

<img width="950" alt="BACK 5" src="https://github.com/user-attachments/assets/2cb8f2d1-a3a8-4daf-973a-27c7fba109de">


* **SEPTIMO**
Y por ultimo vamos a la solapa EXPORT PROGRESS y damos click en el boton que dice START EXPORT y comienza el proceso.

<img width="930" alt="BACK 7" src="https://github.com/user-attachments/assets/3aefc3c1-a7a2-44c3-8bf4-e61d65bbb996">

Al realizar este backup los que nos traera sera toda la infrormacion desde las tablas , esquemas y datos que completan la database creada.

El paso a paso indicado se realizo desde la interfaz de WORCKBENCH.
