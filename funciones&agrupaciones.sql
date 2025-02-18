SELECT * FROM world.city;

-- Suma/Recuento de poblacion por Districto
select district, sum(population)
from city
group by  district;

-- suma de poblacion total
select sum(population) as total_population
from city;

-- obterner el nombre de la ciudad con mayor poblacion y el num de pers
select name , max(population) as max_poblacion 
from city
group by name
order by Population desc limit 1;

-- obtener el recuento de la poblacion de las 5 ciudad (name) con mayor poblacion
select name,population
from city
order by population desc limit 5;

-- poblacion media cuando el codigo de pais es nld 
-- round es para redondear ROUND ( LO QUE SE QUIERE REDONDEAR, Nº DE DECIMALES)
select round(avg(population),0) as media_population
from city
where CountryCode = "NLD";

-- obtener el total de las ciudades por cada countrycode
select count(name) as total_ciudades
from city
where CountryCode= "NLD"
group by CountryCode;

-- obtener el total de ciudades por cada countrycode
-- ordenadas de mayor a menor numero de ciudades por pais
-- en caso de tener el mismo numero de ciudades ordenar por codpais alfabe
-- cuando la poblacion sea 250k
-- y el pais tenga mas de 5 ciudades
select  CountryCode ,count(name) as total_ciudades
from city
where population >250000
group by CountryCode
having total_ciudades >5
order by count(name)  desc , CountryCode asc  ;

-- obtener nombre de ciudad cuando codigo de pais es nld
select name, countryCode
from city
where CountryCode = "NLD";
-- ordenador de mayor a menor poblacion
select name, population
from city
order by Population desc;
