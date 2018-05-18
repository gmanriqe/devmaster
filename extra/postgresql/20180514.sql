select id,lote, estado_conexion  from nasca.ficha

select * from nasca.ficha
where sector='03' and manzana='0803'
order by lote asc

select id,lote, estado_conexion  from nasca.ficha
where sector='03' and manzana='0095' --and codencuestador='E68'
order by lote asc

select * from nasca.parametro
where variable='NOMBRE_HABILITACION'
order by codigo asc

select * from nasca.ficha
where medidas_fachada='8.30' and ubicacion_metros='2.50'  and codencuestador='E70'-- and fectrabajada at time zone 'america/lima' > '2018-05-08'
order by lote asc

select * from nasca.ficha
where codsuministro in (
'00'
)

select sector, codencuestador, manzana, count(1)
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>'2018-05-06' and fectrabajada AT TIME ZONE 'america/lima'<'2018-05-07' and codencuestador='E61'
group by sector, codencuestador, manzana

select sector, codencuestador, manzana, count(1)
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>'2018-05-08' and fectrabajada AT TIME ZONE 'america/lima'<'2018-05-09' and codencuestador='E60'
group by sector, codencuestador, manzana

select * from nasca.ficha
where codsuministro in (
'00505065938',
'00505104914'
)

select 
r.nombres||' '||r.apellido_pat||' '||r.apellido_mat as nombre_usuario,
f.referencias,
*
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='P' 
where sector='01' and r.nombres like '%'||'VICTORIA'||'%' and r.apellido_pat like '%'||'HUAMAN'||'%'--num_pisos='1' --and num_pisos='2'-- and r.apellido_pat like '%REICH%'--and grupo_caracteristico like '%NOTARIA%'
order by lote asc

select sector, codencuestador, manzana, count(1)
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>'2018-03-05' and fectrabajada AT TIME ZONE 'america/lima'<'2018-03-13' and manzana='0370'--and codencuestador='E11' and codencuestador='E12' and codencuestador='E08'
group by sector, codencuestador, manzana


select 
r.nombres||' '||r.apellido_pat||' '||r.apellido_mat as nombre_usuario,
f.referencias,
*
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='P' 
where sector='03' and manzana='0305' --and num_pisos='3'--referencias like '%MARRON%'--and --and r.nombres like '%'||'REICHE'||'%'--num_pisos='1' --and num_pisos='2'-- and r.apellido_pat like '%REICH%'--and grupo_caracteristico like '%NOTARIA%'
order by lote asc

select * from nasca.ficha
where codsuministro like '%00505063238%'

select * from nasca.ficha
where manzana='0270' and sector='02' --and id='17097' --and num_pisos='2'
order by lote asc

select * from nasca.ficha
where grupo_caracteristico='BERMA'

select * from nasca.ficha
where id in (
'16674'
)

select * from nasca.responsable
where idficha in ( --modelo
'16674'
-- PASARAS VALORES
)

select * from nasca.unidad_uso
where idficha in (
'16674' --modelo
)


select * from nasca.parametro
where variable='MANZANA'
--'17100',
--'17101',
--'17102'


---- ******************************************
select * from nasca.padroncg
where lote='8520'


select * from nasca.padroncg
where codsuministro like '%00505056471%'

select * from nasca.padroncg
where codsuministro='00101009249'

select * from nasca.padroncg
where codsuministro in (
'00101020675',
'00101049158',
'00101020631'
)

select * from NASCA.padroncg
where nombre_via like '%Mza%' and nombre_via like '%%AA.HH. NUEVA VILLA M. REICHE%'  and nombre_via like '%A13%'