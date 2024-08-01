
--insercion de datos de la tabla clientes

INSERT INTO clientes  (nombre, apellido, domicilio, pais, email, activo) 
  VALUES
  ('Juan', 'Pérez', 'Av. Corrientes 1234', 'Argentina', 'juan.perez@gmail.com', TRUE),
  ('María', 'González', 'Calle Falsa 123', 'Argentina', 'maria.gonzalez@icloud.com', FALSE),
  ('Pedro', 'Rodríguez', 'Av. Siempre Viva 742', 'Argentina', 'pedro.rodriguez@outlook.com', TRUE),
  ('Laura', 'Fernández', 'Calle del Sol 258', 'Uruguay', 'laura.fernandez@gmail.com', FALSE),
  ('Carlos', 'López', 'Rambla Gandhi 1830', 'Uruguay', 'carlos.lopez@icloud.com', TRUE),
  ('Sofía', 'Martínez', '18 de Julio 1543', 'Uruguay', 'sofia.martinez@outlook.com', FALSE),
  ('Diego', 'Díaz', 'Alameda 3456', 'Chile', 'diego.diaz@gmail.com', TRUE),
  ('Camila', 'Sánchez', 'Providencia 2345', 'Chile', 'camila.sanchez@icloud.com', FALSE),
  ('Lucas', 'Romero', 'Av. Rivadavia 5678', 'Argentina', 'lucas.romero@outlook.com', TRUE),
  ('Valentina', 'Torres', 'Calle Esmeralda 9012', 'Argentina', 'valentina.torres@gmail.com', FALSE),
  ('Tomás', 'Suárez', 'Av. Belgrano 3456', 'Argentina', 'tomas.suarez@icloud.com', TRUE),
  ('Florencia', 'Ramírez', 'Calle Perú 7890', 'Argentina', 'florencia.ramirez@outlook.com', FALSE),
  ('Joaquín', 'Álvarez', 'Av. Santa Fe 1234', 'Argentina', 'joaquin.alvarez@gmail.com', TRUE),
  ('Martina', 'Benítez', 'Calle Paraná 5678', 'Argentina', 'martina.benitez@icloud.com', FALSE),
  ('Santiago', 'Domínguez', 'Av. Córdoba 9012', 'Argentina', 'santiago.dominguez@outlook.com', TRUE);
 

--insercion de datos de la tabla Porductos

insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Mouse inalambrico 15000 dpi RGB', 10 , 37046.62, 'Mouse Inalambrico');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Teclado retoriluminado RGB MECANICO', 2, 10112.41, 'Teclado logitech');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Auriculares con microfono', 6, 43653.96, 'Auriculares Gamers');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Auriculares inalambricos samsung con insonorisacion', 8, 47329.71, 'BUDS 2');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Notebook gamers con placa grafica incluida intel core i7', 23, 65762.15, 'Notebook ASUS G14');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Notebook gamers con placa grafica incluida intel core i5', 40, 97390.21, 'Notebook ASUS TUF');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Placa grafica con fuente incluida', 43, 3917.61, 'NVIDIDA Geforce RTX 3050');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Placa grafica sin fuente',96 , 1971.46, 'NVIDIDA Geforce RTX 3020');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Auriculares analogicos con bajos Xtreme', 32, 56154.53, 'Auricular JBL');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Mouse Gamer ASUS RGB 17000 dpi', 31211.97, 13003.57, 'Mouse ASUS');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Tecaldo retroiluminado mecanico', 18, 29596.58, 'Teclado Corsair');
insert into producto ( descripcion, cantidad, precio, nombre_producto) values ( 'Camara de con estabilizador de 50px', 2, 20130.82, 'WebCam XYPER');
select * from producto

--insercion de datos de la tabla Proveedores

insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Orn and Sons', 'Room 1598', 'lduchesne0@columbia.edu');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Bernier Group', 'Suite 56', 'tmelchior1@wufoo.com');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Pacocha-VonRueden', '7th Floor', 'bponte2@51.la');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Weber, Huels and Kautzer', '8th Floor', 'bbownd3@flavors.me');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Walsh, Yost and Gerlach', 'PO Box 96741', 'ftwidell4@seesaa.net');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Kohler, Mayert and Bartoletti', 'Room 1427', 'ysinson5@slideshare.net');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Frami-Gislason', '5th Floor', 'amcallaster6@google.fr');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Jerde-Nader', 'Suite 28', 'trothera7@state.gov');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ( 'Gleason-Kshlerin', 'PO Box 32098', 'rstayt8@miibeian.gov.cn');
insert into proveedores ( nombre_prov, domicilio_prov, email_prov) values ('Cummings, Greenfelder and Cronin', 'Apt 1226', 'mmitchelson9@sfgate.com');


