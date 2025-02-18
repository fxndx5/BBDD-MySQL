use nba;
-- CLASE 22/01/2025
-- PRODUCTOS CART6ECIANOS
select equipos.Nombre, jugadores.Nombre,jugadores.Procedencia
from equipos 
where equipos.Nombre = jugadores.Nombre_equipo;
-- JOIN
select equipos.Nombre, jugadores.Nombre,jugadores.Procedencia
from equipos 
inner join jugadores
on equipos.Nombre = jugadores.Nombre_equipo;
-- USANDO ALIAS
select e.nombre,j.nombre,j.procedencia
from equipos e
inner join jugadores j
on e.nombre = j.Nombre_equipo;
-- TOP 10 NOMBRES JUGADORES CON MAS REBOTES POR PARTIDO USANDO inner join
select jugadores.Nombre, estadisticas.Rebotes_por_partido
from estadisticas
inner join jugadores
on jugadores.codigo = estadisticas.jugador
order by estadisticas.Rebotes_por_partido desc limit 10;
-- USANDO pc
select jugadores.Nombre, estadisticas.Rebotes_por_partido
from estadisticas, jugadores
where jugadores.codigo = estadisticas.jugador
order by estadisticas.Rebotes_por_partido desc limit 10;

-- en la temporada 98/99 sacar los nombres de todos los jugadores pertenecientes
-- al equipos de los 'mavericks' como equipo local
select partidos.temporada, jugadores.nombre,equipos.Nombre
from partidos , equipos, jugadores
where partidos.equipo_local = equipos.Nombre
and equipos.Nombre = jugadores.Nombre_equipo
and partidos.temporada = '98/99' and equipos.Nombre = 'Mavericks';
-- INNER JOIN 
select partidos.temporada, jugadores.nombre,equipos.Nombre
from partidos  INNER JOIN EQUIPOS ON partidos.equipo_local = equipos.Nombre
INNER JOIN jugadores on equipos.nombre = jugadores.Nombre_equipo
where partidos.temporada = '98/99' and equipos.Nombre = 'Mavericks';
