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
