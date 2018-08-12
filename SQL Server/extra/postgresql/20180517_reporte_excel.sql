-- *** TIPS DEL DIA *****
-- pa los queries agarra papel y primero escribe como va quedar el reporte o simula en el excel 
-- como si ya lo tuvieras
-- y cada columna que vas obteniendo los vas marcando y las columnas mas yucas los dejas para el final

-- creando columna que ennumere cada idficha
-- ejm: idficha 1 si tiene dos unidades de uso, a la primer le pondra 1 y a la segunda 2
select 
idficha, 
responsable, 
tipo_uso, 
categoria, 
tarifa, 
complemento,
row_number() over(partition by idficha) as fila_contador
from nasca.unidad_uso

-- crear tabla espejo a partir de un select a la tabla unidad_uso (tiene un campo adicional por el row_number())
-- ennumera cada unidad de uso de cada ficha
select 
u.*,
row_number() over(partition by idficha order by id asc) as posicion 
into nasca.unidad_uso_reporte
from nasca.unidad_uso u

-- reporte con la posicion 1 (solamente con el numero 1) y asi puedes hacer con las 6 unidades de uso que tienes maximo
select * from nasca.ficha f
left join nasca.unidad_uso_reporte ur
on f.id = ur.idficha and ur.posicion='1'
left join nasca.unidad_uso_reporte ur_tw
on f.id = ur_tw.idficha and ur_tw.posicion='2'
left join nasca.unidad_uso_reporte ur_th
on f.id = ur_th.idficha and ur_th.posicion='3'
left join nasca.unidad_uso_reporte ur_fo
on f.id = ur_fo.idficha and ur_fo.posicion='4'
left join nasca.unidad_uso_reporte ur_fi
on f.id = ur_fi.idficha and ur_fi.posicion='5'
left join nasca.unidad_uso_reporte ur_si
on f.id = ur_si.idficha and ur_si.posicion='6'

-- *** REPORTEEEEEE ****
select 
f.id,
estado_conexion as ESTADO_CONEXION,
codsuministro SUMINISTRO ,
case
	when f.distrito='01' then 'NASCA'
	else 'VISTA_ALEGRE'
end as SUCURSAL,
'11' as DEPARTAMENTO,
'03' as PROVINCIA,
f.distrito as DISTRITO,
f.sector as SECTOR,
f.manzana as MANZANA,
f.lote as LOTE,
f.conexion as CONEXION,
f.tipo_servicio as TIPO_SERVICIO,
f.estado_agua as SIT_CONEX_ESTADO_AGUA,
f.estado_desague as SIT_CONEX_ESTADO_DESAGUE,
f.tipo_habilitacion as TIPO_HABILITACION,
f.nombre_habilitacion as NOMBRE_HABILITACION,
f.sector as SECTOR,
f.subsector as SUBSECTOR,
f.coordenada_x as COORDENADA_X,
f.coordenada_y as COORDENADA_Y,
f.ruta_distribucion as RUTA_DISTRIBICION,
f.secuencia as SECUENCIA,

-- ** DATOS PREDIO **
f.tipo_via as TIPO_VIA,
f.nombre_via as NOMBRE,
f.num_municipal as N_MUNICIPAL,
f.manzana_mun as MZ_MUNICIPAL,
f.lote_mun as LT_MUNICIPAL,
f.sublote_mun as SLOTE_MUNICIPAL,
f.num_pisos as PISOS,
f.tipo_habilitacion as TIPO_HABILITACION,
f.nombre_habilitacion as NOMBRE_HABILITACION,
f.tipo_construccion as TIPO_CONSTRUCCION,
f.estado_construccion as ESTADO_CONSTRUCCION,
f.grupo_caracteristico as GRUPO_CARACTERISTICO,
f.referencias as REFERENCIAS,
/** FIN DATOS PREDIO **/

--** RESPONSABLE **
case
	when char_length(ltrim(rtrim(coalesce(r.nombres,'')||' '|| coalesce(r.apellido_pat,'')||' '||coalesce(r.apellido_mat,''))))>0 then r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat
	else 
		case
			when char_length(ltrim(rtrim(coalesce(rp.nombres,'')||' '|| coalesce(rp.apellido_pat,'')||' '||coalesce(rp.apellido_mat,''))))>0 then rp.nombres||' '|| rp.apellido_pat||' '||rp.apellido_mat
		else 'NO IDENTIFICADO' -- vacio
	end
end as PROPIETARIO,
--r.nombres as NOMBRES,
--r.apellido_pat as APELLIDO_PATERNO,
--r.apellido_mat as APELLIDO_MATERNO,
case
	when r.tipo_doc <> '0' then r.tipo_doc
end as TIPO_DOCUMENTO,
r.num_doc as NUM_DOCUMENTO,
/** FIN RESPONSABLE **/

f.quien_habita as QUIEN_HABITA, --
f.num_familias as N_FAMILIAS, --
f.num_habitantes as N_HABITANTES,--

