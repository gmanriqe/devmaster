-- ACTUALIZACION DE COORDENADAS X y COORDENADAS Y
-- IN SQL SERVER
update f
set f.coordenada_x = c.coordenadax,
f.coordenada_y = c.coordenaday
from nasca.ficha f
inner join nasca.coordenada c
on f.id = c.numficha

-- RECUERDA QUE SUBISTE LAS COORDENADAS EN OTRA TABLA.
-- PARA PASAR LOS VALORES DE UNA A OTRA EN SQL SERVER DEBES HACER UN JOIN, MIENTRAS QUE EN POSTGRESQL ES DE LA SGTE MANERA
-- IN POSTGRESQL
update nasca.ficha
set coordenada_x = c.coordenadax,
coordenada_y = c.coordenaday
from nasca.coordenada c
where id = c.numficha

-- RUTA Y SECUENCIA
update nasca.ficha
set secuencia = s.secuencia,
ruta_distribucion = s.ruta
from nasca.secuencia s
where id = s.numsecuencia
