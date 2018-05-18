-- REPORTE POR CODIGO ENCUESTADOR, MANZANA, CONTANDO FICHA POR MANZANA

select sector, codencuestador, manzana, count(1)
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>'2018-04-04' and fectrabajada AT TIME ZONE 'america/lima'<'2018-04-05' and codencuestador='E61'
group by sector, codencuestador, manzana


-- REPORTE POR CODIGO ENCUESTADOR, MANZANA, CONTANDOR, LOTE. BUSQUEDA A PARTIR DEL DIA 2018-05-05
select sector, codencuestador, manzana, count(1), fectrabajada, lote
from nasca.ficha
where fectrabajada AT TIME ZONE 'america/lima'>='2018-05-05' and fectrabajada AT TIME ZONE 'america/lima'<'2018-05-09' and codencuestador='E60'
group by sector, codencuestador, manzana, fectrabajada, lote



-- BUSCAR POR NOMBRE DE PROPIETARIO.
select 
r.nombres||' '||r.apellido_pat||' '||r.apellido_mat as nombre_usuario,
f.referencias,
*
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='P' 
where sector='01' and r.nombres like '%'||'VICTORIA'||'%' and r.apellido_pat like '%'||'HUAMAN'||'%'-- and num_pisos='1' --and num_pisos='2'-- and r.apellido_pat like '%REICH%'--and grupo_caracteristico like '%NOTARIA%'
order by lote asc


