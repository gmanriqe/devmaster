-- *** PROPIETARIO ***
select * from nasca.responsable
where idficha in (
'5781',
'13709',
'13710',
'13711',
'5639',
'360',
'5678',
'1303',
'1307',
'1306',
'1305',
'13712',
'5063',
'6411',
'5425',
'13713')
order by idficha asc

select * from nasca.unidad_uso
where idficha in (
'5781',
'13709',
'13710',
'13711',
'5639',
'360',
'5678',
'1303',
'1307',
'1306',
'1305',
'13712',
'5063',
'6411',
'5425',
'13713')
order by idficha asc

-- COLUMNA Y FILA
update nasca.ficha
set ubicacion_conexion_fila=0 ,ubicacion_conexion_columna=0
where manzana='0580' and SECTOR='01'

select * from nasca.unidad_uso
where idficha='13546'

select codencuestador, manzana, lote, estado_conexion, codsuministro, ubicacion_metros, ubicacion_metros_desague, * from nasca.ficha
where manzana='0575' and sector='01'
order by lote asc

select * from nasca.ficha
where estado_conexion='REAL' and 

-- NUEVAS MANZANAS
insert into nasca.parametro(variable, valor, codigo)
select 'MANZANA','MZ0014','0014' union all
select 'MANZANA','MZ0018','0018' union all
select 'MANZANA','MZ0048','0048' union all
select 'MANZANA','MZ0073','0073' union all
select 'MANZANA','MZ0456','0456' 

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where manzana='0440' and sector='01'
order by lote asc

--0285
select * from nasca.ficha
where id='11716'

select * from nasca.responsable
where idficha='14424'

select * from nasca.ficha
where id='14424'

-- ***********************
select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where manzana='0705' and sector='01'
order by lote asc

update nasca.ficha
set sector='02'
where manzana='0490' and sector='01' and codencuestador='E17'


select * from nasca.ficha 
where observaciones like '%NO SE PUDO ABRIR TAPA DE AGUA%'

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where manzana='0380' and sector='02'
order by lote asc

--0285
select * from nasca.unidad_uso
where idficha='12766'

select * from nasca.responsable
where idficha='12766'

select * from nasca.ficha
where id='12766'

select * from nasca.parametro
where variable='CIIU' and codigo='9329'

select * from nasca.ficha
where codsuministro<>'' and codsuministro is not null and estado_conexion<>'REAL'

