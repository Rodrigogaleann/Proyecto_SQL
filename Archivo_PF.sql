drop database if exists proyecto_ecommerce;

create database proyecto_ecommerce;

use proyecto_ecommerce;

create table CLIENTES(
id_cliente int primary key auto_increment,
nombre varchar(100) NOT NULL,
apellido varchar(100) NOT NULL,
dni VARCHAR(15) NOT NULL,
domicilio varchar(100) NOT NULL,
localidad varchar(100) not null ,
pais varchar(100) NOT NULL,
email varchar(50) unique NOT NULL,
nacimiento date NOT NULL,
activo boolean default true
);


create table PRODUCTO(
id_producto int primary key auto_increment,
descripcion varchar(200) NOT NULL default 'PRODUCTO DESCONOCIDO',
cantidad int NOT NULL,
precio decimal(10,2) NOT NULL,
id_proveedores_prod int NOT NULL
);


create table DEPOSITOS(
id_deposito int primary key auto_increment,
domicilio_dep varchar(100),
id_producto_dep int NOT NULL,
cantidad_dep int NOT NULL
);


create table PROVEEDORES(
id_proveedores int primary key auto_increment,
id_producto_prov int NOT NULL,
nombre_prov varchar(100),
cuit_prov varchar(15) NOT NULL,
domicilio_prov varchar(100) NOT NULL,
dias_entregas varchar (100),
email_prov varchar(100) unique NOT NULL,
precio decimal (10,2) 
);


create table PRODUCTOS_COMPRAS(
id_producto_compra int primary key NOT NULL,
id_compras_producto int primary key NOT NULL,
cantidad int
);


create table COMPRAS(
id_compra int primary key auto_increment,
id_cliente_num int,
pago boolean default true,
fecha datetime default (current_timestamp)
);


create table Paises (
Id_Pais int primary key auto_increment not null,
Pais varchar (50)
);

create table Pagos_Proveedores (
Id_Pago Int primary key auto_increment not null,
Id_proveedores int not null,
Monto float (12.2),
Fecha datetime 
);

create table Vendedores (
Id_Vendedor int primary key auto_increment not null,
Nombre varchar(100),
Apellido varchar(100),
Fecha_Ingreso date,
Id_Sucursal int
);

create table Vendedores_Compras(
Id_vendedores int,
Id_Compras int,
Fecha date
);

create table Sucursales(
Id_Sucursal int primary key auto_increment not null,
Nombre_Sucursal varchar(100),
Provincia varchar (100)
);

--ALTERACIONES DE FOREIGN KEY EN LAS TABLAS 
--ALTERACIONES DE FOREIGN KEY EN LAS TABLAS 
--ALTERACIONES DE FOREIGN KEY EN LAS TABLAS 
alter table producto 
  add constraint fk_proveedores_prod
  foreign key (id_proveedores_prod) references proveedores(id_proveedores)
  ;
 
alter table depositos
  add constraint fk_productos_dep
  foreign key (id_producto_dep) references producto(id_producto)
  ;
 
alter table proveedores 
  add constraint fk_producto_proveedor
  foreign key (id_producto_prov) references producto(id_producto)
  ;
 
alter table productos_compras 
  add constraint fk_producto_compra
  foreign key (id_producto_compra) references producto(id_producto)
  ;
  
 alter table productos_compras 
  add constraint fk_compra_producto
  foreign key (id_compras_producto) references compras(id_compra)
  ;
 
 alter table compras 
  add constraint fk_id_cliente_num
  foreign key (id_cliente_num) references clientes(id_cliente)

 alter table clientes 
  add constraint FK_paises_clientes
   foreign key (Pais) references Paises(Id_Pais)

 alter table pagos_proveedores 
  add constraint FK_Pago_Proveedores
   foreign key (Id_proveedores) references proveedores (Id_proveedores)

alter table vendedores_compras 
 add constraint FK_compras_vendedorescompras
   foreign key (Id_Compras) references Compras(Id_compra)

 alter table vendedores_compras 
 add constraint FK_Vendedor_vendedorescompras
   foreign key (Id_Vendedores) references vendedores (Id_Vendedor)

alter table vendedores 
 add constraint FK_vendedores_sucursal
   foreign key (Id_Sucursal)  references Sucursales(Id_Sucursal)
