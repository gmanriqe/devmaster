-- **** REPORTE DEL DIA ***
-- 20180401

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where estado_conexion='REAL' and codsuministro <>'' and codsuministro is not null and codsuministro <> 'null' and codencuestador is not null

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where estado_conexion='CLANDESTINA' and codencuestador is not null

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where estado_conexion='FACTIBLE' and codencuestador is not null

select codencuestador as ce, manzana as mz, lote as lt, estado_conexion as e_c, codsuministro as cods, ubicacion_metros as u_a, ubicacion_metros_desague as u_d, medidas_fachada as m_f, * from nasca.ficha
where estado_conexion='POTENCIAL' and codencuestador is not null

-- TOTAL REAL = 4636
-- TOTAL FACTIBLE = 334
-- TOTAL POTENCIAL = 19
-- TOTAL CLANDESTINO = 1848