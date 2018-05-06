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
where (p.sub_categoria like '%DOMESTICO%' <> f.categoria_agua like '%DOMESTICO%') and p.urbanizacion='NASCA - APV AMAPROVI'
order by f.manzana asc

-- SUMINISTROS TOCADOS
select p.urbanizacion,*
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion <> ''

-- SUMINISTROS AUN NO TOCADOS -- TOTAL 49
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
where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null  
order by f.manzana asc

-- PADRON PARA BUSQUEDA DE CLIENTES AUN NO ENCONTRADOS EN CAMPO (SUMINISTROS AUN NO TOCADOS -- TOTAL 49)
select 
p.urbanizacion as nombre_habilitacion, 
p.nombre_via as nombre_via,
--p.sub_categoria as categoria,
p.nombres as nombre, 
p.codsuministro as suministro_padron, 
f.estado_conexion, 
f.conexion, 
f.codencuestador
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null  
order by f.manzana asc


-- SUMINISTROS ENCONTRADOS AMAPROVI
select 
p.codsuministro as suministro_padron, 
p.nombres as nombre_padron, 
--r.nombres ||' '||r.apellido_pat as nombres,
f.tipo_via||' '||f.nombre_via ||' '|| f.num_municipal as nombre_via_ficha, -- ficha 
f.tipo_habilitacion||' '||f.nombre_habilitacion as nombre_habilitacion_ficha, -- ficha

f.categoria_agua as categoria_ficha, -- ficha
p.sub_categoria as sub_categoria_padron, -- padron

f.tipo_servicio as tipo_servicio_ficha, -- ficha
p.tipo_servicio as tipo_servicio_padron, -- padron
p.estado_servicio as estado_servicio_padron, --padron

p.estado_agua as estado_agua_padron, -- padron
f.estado_agua as estado_agua_ficha, -- ficha

p.estado_desague as estado_desague_padron -- padron
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
--inner join nasca.responsable r
--on f.id = r.idficha
--where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null --<>'' 
where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion <> '' --and r.tipo_resp='R'
order by f.manzana asc


-- CAMBIOS DE CATEGORIA POR HABILITACION
select 
p.codsuministro as suministro_padron, 
p.nombres as nombre_padron, 
--r.nombres ||' '||r.apellido_pat as nombres,
f.tipo_via||' '||f.nombre_via ||' '|| f.num_municipal as nombre_via_ficha, -- ficha 
f.tipo_habilitacion||' '||f.nombre_habilitacion as nombre_habilitacion_ficha, -- ficha

f.categoria_agua as categoria_agua_ficha, -- ficha
f.categoria_desague as categoria_desague_ficha, --ficha
p.sub_categoria as sub_categoria_padron, -- padron

f.tipo_servicio as tipo_servicio_ficha, -- ficha
p.tipo_servicio as tipo_servicio_padron, -- padron
p.estado_servicio as estado_servicio_padron, --padron

p.estado_agua as estado_agua_padron, -- padron
f.estado_agua as estado_agua_ficha, -- ficha

p.estado_desague as estado_desague_padron -- padron
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
--where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null --<>'' 
--where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion <> '' --and r.tipo_resp='R'
where (p.urbanizacion='NASCA - APV AMAPROVI') and
	  (p.sub_categoria like '%DOMESTICO%' <> f.categoria_agua like '%DOMESTICO%' or
	  p.sub_categoria like '%COMERCIAL%' <> f.categoria_agua like '%COMERCIAL%' or 
	  p.sub_categoria like '%ESTATAL%' <> f.categoria_agua like '%ESTATAL%' or
	  p.sub_categoria like '%INDUSTRIAL%' <> f.categoria_agua like '%INDUSTRIAL%' or
	  p.sub_categoria like '%SOCIAL%' <> f.categoria_agua like '%SOCIAL%') 
order by f.manzana asc


-- CAMBIOS DE CATEGORIA POR HABILITACION (DIFERRENTE CATEGORIA AGUA Y DESAGUE CATASTRO COMERCIAL A SUBCATEGORIA PADRON EPS)
select 
f.codencuestador,

