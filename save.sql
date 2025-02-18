create database camioneros;
use camioneros;
create table camionero(
dni int (9) not null,
nombre varchar(100)not null,
apellido varchar (100),
puesto varchar (100) not null default 'camionero',
primary key (dni)
);
insert into camionero (dni,nombre,apellido, puesto)
values (123456789, 'marta','perez', 'encargado'),
(123456123, 'marta','diaz', 'camionero'),
(123456456, 'marta','val','encargado');
create table camion(
matricula int (9)not null,
modelo varchar(100) default 'citroen',
dni_camionero int (9) not null,
primary key (matricula)
);
alter table camionero add index camionero(nombre);
alter table camionero add index camionero(apellido);
ALTER TABLE camion
ADD COLUMN nombre_camionero varchar (100) not null,
ADD CONSTRAINT fk_camonero_camion FOREIGN KEY (fk_camonero_camion)
REFERENCES camionero(nombre);
use clientes;
select * from cliente;
INSERT INTO cliente 
values (1, 'ANTONIO', 'Calle a','958958958', 'A@GMAIL.COM', 1, 1);

INSERT INTO cliente 
values (2, 'ANTONIO', 'Calle b','958958958', 'A2@GMAIL.COM', 1, 1),
(5, 'ana', 'Calle c','958958958', 'Ana@GMAIL.COM', 1, 1),
(4, 'juan', 'Calle a','958958958', 'j@GMAIL.COM', 1, 1);

DELETE FROM CLIENTE
WHERE ID = 4;

DELETE FROM CLIENTE WHERE NOMBRE = 'ANTONIO';
/*
%a -> termina en a
a% -> comienza por a
%hola% -> contiene hola
*/
delete from cliente where direccion like '%c';
delete from cliente where email like 'A@GMAIL%';

ALTER TABLE CLIENTE ADD EDAD INT;
ALTER TABLE CLIENTE MODIFY EDAD DOUBLE;
ALTER TABLE CLIENTE DROP EDAD;
ALTER TABLE old_table_name RENAME TO new_table_name; 

create index idx_nombre_email on cliente (nombre, email);
DROP INDEX idx_nombre_email ON CLIENTE;



UPDATE CLIENTE 
SET telefono = '925212536' 
WHERE nombre = 'juan';

UPDATE cliente
SET DIRECCION = 'ies el lago', email = 'iesellago@gmail.com'
WHERE ACTIVO < 18;

select * from cliente;
