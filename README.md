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
