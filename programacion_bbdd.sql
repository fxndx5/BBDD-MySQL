use sakila;

-- PROCESO/FUNCION EN MYSQL
DELIMITER $$ 
DROP PROCEDURE IF EXISTS Mostrar$$ 
CREATE PROCEDURE Mostrar() 
BEGIN 
	-- aqui va la logica del proceso(lo que hara)
    SELECT CONCAT('El mensaje ingresado') AS Mensaje;
END$$ 
-- Termina la creacion de mi proceso
DELIMITER ; 

call Mostrar();

SET GLOBAL log_bin_trust_function_creators = 1;


-- FUNCION/PROCESO CON VARIABLE INTRODUCIDAS
DELIMITER $$
 DROP PROCEDURE IF EXISTS MostrarNombre$$
 
 CREATE PROCEDURE MostrarNombre(IN nombre VARCHAR(100))
 BEGIN
	SELECT CONCAT('El nombre inglesado es: ' , nombre) AS Mensaje;
END$$

DELIMITER ;

CALL MostrarNombre('Hola Mundo');

DELIMITER $$ 
DROP PROCEDURE IF EXISTS Todas_Actor$$
CREATE PROCEDURE Todas_Actor()
BEGIN
	SELECT * FROM actor;
END$$
DELIMITER ;

CALL Todas_Actor();

DELIMITER $$
DROP PROCEDURE IF EXISTS Todas_Actores_Nombre$$
CREATE PROCEDURE Todas_Actores_Nombre(IN p_nombre VARCHAR(100))
BEGIN
	SELECT * FROM actor WHERE FIRST_NAME LIKE p_nombre;
END$$
DELIMITER ;
CALL Todas_Actores_Nombre('Penelope');

/*
DETERMINISTIC: La funcion siempre devuelve el mismo resultado
si los valores de entrada son los mios.
NOT DETERMINISTIC: La funcion puede devolver los resulyados
diferentes aunque los valores de entrada sean los mismos.
*/

DELIMITER $$
DROP FUNCTION IF EXISTS Cuadrado$$
CREATE FUNCTION Cuadrado(n INT) 
RETURNS INT DETERMINISTIC
BEGIN
    RETURN n * n;
END$$

DELIMITER ;
-- Con SELECT llamo a la funcion
SELECT Cuadrado(5);


DELIMITER $$
DROP FUNCTION IF EXISTS HoraActual$$
CREATE FUNCTION HoraActual() 
RETURNS DATETIME
BEGIN
    RETURN NOW();
END$$

DELIMITER ;
select HoraActual();

