SELECT * FROM nba.equipos;

-- OBTEMER NOMBRE DE JUGADORES, PROCEDENCIA Y EQUIPOEN EL QUE JUEGAN
use nba;
select equipos.nombre, jugadores.nombre, jugadores.procedencia
from equipos , jugadores
where equipos.nombre = jugadores.nombre_equipo;
-- alias
select eq.nombre, j.nombre, j.procedencia
from equipos eq, jugadores j
where eq.nombre = j.nombre_equipo;
-- OBTEN NOMBRE DE JUHADPRES Y PTOS POR PARTIDO DE LOS QUE PESAN MAS DE 230
select j.codigo , es.puntos_por_partido
from jugadores j, estadisticas es
where j.codigo = es.jugador 
and j.peso > 250;
-- obtener los nombres de judagores y media de ptos por partido de los que pesan
-- mas de 250 ordenados de mayor a menos puntos (59 row)
select j.nombre , avg (es.puntos_por_partido) as media_puntos
from jugadores j, estadisticas es
where j.codigo = es.jugador
and j.peso > 250 
group by es.puntos_por_partido
order by es.puntos_por_partido desc;