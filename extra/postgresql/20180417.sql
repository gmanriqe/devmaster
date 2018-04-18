-- CRUCE DE INFORMACION PARA REPORTE EMAPAVIG SAC - PROYECTO CATASTRO NASCA 2018 - SECTOR 01

-- RECUERDA: EN EL ON CON AND SIGINIFICA UN MATCH CON CONDICIONAL

-- ************************************************
-- SECTOR 01
-- ************************************************
-- URB. AMAPROVI -- NASCA - APV AMAPROVI
-- URB. ASOCIACION_JOSE_CARLOS_MARIATEGUI -- NASCA -  JOSE  CARLOS MARIATEGI
-- CU. CERCADO_NASCA -- NASCA - URB CASCO URBANO
-- URB. FONAVI -- NASCA - URB CASCO URBANO
-- URB. LOS_JARDINES -- NASCA - PJ LOS JARDINES
-- URB. SAN_MAURICIO --  NASCA - URB SAN MAURICIO
-- URB. SANTA_ISABEL -- NASCA - URB SANTA ISABEL
-- URB. CARCELEN -- FUNDO CARCELEN - CUADROS
-- AAHH. UNION_VICTORIA -- NASCA - PJ UNION VICTORIA

-- *** 1.CLANDESTINA ***
-- *********************

select  
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via as direccion,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
-- CATEGORIA ANTERIOR NO EXISTE
f.categoria_agua,
f.categoria_desague,
f.tipo_servicio,
case
	when f.estado_agua is null then '-'
	when f.estado_agua='ACTIVO' then 'ACTIVO'
	when f.estado_agua='CORTADO' then 'CORTADO'
end as estado_agua,
case
	when f.estado_desague is null then '-'
	when f.estado_desague='ACTIVO' then 'ACTIVO'
	when f.estado_desague='CORTADO' then 'CORTADO'
end as estado_desague,
f.grupo_caracteristico,
f.estado_construccion,
f.grupo_caracteristico,
f.observaciones,
f.id
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R' 
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P' 
where nombre_habilitacion='AMAPROVI' and estado_conexion='CLANDESTINA' 
order by direccion asc

-- *** 2.CAMBIOS DE TARIFA ( CATEGORIA ) ***
-- *****************************************

select 
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codencuestador,

p.codsuministro as suministro_padron, 
r.nombres ||' '||r.apellido_pat as nombres,
f.tipo_via||' '||f.nombre_via ||' '|| f.num_municipal as nombre_via_ficha, -- ficha 
f.tipo_habilitacion||' '||f.nombre_habilitacion as nombre_habilitacion_ficha, -- ficha

f.categoria_agua as categoria_agua_ficha, -- ficha
f.categoria_desague as categoria_desague_ficha, --ficha
p.sub_categoria as sub_categoria_padron, -- padron

f.grupo_caracteristico
from nasca.ficha f
left join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
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

-- *** 3. UNIDADES DE USO ***
-- **************************

select distinct
p.urbanizacion,
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via||' '||f.num_municipal as direccion,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua as categoria_agua,
f.categoria_desague as categoria_desague,
f.grupo_caracteristico,
f.observaciones,
* 
from nasca.ficha f
left join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = rp.idficha and r.tipo_resp='P'
where f.estado_conexion='REAL' and p.urbanizacion='NASCA - APV AMAPROVI'


-- *** 4. SITUACION DE CONEXION ***
-- ********************************

select distinct
p.urbanizacion,
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via||' '||f.num_municipal as direccion,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua as categoria_agua,
f.categoria_desague as categoria_desague,
f.estado_agua,
f.estado_desague,
f.estado_construccion,
f.observaciones,
* 
from nasca.ficha f
left join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = rp.idficha and r.tipo_resp='P'
where f.estado_conexion='REAL' and p.urbanizacion='NASCA - APV AMAPROVI'

-- *** 5.TIPO DE SERVICIO ***
-- **************************

select distinct
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via||' '||f.num_municipal as direccion,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua as categoria_agua,
f.categoria_desague as categoria_desague,
f.estado_agua,
f.estado_desague,
f.tipo_servicio,
f.estado_construccion,
f.observaciones,
* 
from nasca.ficha f
left join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = rp.idficha and r.tipo_resp='P'
where f.estado_conexion='REAL' and p.urbanizacion='NASCA - APV AMAPROVI'

-- *** 6. PREDIOS NO UBICADOS ***
-- ******************************

select
p.codcatastral,
p.codsuministro,
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
p.urbanizacion,
f.referencias
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion is null