-- ** UNIDADES_USO **
--ur.idficha,
ur.responsable as RESPONSABLE, 
ur.tipo_uso as TIPO_USO, 
ur.categoria as CATEGORIA, 
ur.tarifa as TARIFA, 
ur.complemento as COMPLEMENTO,
-- UNIDA_USO_DOS
--ur_tw.idficha,
ur_tw.responsable as RESPONSABLE, 
ur_tw.tipo_uso as TIPO_USO,  
ur_tw.categoria as CATEGORIA,
ur_tw.tarifa as TARIFA, 
ur_tw.complemento as COMPLEMENTO,
-- UNIDA_USO_TRES
--ur_th.idficha,
ur_th.responsable as RESPONSABLE,  
ur_th.tipo_uso as TIPO_USO,   
ur_th.categoria as CATEGORIA,
ur_th.tarifa as TARIFA, 
ur_th.complemento as COMPLEMENTO,
-- UNIDA_USO_TRES
--ur_fo.idficha,
ur_fo.responsable as RESPONSABLE,  
ur_fo.tipo_uso as TIPO_USO,  
ur_fo.categoria as CATEGORIA,
ur_fo.tarifa as TARIFA, 
ur_fo.complemento as COMPLEMENTO,
-- UNIDA_USO_CUATRO
--ur_fi.idficha,
ur_fi.responsable as RESPONSABLE, 
ur_fi.tipo_uso as TIPO_USO,  
ur_fi.categoria as CATEGORIA,
ur_fi.tarifa as TARIFA, 
ur_fi.complemento as COMPLEMENTO,
-- UNIDAD_USO_SEIS,
--ur_si.idficha,
ur_si.responsable as RESPONSABLE,
ur_si.tipo_uso as TIPO_USO,  
ur_si.categoria as CATEGORIA,
ur_si.tarifa as TARIFA,  
ur_si.complemento as COMPLEMENTO,
/*** FIN UNIDAD_USO ***/

-- *** DATOS AGUA ***
case
	when f.estado_agua='0' then ''
	else f.estado_agua
end as SIT_CONEX_ESTADO_AGUA,
--f.estado_agua as SIT_CONEX_ESTADO_AGUA, -- columna para comparacion
case
	when f.categoria_agua='0' then ''
	else f.categoria_agua
end as CATEGORIA_AGUA,
--f.categoria_agua as CATEGORIA_AGUA, -- columna para comparacion
case
	when f.tipo_consumidor='0' then ''
	else f.tipo_consumidor
end as TIPO_CONSUMIDOR,
--f.tipo_consumidor as TIPO_CONSUMIDOR, -- columna para comparacion
case
	when f.tipo_cobranza_medicion='0' then ''
	else f.tipo_cobranza_medicion
end as TIPO_COBRANZA_MED,
--f.tipo_cobranza_medicion as TIPO_COBRANZA_MED, -- columna para comparacion
case
	when f.macrosector_agua='0' then ''
	else f.macrosector_agua
end as MACROSECTOR_AGUA,
--f.macrosector_agua as MACROSECTOR_AGUA, -- columna para comparacion
case
	when f.sector_agua='0' then ''
	else f.sector_agua
end as SECTOR_AGUA,
--f.sector_agua as SECTOR_AGUA, -- columna para comparacion
f.cantidad_predios as CANTIDAD_PREDIOS,
f.multiusuario_agua as MULTIUSUARIO_AGUA, -- columna para comparacion
case
	when f.caja_registro='0' then ''
	else f.caja_registro
end as CAJA_REGISTRO,
-- f.caja_registro as CAJA_REGISTRO, -- columna para comparacion
case
	when f.estado_caja_agua='0' then ''
	else f.estado_caja_agua
end as ESTADO_CAJA_AGUA,
-- f.estado_caja_agua as ESTADO_CAJA_AGUA, -- columna para comparacion
case
	when f.acometida_tuberia='0' then ''
	else f.acometida_tuberia
end as DIAMETRO_ACOMETIDA,
-- f.acometida_tuberia as ACOMETIDA_TUBERIA,  -- columna para comparacion
case
	when f.diametro_acometida='0' then ''
	else f.diametro_acometida
end as DIAMETRO_ACOMETIDA,
-- f.diametro_acometida as DIAMETRO_ACOMETIDA, -- columna para comparacion
case
	when f.tapa='0' then ''
	else f.tapa
end as DIAMETRO_ACOMETIDA,
-- f.tapa as TAPA,-- columna para comparacion
case
	when f.estado_tapa='0' then ''
	else f.estado_tapa
end as ESTADO_TAPA,
--f.estado_tapa as ESTADO_TAPA, -- columna para comparacion
case
	when f.pavimento='0' then ''
	else f.pavimento
end as PAVIMENTO,
--f.pavimento  as PAVIMENTO, -- columna para comparacion
f.localizacion_conexion as LOCALIZACION_CONEXION,
f.ubicacion_metros as UBICACION_METROS,
f.fuga as FUGA,
case
	when f.presion_agua like 'RE%' then 'REGULAR'
	when f.presion_agua like 'AL%' then 'ALTA'
	when f.presion_agua like 'BA%' then 'BAJA'
