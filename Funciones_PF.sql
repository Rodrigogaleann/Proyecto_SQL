--FUNCION, creada para contar la cantidad de productos totales que se comercializan

DELIMITER //

CREATE FUNCTION cantidad_producto(producto_id INT) RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE producto_count INT;
    
    SELECT COUNT(*) INTO producto_count
    FROM producto p 
    where id_producto = producto_id,
    
    
    RETURN producto_count;
END
//

DELIMITER ;

--FUNCION, creada para contar la cantidad de productos totales que se comercializan
CREATE DEFINER=`root`@`localhost` FUNCTION `proyecto_ecommerce`.`cantidad_producto`() RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE producto_count INT;
    
    SELECT COUNT(*) INTO producto_count
    FROM producto;
    
    RETURN producto_count;
end