p.codsuministro as suministro_padron, 
p.nombres as nombre_padron, 
r.nombres ||' '||r.apellido_pat as nombres,
f.tipo_via||' '||f.nombre_via ||' '|| f.num_municipal as nombre_via_ficha, -- ficha 
f.tipo_habilitacion||' '||f.nombre_habilitacion as nombre_habilitacion_ficha, -- ficha

f.categoria_agua as categoria_agua_ficha, -- ficha
f.categoria_desague as categoria_desague_ficha, --ficha
p.sub_categoria as sub_categoria_padron, -- padron

f.tipo_servicio as tipo_servicio_ficha, -- ficha
p.tipo_servicio as tipo_servicio_padron, -- padron
p.estado_servicio as estado_servicio_padron, --padron

p.estado_agua as estado_agua_padron, -- padron
f.estado_agua as estado_agua_ficha, -- ficha

p.estado_desague as estado_desague_padron -- padron
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
inner join nasca.responsable r
on f.id = r.idficha
--where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null --<>'' 
--where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion <> '' --and r.tipo_resp='R'
where (p.urbanizacion='NASCA - APV AMAPROVI') and
	  (p.sub_categoria like '%DOMESTICO%' <> f.categoria_agua like '%DOMESTICO%' AND
	  p.sub_categoria like '%DOMESTICO%' <> f.categoria_desague like '%DOMESTICO%' OR
	  p.sub_categoria like '%COMERCIAL%' <> f.categoria_agua like '%COMERCIAL%' AND
	  p.sub_categoria like '%COMERCIAL%' <> f.categoria_desague like '%COMERCIAL%'  OR
	  p.sub_categoria like '%ESTATAL%' <> f.categoria_agua like '%ESTATAL%' AND
	  p.sub_categoria like '%ESTATAL%' <> f.categoria_desague like '%ESTATAL%' OR
	  p.sub_categoria like '%INDUSTRIAL%' <> f.categoria_agua like '%INDUSTRIAL%' AND
	  p.sub_categoria like '%INDUSTRIAL%' <> f.categoria_desague like '%INDUSTRIAL%' OR
	  p.sub_categoria like '%SOCIAL%' <> f.categoria_agua like '%SOCIAL%' AND 
	  p.sub_categoria like '%SOCIAL%' <> f.categoria_desague like '%SOCIAL%') AND
	  estado_conexion <> ''
order by f.manzana asc

-- ALVARO NO SEAS SAPO
-- VERIFICACION DE HABILITACION, SECTOR_OPERA Y SUB_OPERA
select count(*) from nasca.ficha
where manzana in (
'0875',
'0880',
'0881',
'0883',
'0885',
'0890',
'0895',
'0900',
'0905',
'0910',
'0965',
'0970',
'0975',
'0980',
'0985',
'0986',
'0987',
'0988',
'0989',
'0990',
'0991',
'0992',
'0993',
'0994',
'0995',
'0996',
'0997',
'0998',
'0999') and sector_opera='01' and subsector='001'


-- ELIMINACION DE REGISTROS SIN CODIGO SUMINISTRO (NO FUERON LLENADOS CORRECTAMENTE)
delete from nasca.ficha
where id in (
select id from nasca.ficha
where manzana='0365' and sector='01' and codencuestador is null-- and codencuestador='E16'
)