else ''
end as PRESION_AGUA,
-- f.presion_agua as PRESION_AGUA, -- columna para comparacion solamente
/*** FIN DATOS AGUA ***/

-- *** DATOS ALCANTARILLADO ***
f.estado_desague as SIT_CONEX_ESTADO_DESAGUE,
f.categoria_desague as CATEGORIA_DESAGUE,
f.red_distribucion_desague as RED_DISTRIBUCION_DESAGUE,
f.macrosector_desague as MACROSECTOR_DESAGUE,
f.sector_desague as SECTOR_DESAGUE,
case
	when f.tipo_caja='0' then ''
	else f.tipo_caja
end as TIPO_CAJA,
case
	when f.estado_caja='0' then ''
	else f.estado_caja
end as ESTADO_CAJA,
case
	when f.diametro_tubo='0' then ''
	else f.diametro_tubo
end as DIAMETRO_TUBO,
f.tipo_material_tuberia as TIPO_MATERIAL_TUBERIA,
f.ubicacion_metros_desague as UBICACION_METROS_DESAGUE,
/*** FIN DATOS ALCANTARILLADO ***/

-- *** DATOS MEDIDOR ***
case
	when f.marca_medidor='0' then ''
	else f.marca_medidor
end as MARCA_MEDIDOR,
--f.marca_medidor as MARCA_MEDIDOR, -- columna para comparacion
case
	when f.num_medidor='0' then ''
	else f.num_medidor
end as NUM_MEDIDOR,
--f.num_medidor as NUM_MEDIDOR, -- columna para comparacion
case
	when f.lectura='0' then ''
	else f.lectura
end as LECTURA_MEDIDOR,
--f.lectura as LECTURA_MEDIDOR, -- columna para comparacion
case
	when f.diametro_medidor='0' then ''
	else f.diametro_medidor
end as DIAMETRO_MEDIDOR,
--f.diametro_medidor as DIAMETRO_MEDIDOR, -- columna para comparacion
case
	when f.estado_medidor='0' then ''
	else f.estado_medidor
end as ESTADO_MEDIDOR,
--f.estado_medidor as ESTADO_MEDIDOR, -- columna para comparacion
case
	when f.posicion_medidor='0' then ''
	else f.posicion_medidor
end as POSICION_MEDIDOR,
--f.posicion_medidor as POSICION_MEDIDOR,-- columna para comparacion
case
	when f.valvula='0' then ''
	else f.valvula
end as VALULA_MEDIDOR,
--f.valvula as VALULA_MEDIDOR,-- columna para comparacion
case
	when f.tipo_medidor='0' then ''
	else f.tipo_medidor
end as TIPO_MEDIDOR,
--f.tipo_medidor as TIPO_MEDIDOR,-- columna para comparacion
case
	when f.seguridad_medidor='0' then ''
	else f.seguridad_medidor
end as SEGURIDAD_MEDIDOR,
--f.seguridad_medidor as SEGURIDAD_MEDIDOR,-- columna para comparacion
/*** FIN DATOS MEDIDOR ***/

-- *** DATOS GENERALES ***
case
	when f.vereda='0' then ''
	else f.vereda
end as VEREDA,
--f.vereda as VEREDA,-- columna para comparacion
case
	when f.pista='0' then ''
	else f.pista
end as PISTA,
--f.pista as PISTA,-- columna para comparacion
case
	when f.pozo_artesanal='0' then ''
	else f.pozo_artesanal
end as POZO_ARTESANAL,
--f.pozo_artesanal as POZO_ARTESANAL, -- columna para comparacion
case
	when f.tipo_almacenamiento='0' then ''
	else f.tipo_almacenamiento
end as TIPO_ALMACENAMIENTO,
--f.tipo_almacenamiento as TIPO_ALMACENAMIENTO, -- columna para comparacion
f.frec_horas_abastecimiento as FREC_HRS,
f.frec_dias_abastecimiento as FREC_DIAS,
f.medidas_fachada as MEDIDA_FACHADA,
/*** FIN DATOS GENERALES ***/

-- *** OBSERVACIONES ***
f.observaciones as OBSERVACION
/*** FIN OBSERVACIONES***/

from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R'
left join nasca.responsable rp
on f.id = rp.idficha and rp.tipo_resp='P'
left join nasca.unidad_uso_reporte ur
on f.id = ur.idficha and ur.posicion='1'
left join nasca.unidad_uso_reporte ur_tw
on f.id = ur_tw.idficha and ur_tw.posicion='2'
left join nasca.unidad_uso_reporte ur_th
on f.id = ur_th.idficha and ur_th.posicion='3'
left join nasca.unidad_uso_reporte ur_fo
on f.id = ur_fo.idficha and ur_fo.posicion='4'
left join nasca.unidad_uso_reporte ur_fi
on f.id = ur_fi.idficha and ur_fi.posicion='5'
left join nasca.unidad_uso_reporte ur_si
on f.id = ur_si.idficha and ur_si.posicion='6'
where  estado_conexion is not null
order by sector, manzana, lote asc
limit 10000
