-- LIMPIANDO BASE DE DATOS
select * 
from nasca.ficha 
where estado_conexion<>'REAL' and codsuministro is not null

select * 
from nasca.ficha 
where (estado_conexion='REAL' and codsuministro is null) OR (estado_conexion='REAL' and codsuministro='null')

select * 
from nasca.ficha 
where estado_conexion is not null 

select * 
from nasca.ficha 
where estado_conexion='CLANDESTINA' 

select * 
from nasca.ficha 
where estado_conexion='POTENCIAL' 

select * 
from nasca.ficha 
where estado_conexion='FACTIBLE' 

select * 
from nasca.ficha 
where estado_conexion='REAL'

-- INFORME ING. JUAREZ - GERENTE COMERCIAL EMAPAVIGS SAC ********
-- CONEXIONES ACTIVAS DE AGUA REGISTRADAS EN PROYECTO CATASTRO, PERO NO EN LA BASE DE DATOS DE EPS
-- CONEXIONES ACTIVAS DE DESAGUE REGISTRADAS EN PROYECTO CATASTRO, PERO NO EN LA BASE DE DATOS DE EPS
-- CONEXIONES ACTIVAS DE AGUA Y DESAGUE REGISTRADAS EN PROYECTO CATASTRO, PERO NO EN LA BASE DE DATOS DE EPS
select  
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via as direccion,
f.num_municipal,
f.manzana_mun,
f.lote_mun,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua, -- CATEGORIA DEL AGUA PROYCAT
f.categoria_desague, -- CATEGORIA DEL DESAGUE PROYCAT
f.tipo_servicio,
f.grupo_caracteristico,
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
f.estado_construccion,
f.observaciones,
sector,
f.id
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R' 
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P' 
where sector='04' and estado_conexion='CLANDESTINA' and tipo_servicio='AD' and estado_desague='ACTIVO' and estado_agua='ACTIVO'
order by habilitacion asc

-- ACTIVO EN PROYECTO CATASTRO PERO CORTADO EN PADRON EPS - AGUA
select 
f.estado_agua, 
upper(p.estado_agua) as estado_agua_padronEPS, 
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via as direccion,
f.num_municipal,
f.manzana_mun,
f.lote_mun,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua, -- CATEGORIA DEL AGUA PROYCAT
f.categoria_desague, -- CATEGORIA DEL DESAGUE PROYCAT
f.grupo_caracteristico,
f.estado_construccion,
f.observaciones,
f.codsuministro,
f.sector
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P'
where (f.sector='02' and f.estado_conexion='REAL') and f.tipo_servicio='A' 
and (f.estado_agua like '%ACTIVO%' <> p.estado_agua like '%Activo%')
order by habilitacion asc

-- ACTIVO EN PROYECTO CATASTRO PERO CORTADO EN PADRON EPS - DESAGUE
select distinct 
f.estado_desague, 
upper(p.estado_desague) as estado_agua_padronEPS,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via as direccion,
f.num_municipal,
f.manzana_mun,
f.lote_mun,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua, -- CATEGORIA DEL AGUA PROYCAT
f.categoria_desague, -- CATEGORIA DEL DESAGUE PROYCAT
f.grupo_caracteristico,
f.estado_construccion,
f.observaciones,
f.codsuministro,
f.sector
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P'
where (f.sector='02' and f.estado_conexion='REAL') and f.tipo_servicio='D' 
and (f.estado_desague like '%ACTIVO%' <> p.estado_desague like '%Activo%')

-- ACTIVO EN PROYECTO CATASTRO PERO CORTADO EN PADRON EPS - DESAGUE
select distinct 
f.estado_agua,
f.estado_desague, 
upper(p.estado_agua) as estado_agua_padronEPS,
upper(p.estado_desague) as estado_desague_padronEPS,
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,
f.tipo_via||' '||f.nombre_via as direccion,
f.num_municipal,
f.manzana_mun,
f.lote_mun,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua, -- CATEGORIA DEL AGUA PROYCAT
f.categoria_desague, -- CATEGORIA DEL DESAGUE PROYCAT
f.grupo_caracteristico,
f.estado_construccion,
f.observaciones,
f.codsuministro,
f.sector
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P'
where (f.sector='02' and f.estado_conexion='REAL') and f.tipo_servicio='AD' 
and (f.estado_desague like '%ACTIVO%' <> p.estado_desague like '%Activo%' and f.estado_agua like 'ACTIVO' <> p.estado_agua like 'Activo')
order by habilitacion asc


select distinct f.estado_desague, upper(p.estado_desague) as estado_agua_padronEPS, * from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
where (f.sector='01' and f.estado_conexion='REAL') and f.tipo_servicio='D' 
and (f.estado_desague like '%ACTIVO%' <> p.estado_desague like '%Activo%')


-- CAMBIO DE CATEGORIA INFORME PROYECTO CATASTRO  ******************
select 
coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre, -- mal

f.tipo_via||' '||f.nombre_via as nombre_via_ficha, -- ficha 
f.num_municipal,
f.manzana_mun,
f.lote_mun,

f.tipo_habilitacion||' '||f.nombre_habilitacion as nombre_habilitacion_ficha, -- ficha

f.categoria_agua as categoria_agua_ficha, -- ficha
f.categoria_desague as categoria_desague_ficha, --ficha
p.sub_categoria as sub_categoria_padron, -- padron

f.grupo_caracteristico,
f.estado_construccion,

f.estado_construccion,
f.observaciones,
f.codsuministro,
f.sector

from nasca.ficha f
left join nasca.padroncg p
on f.codsuministro = p.codsuministro
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
where (f.sector='02') and
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
	  f.estado_conexion='REAL'
order by f.manzana asc