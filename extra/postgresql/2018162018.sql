-- SUMINISTROS AUN NO TOCADOS -- TOTAL 49
select 
f.manzana,

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
where p.urbanizacion='NASCA - APV AMAPROVI' and f.estado_conexion is null-- ''
order by f.manzana asc

select 
p.urbanizacion as nombre_habilitacion, 
f.nombre_habilitacion,
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


select distinct urbanizacion, count(urbanizacion) from nasca.padroncg
group by urbanizacion
--NASCA -  JOSE  CARLOS MARIATEGI 21

select * from nasca.padroncg
where urbanizacion like '%CARLOS%' and urbanizacion like '%JOSE%'




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
where p.urbanizacion='NASCA - APV AMAPROVI' and estado_conexion is null --and r.tipo_resp='R'
order by f.manzana asc





-- CAMBIOS DE CATEGORIA POR HABILITACION
select distinct
f.estado_conexion,

f.manzana,

'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,

f.codencuestador,

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

upper(p.estado_desague)  as estado_desague_padron, -- padron
f.estado_desague as estado_desague_ficha,

f.grupo_caracteristico-- ficha -- condicion de predio

from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
inner join nasca.responsable r
on f.id = r.idficha
inner join nasca.unidad_uso u
on f.id = u.idficha

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
	  f.estado_conexion <> ''-- AND r.tipo_resp_ant='R'
order by f.manzana, p.nombres asc

-- CAMBIO TARIFA (CATEGORIA)
select distinct
f.estado_conexion,

f.manzana,

'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,

f.codencuestador,

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

upper(p.estado_desague)  as estado_desague_padron, -- padron
f.estado_desague as estado_desague_ficha,

f.grupo_caracteristico-- ficha -- condicion de predio

from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
inner join nasca.responsable r
on f.id = r.idficha
inner join nasca.unidad_uso u
on f.id = u.idficha

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
	  f.estado_conexion <> ''-- AND r.tipo_resp_ant='R'
order by f.manzana, p.nombres asc


-- *** PREDIO NO UBICADOS
select distinct

f.codencuestador,
f.manzana,

'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,

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

upper(p.estado_desague)  as estado_desague_padron, -- padron
f.estado_desague as estado_desague_ficha,

f.grupo_caracteristico-- ficha -- condicion de predio

from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
inner join nasca.responsable r
on f.id = r.idficha
inner join nasca.unidad_uso u
on f.id = u.idficha

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
	  f.estado_conexion is null --<> ''-- AND r.tipo_resp_ant='R'
order by f.manzana, p.nombres asc

