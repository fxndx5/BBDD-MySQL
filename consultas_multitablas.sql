SELECT * FROM world.city;
-- CLASE 15/01 MULTITABLA CONSULTAS
select * 
from country, countrylanguage
where country.code = countrylanguage.CountryCode;

-- NOMBRE DEL PAIS Y LENGUAJE QUE HABLA
-- CUANDO EL AREA DE SUPERFIOCIE SEA MAYOR A 150000

select country.name, countrylanguage.language
from country , countrylanguage
where country.code = countrylanguage.countrycode 
and country.SurfaceArea > 150000;

-- EXTRAE NOMBRE DE LOS PAISES Y LENGUAJE CUYO
-- NOMBRE DEL PAIS EMPIECE POR B

select country.Name, countrylanguage.Language
from country, countrylanguage
where country.code = countrylanguage.countrycode 
and country.Name like 'B%';

-- NOMBRE DE LAS CIUDADES Y POBLACION(CIUDADES) CUANDO
-- EL NOMBRE DEL PAIS SEA BELGIUM
select city.name , city.Population, country.name
from city, country
where city.CountryCode = country.code 
and country.name like 'Belgium';
-- ABREVIATURA
-- SELECT C.NAME, C.POPULATION
-- FROM CITY C, COUNTRY CO
-- WHERE CO.CODE = C.COUNTRYCODE
-- AND CO.NAME LIKE 'BELGIUM';


-- 