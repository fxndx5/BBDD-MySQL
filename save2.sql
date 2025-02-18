DROP DATABASE IF EXISTS escuelaBasica;
CREATE DATABASE IF NOT EXISTS escuelaBasica;
USE escuelaBasica;

CREATE TABLE ALUMNOS (

  NIF varchar(9) NOT NULL,

  Nombre varchar(50),

  Apellido1 varchar(50) ,

  Apellido2 varchar(50) ,

  Direccion varchar(200) ,

  Sexo varchar(1),

  FechaNacimiento date ,

  CodigoCurso varchar(10) NOT NULL,

  PRIMARY KEY (NIF),

  FOREIGN KEY (CodigoCurso) REFERENCES CURSOS (Codigo),

  CONSTRAINT constSexo CHECK (sexo IN('M' , 'H')));

ALTER TABLE alumnos add column edad int;
ALTER TABLE ALUMNOS DROP COLUMN EDAD;
ALTER TABLE ALUMNOS
ADD CONSTRAINT CHECK_EDAD CHECK (EDAD  BETWEEN 14 AND 65);
ALTER TABLE CURSOS
ADD CONSTRAINT CHECK_HORAS CHECK (HORAS IN (30, 40 OR 60));
ALTER TABLE ALUMNOS
DROP CONSTRAINT CONSTSEXO;

CREATE TABLE PROFESORES (

  NIF varchar(9) NOT NULL,

  Nombre varchar(50) UNIQUE ,

  Apellido1 varchar(50) ,

  Apellido2 varchar(50) ,

  Direccion varchar(200) ,

  Titulacion varchar(80) ,

  Salario int(6) NOT NULL,

  PRIMARY KEY (NIF));
ALTER TABLE PROFESORES DROP COLUMN DIRECCION;


CREATE TABLE CURSOS (

  Codigo varchar(10) NOT NULL,

  Nombre varchar(50),

  NIFProfesor varchar(11),

  MaximoAlumnos int(2),

  FechaInicio date,

  FechaFin date,

  Horas int(4) NOT NULL,

  PRIMARY KEY (Codigo),

  FOREIGN KEY (NIFProfesor) REFERENCES PROFESORES (NIF));
  
  
  ALTER TABLE CURSOS
  ADD CONSTRAINT CHECK_MXALUMNOS CHECK (MAXIMOALUMNOS >=15);
  ALTER TABLE CURSOS DROP COLUMN NIFPROFESOR;