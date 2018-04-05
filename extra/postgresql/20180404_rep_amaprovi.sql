CREATE TABLE padron_catastro
(
  id SERIAL PRIMARY KEY,
  codcat VARCHAR(35) NOT NULL,
  suministro VARCHAR(11) NOT NULL,
  nombres VARCHAR(80) NOT NULL,
  identificion VARCHAR(20),
  direccion VARCHAR(100),
  urbanizacion VARCHAR(45),
  sector VARCHAR(40),
  manzana INTEGER,
  lote INTEGER,
  tipser VARCHAR(14),
  estcon VARCHAR(11),
  estagu VARCHAR(19),
  estdes VARCHAR(19),
  sitcon VARCHAR(20),
  categoria VARCHAR(32),
  tipmed VARCHAR(32),
  tarifa VARCHAR(50)
)


-- CATEGORIAS DIFERENTES 
select 
f.categoria_agua,
p.sub_categoria,
p.nombres as nombre_padron, 
p.urbanizacion as nombre_habilitacion_padron, 
p.codsuministro as suministro_padron, 
f.codsuministro, 
f.estado_conexion, 
f.conexion, 
f.codencuestador, 
f.sector, 
f.manzana, 
f.lote, 
f.tipo_habilitacion,
f.nombre_habilitacion,
f.tipo_via,
f.nombre_via,
f.referencias
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
--where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion<>'' and
where (p.sub_categoria like '%DOMESTICO%'<> f.categoria_agua like '%DOMESTICO%') and p.urbanizacion='NASCA - APV AMAPROVI'
order by f.manzana asc