--insercion de datos de la tabla depositos

INSERT INTO depositos (domicilio_dep, email, provincia)
VALUES
    ('Calle Falsa 123', 'usuario1@proecommerce.com', 'Buenos Aires'),
    ('Av. Siempre Viva 742', 'usuario2@proecommerce.com', 'Córdoba'),
    ('Pasaje Secreto 456', 'usuario3@proecommerce.com', 'Santa Fe'),
    ('Ruta Nacional 9 km 888', 'usuario4@proecommerce.com', 'Mendoza'),
    ('Camino al Río 159', 'usuario5@proecommerce.com', 'Tucumán'),
    ('Avenida Principal 357', 'usuario6@proecommerce.com', 'Salta'),
    ('Callejón Misterioso 951', 'usuario7@proecommerce.com', 'Entre Ríos'),
    ('Paseo de la Costa 753', 'usuario8@proecommerce.com', 'Neuquén'),
    ('Boulevard Central 159', 'usuario9@proecommerce.com', 'Río Negro'),
    ('Plaza Mayor 357', 'usuario10@proecommerce.com', 'Chubut');
    
 --insercion de datos de la tabla compras
 
INSERT INTO compras (id_cliente_num, pago, fecha, id_porducto_compra, cantidad, precio)
VALUES
  (22, true, '2023-06-15 10:34:09', 5, 1, 5400.50),
  (19, false, '2024-02-28 18:12:45', 12, 1, 25000.00),
  (25, true, '2023-09-03 21:56:12', 2, 2, 999.99),
  (17, true, '2024-01-10 08:23:51', 8, 1, 750.00),
  (28, false, '2023-11-21 14:01:37', 1, 1, 15000.00),
  (21, true, '2023-07-08 19:48:22', 6, 3, 250.50),
  (16, false, '2024-03-16 11:35:06', 9, 1, 80000.00),
  (30, true, '2023-12-29 20:22:49', 3, 1, 400.00),
  (24, true, '2023-08-17 16:59:34', 11, 2, 120.75),
  (18, false, '2024-04-05 09:17:20', 7, 1, 5000.00),
  (27, true, '2023-10-02 13:04:16', 4, 1, 65000.00),
  (20, false, '2024-05-13 22:51:01', 10, 1, 100000.00),
  (29, true, '2023-05-20 07:38:47', 1, 1, 3000.00),
  (23, true, '2024-01-07:26:33', 5, 1, 1800.00),
  (26, false, '2023-12-14 06:14:19', 12, 1, 900.50),
  (16, true, '2023-09-28 23:02:05', 8, 1, 4500.00),
  (29, false, '2024-02-22 12:49:50', 2, 2, 780.25),
  (21, true, '2023-11-09 04:37:36', 9, 1, 12000.00),
  (18, true, '2023-08-04 21:25:22', 3, 1, 650.00),
  (24, false, '2024-03-30 10:13:08', 6, 1, 23000.00);
  
 --insercion de datos de la tabla productos_compras
 
insert into productos_compras (id_compras_producto ,id_producto_compra)
  values  
     (1,5),
     (2,12),
     (3,2),
     (4,8),
     (5,1),
     (6,6),
     (7,9),
     (8,3),
     (9,11),
     (10,7),
     (11,4),
     (12,10),
     (13,1),
     (14,5),
     (15,12),
     (16,8),
     (17,2),
     (18,9),
     (19,3),
     (20,6);
     
--insercion de datos de la depositos_productos
   
 INSERT INTO depositos_productos (Id_Producto, Id_Depositos) VALUES
(3, 5),
(10, 2),
(1, 8),
(7, 1),
(4, 9),
(12, 3),
(6, 7),
(9, 4),
(2, 6),
(5, 10),
(11, 1),
(8, 7);

--insercion de datos de la proveedores_productos

INSERT INTO PROVEEDORES_PRODUCTOS (Id_Producto, Id_Proveedores) VALUES
(3, 5),
(10, 1),
(1, 8),
(7, 3),
(4, 6),
(12, 2),
(9, 9),
(3, 7), 
(6, 4),
(2, 10),
(5, 2),
(11, 8),
(8, 6),
(1, 3);

update proveedores 
set Dias_entregas = 'Miercoles y Jueves'
where id_proveedores = 7
  

insert into proveedores (Dias_entregas)
  values  ('Lunes y miercoles'),
          ('martes y jueves'),
          ('Lunes y miercoles'),
          ('Lunes y miercoles'),
          ('Miercoles , Jueves y Sabados'),
          ('Lunes y Viernes'),
          ('Lunes y Viernes'),
          ('Miercoles y Jueves y Sabados'),
          ('martes y jueves'),
          ('Lunes , Miercoles y Sabados');