-- ELIMINAR VALORES DE UN REAL CON SUMINISTRO (PROPIETARIO ASIGNADO INCORRECTAMENTE)
update nasca.ficha
set 
sucursal='01', 
distrito=null, 
sector=null, 
manzana=null, 
lote=null, 
conexion=null, 
subsector=null, 
sector_opera=null, 
tipo_habilitacion=null, 
nombre_habilitacion=null, 
comuna=null, 
manzana_mun=null, 
lote_mun=null, 
sublote_mun=null, 
tipo_poblacion=null, 
geocodigo=null, 
coordenada_x=null,
coordenada_y=null,
coordenada_z=null,
tipo_via=null,
nombre_via=null,
telefono=null, 
estado_servicio=null, 
tipo_servicio=null, 
referencias=null, 
num_municipal=null, 
ruta_distribucion=null, 
tipo_construccion=null, 
estado_construccion=null, 
grupo_caracteristico=null, 
ciiu=null, 
quien_habita=null, 
num_familias=null, 
num_habitantes=null, 
secuencia=null, 
estado_agua=null, 
categoria_agua=null, 
tipo_cobranza_medicion=null, 
macrosector_agua=null, 
sector_agua=null, 
cantidad_predios=null, 
tipo_consumidor=null,
caja_registro=null,
estado_caja_agua=null,
acometida_tuberia=null,
diametro_acometida=null,
tapa=null,
pavimento=null,
localizacion_conexion=null,
ubicacion_metros=null,
estado_tapa=null,
multiusuario_agua=null,
tiene_fuga=null,
estado_desague=null,
categoria_desague=null,
macrosector_desague=null,
sector_desague=null,
red_distribucion_desague=null,
tipo_material_tuberia=null,
diametro_tubo=null,
tipo_caja=null,
estado_caja=null,
localizacion_caja=null,
obstruido=null,
ubicacion_metros_desague=null,
marca_medidor=null,
num_medidor=null,
lectura=null,
diametro_medidor=null,
estado_medidor=null,
posicion_medidor=null,
valvula=null,
tipo_medidor=null,
seguridad_medidor=null,
vereda=null,
pista=null,
pozo_artesanal=null,
tipo_almacenamiento=null,
num_pisos=null,
frec_horas_abastecimiento=null,
frec_dias_abastecimiento=null,
medidas_fachada=null,
presion_agua=null,
observaciones=null,
fecregistro=null,
fecactualiza=null,
ubicacion_conexion_fila=null,
ubicacion_conexion_columna=null,
codencuestador=null,
estado_obstruido=null,
fuga=null,
fectrabajada=null
where id='5825'

select * from nasca.responsable
where idficha='2725'

select * from nasca.unidad_uso
where idficha='2725'

-- **** fin (PROPIETARIO ASIGNADO INCORRECTAMENTE) ****

-- UPDATE TIPO_HABILITACION, NOMBRE_HABILITACION, SUBSECTOR AND SECTOR_OPERA
update nasca.ficha
set tipo_habilitacion='URB.', nombre_habilitacion='LOS_JARDINES', subsector='003', sector_opera='01'
where manzana='0245' and sector='01'

-- **** fin (UPDATE TIPO_HABILITACION, NOMBRE_HABILITACION, SUBSECTOR AND SECTOR_OPERA) ****

-- ONLY SERVICE DRAIN 'D'. VALUES WATER SET NULL 
update nasca.ficha
set estado_agua=null, --
categoria_agua=null, --
tipo_cobranza_medicion=null, --
macrosector_agua=null, --
sector_agua=null, --
cantidad_predios=null, --
tipo_consumidor=null, --
caja_registro=null, --
estado_caja_agua=null, --
acometida_tuberia=null, --
diametro_acometida=null, --
tapa=null, --
pavimento=null, --
localizacion_conexion=null, --
ubicacion_metros=null,--
estado_tapa=null, --
multiusuario_agua=null, --
fuga=null
where id='13216'

-- **** END (ONLY SERVICE DRAIN 'D'. VALUES WATER SET NULL) ****

-- ONLY SERVICE WATER (A). VALUES DRAIN SET NULL
update nasca.ficha
set estado_desague=null,
categoria_desague=null, 
macrosector_desague=null,
sector_desague=null,
red_distribucion_desague=null,
tipo_material_tuberia=null,
diametro_tubo=null,
tipo_caja=null, 
estado_caja=null,
localizacion_caja=null,
obstruido=null,
ubicacion_metros_desague=null
where id='97'

-- **** END (ONLY SERVICE WATER (A). VALUES DRAIN SET NULL) ****