-- (HOJA #06)
-- PREDIOS NO UBICADOS
select
f.codencuestador,
f.manzana,
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
p.nombres,
p.nombre_via as direccion,
case 
	when p.urbanizacion='NASCA - APV AMAPROVI' then 'URB. AMAPROVI'
end as habilitacion,
p.sub_categoria
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
where f.estado_conexion is null and p.urbanizacion='NASCA - APV AMAPROVI'


-- (HOJA #03)
-- UNIDADES DE USO
select
f.codencuestador,
f.manzana,
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
p.nombres,
p.nombre_via as direccion,
case 
	when p.urbanizacion='NASCA - APV AMAPROVI' then 'URB. AMAPROVI'
end as habilitacion,
p.sub_categoria
from nasca.ficha f
inner join nasca.padroncg p
on f.codsuministro = p.codsuministro
inner join nasca.responsable r
on f.id = r.idficha

-- ** CON LOS SUMINISTROS ARROJADOS DE LA CONSULTA "UNIDADES DE USO" **
-- DEBERAS HACER LA SGTE CONSULTA
select f.tipo_via||' '||f.nombre_via as direccion,
'11'||'03'||f.distrito||f.sector||f.manzana||f.lote||f.conexion  as codigo_catastral_concatenado,
f.codsuministro,
f.tipo_habilitacion||' '||f.nombre_habilitacion as habilitacion,
f.categoria_agua,
f.categoria_desague, 
r.nombres||' '||r.apellido_pat||' '||r.apellido_mat, *
from nasca.ficha f
inner join nasca.responsable r
on f.id = r.idficha
where codsuministro in (
'00101103380',
'0011105006',
'0011105014',
'0011105008',
'0011105007',
'00101102527',
'00101097836',
'00101102367',
'00101102447',
'00101102425',
'00101102674',
'00101102856',
'00101102458',
'00101103653',
'00101103039',
'00101098155',
'00101049123',
'00101098020',
'00101104029',
'00101104198',
'00101049175',
'00101102083',
'00101104245',
'00101101435',
'00101102925',
'00101104256',
'00101049164',
'00101049136',
'00101102641',
'00101049157',
'00101049264',
'00101101764',
'00101102276',
'00101049105',
'0011105099',
'00101104303',
'00101102765',
'00101102969',
'00101049147',
'0011105009',
'00101049177',
'00101101457',
'00101104121',
'00101101651',
'00101097858',
'00101101662',
'00101104110',
'00101104041',
'00101104899',
'0011105107',
'00101104018',
'00101049129',
'00101101628',
'00101098326',
'00101049172',
'00101101504',
'00101097756',
'00101049135',
'00101104896',
'00101104187',
'00101102403',
'00101097734',
'00101049152',
'00101102301',
'00101104945',
'00101098848',
'00101097870',
'00101104836',
'00101101479',
'00101098666',
'00101049266',
'00101101402',
'00101101560',
'00101101480',
'0011105080',
'00101097778',
'00101098031',
'00101103084',
'00101104074',
'00101102914',
'00101102834',
'00101101582',
'00101049199',
'00101102549',
'00101049116',
'00101049151',
'00101049117',
'00101049169',
'00101049168',
'00101101537',
'00101049205',
'00101101606',
'00101102936',
'00101102947',
'00101049112',
'00101102958',
'00101098702',
'00101098713',
'00101097814',
'00101104461',
'00101104085',
'00101102732',
'00101102709',
'00101049099',
'00101102652',
'00101104143',
'00101104132',
'00101102298',
'00101104165',
'00101101833',
'00101102629',
'00101101877',
'00101097789',
'00101104109',
'00101097994',
'00101101991',
'0011105073',
'00101102572',
'00101101673',
'0011105100',
'00101049198',
'00101102878',
'00101049128',
'00101049122',
'00101102787',
'00101101720',
'00101102798',
'00101102890',
'00101049150',
'00101097869',
'00101103960',
'00101049170',
'00101102663',
'0011105070',
'00101049118',
'00101101902',
'00101102345',
'00101049087',
'00101102710',
'00101049155',
'00101104154',
'00101101742',
'00101104267',
'0011105063',
'0011105011',
'00101049093',
'00101049113',
'00101097938',
'00101049104',
'00101101786',
'00101101639',
'00101049109',
'00101049183',
'00101104212',
'00101049110',
'00101102630',
'00101102561',
'00101102389',
'00101104030',
'0011105133',
'00101102107',
'00101049127',
'00101097847',
'00101099907',
'00101102072',
'00101102016',
'00101102061',
'00101049111',
'00101097803',
'00101101888',
'00101048906',
'00101103722',
'00101097905',
'0011105081',
'0011105071',
'00101101935',
'00101049139',
'00101049124',
'00101049207',
'00101049148',
'00101049103',
'00101102287',
'00101101968',
'00101098393',
'0011105035',
'00101049210',
'00101101980',
'00101104895',
'00101049149',
'00101102050',
'00101098213',
'00101098064',
'00101049100',
'00101097701',
'00101049102',
'00101103664',
'00101101797',
'00101097745',
'00101049098',
'00101049181',
'00101104234',
'00101097790',
'00101104223',
'00101101811',
'00101049107',
'00101101399',
'00101103551',
'00101101946',
'0011105019',
'00101101913',
'00101101979',
'0011105076',
'00101103051',
'00101049195',
'00101049267',
'00101097983',
'00101097698',
'00101098144',
'00101103006',
'00101102118',
'0011105115',
'00101097654',
'00101049133',
'00101049153',
'00101049115',
'00101102594',
'00101049143',
'00101103233',
'00101102334',
'00101049166',
'00101049088',
'00101097825',
'00101102414',
'00101049096',
'00101098202',
'00101095505',
'00101095492',
'00101095516',
'00101049225'
) and r.tipo_resp='R'
order by r.idficha asc

select * from nasca.padroncg
where codsuministro='00101101435'

select * from nasca.padroncg
