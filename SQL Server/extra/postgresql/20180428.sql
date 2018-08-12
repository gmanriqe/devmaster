-- LIMPIANDO BASE DE DATOS *******
select * from nasca.ficha
where estado_construccion='DESHABITADO' and quien_habita<>'' and sector='01'

-- <> REAL Y TENGA VALOR NULL EN CODSUMINISTRO ********
select * 
from nasca.ficha 
where estado_conexion<>'REAL' and codsuministro = 'null'

-- CONTAR CUANTAS FICHAS HIZO CADA DIGITADOR
select codencuestador, count(1) 
from nasca.ficha
where fecregistro at time zone 'america/lima'='2018-02-19 21:57:02.416852'
group by codencuestador


select codencuestador,  from nasca.ficha
where fecregistro at time zone 'america/lima'<'2018-04-28'
group by codencuestador

select codencuestador, count(1) 
from nasca.ficha
where fecregistro at time zone 'america/lima'<'2018-04-28'
group by codencuestador

select codencuestador, manzana, count(1), sector
from nasca.ficha
where codencuestador='E64'
group by codencuestador, manzana, sector



--- ********+
select * from nasca.ficha
where codsuministro in (
'00505093250'
) 

--- CAROLA
select * from nasca.ficha
where manzana='0491' and sector='03'-- and num_pisos='2'
order by lote asc

select * from nasca.ficha
where grupo_caracteristico like '%TALLER%'

select * from nasca.parametro
where variable='CIIU' and codigo='4520'

-- ****
select * from nasca.ficha
where id in (
'6489',
'15920'
)

select * from nasca.responsable
where idficha in (
'6489',
'15920'
)

select * from nasca.unidad_uso
where idficha in (
'6489',
'15920'
)
--22067341