
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

-- ** DATOS PREDIO **
f.tipo_via as TIPO_VIA,
f.nombre_via as NOMBRE,
case
	when f.num_municipal='' then 'S/N'
	else f.num_municipal
end as N_MUNICIPAL,
--f.num_municipal as N_MUNICIPAL, -- columna para comparacion
f.manzana_mun as MZ_MUNICIPAL,
f.lote_mun as LT_MUNICIPAL,
f.sublote_mun as SUB_LOTE_MUNICIPAL,
f.num_pisos as PISOS,
f.tipo_poblacion as tipo_poblacion,
geocodigo as geocodigo,
coordenada_x as coordenada_x,
coordenada_y as coordenada_y,
coordenada_z as coordenada_z,
f.tipo_habilitacion as TIPO_HABILITACION,
f.nombre_habilitacion as NOMBRE_HABILITACION,
f.tipo_construccion as TIPO_CONSTRUCCION,
f.estado_construccion as ESTADO_CONSTRUCCION,
f.grupo_caracteristico as GRUPO_CARACTERISTICO,
f.ciiu as CIIU,
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
case
	when ur.responsable='0' then 'PROPIETARIO'
	when ur.responsable='01' then 'PROPIETARIO'
	when ur.responsable='02' then 'INQUILINO'
	when ur.responsable='03' then 'ESTATAL'
	when ur.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur.responsable as RESPONSABLE, 
ur.tipo_uso as TIPO_USO, 
ur.categoria as CATEGORIA, 
ur.tarifa as TARIFA, 
ur.complemento as COMPLEMENTO,
-- UNIDA_USO_DOS
--ur_tw.idficha,
case
	when ur_tw.responsable='0' then 'PROPIETARIO'
	when ur_tw.responsable='01' then 'PROPIETARIO'
	when ur_tw.responsable='02' then 'INQUILINO'
	when ur_tw.responsable='03' then 'ESTATAL'
    when ur_tw.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur_tw.responsable as RESPONSABLE, 
ur_tw.tipo_uso as TIPO_USO,  
ur_tw.categoria as CATEGORIA,
ur_tw.tarifa as TARIFA, 
ur_tw.complemento as COMPLEMENTO,
-- UNIDA_USO_TRES
--ur_th.idficha,
case
	when ur_th.responsable='0' then 'PROPIETARIO'
	when ur_th.responsable='01' then 'PROPIETARIO'
	when ur_th.responsable='02' then 'INQUILINO'
	when ur_th.responsable='03' then 'ESTATAL'
	when ur_th.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur_th.responsable as RESPONSABLE,  
ur_th.tipo_uso as TIPO_USO,   
ur_th.categoria as CATEGORIA,
ur_th.tarifa as TARIFA, 
ur_th.complemento as COMPLEMENTO,
-- UNIDA_USO_TRES
--ur_fo.idficha,
case
	when ur_fo.responsable='0' then 'PROPIETARIO'
	when ur_fo.responsable='01' then 'PROPIETARIO'
	when ur_fo.responsable='02' then 'INQUILINO'
	when ur_fo.responsable='03' then 'ESTATAL'
	when ur_fo.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur_fo.responsable as RESPONSABLE,  
ur_fo.tipo_uso as TIPO_USO,  
ur_fo.categoria as CATEGORIA,
ur_fo.tarifa as TARIFA, 
ur_fo.complemento as COMPLEMENTO,
-- UNIDA_USO_CUATRO
--ur_fi.idficha,
case
	when ur_fi.responsable='0' then 'PROPIETARIO'
	when ur_fi.responsable='01' then 'PROPIETARIO'
	when ur_fi.responsable='02' then 'INQUILINO'
	when ur_fi.responsable='03' then 'ESTATAL'
	when ur_fi.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur_fi.responsable as RESPONSABLE, 
ur_fi.tipo_uso as TIPO_USO,  
ur_fi.categoria as CATEGORIA,
ur_fi.tarifa as TARIFA, 
ur_fi.complemento as COMPLEMENTO,
-- UNIDAD_USO_SEIS,
--ur_si.idficha,
case
	when ur_si.responsable='0' then 'PROPIETARIO'
	when ur_si.responsable='01' then 'PROPIETARIO'
	when ur_si.responsable='02' then 'INQUILINO'
	when ur_si.responsable='03' then 'ESTATAL'
	when ur_si.responsable='04' then 'OTROS'
	else null
end as RESPONSABLE,
--ur_si.responsable as RESPONSABLE,
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
end as ACOMETIDA_TUBERIA,
-- f.acometida_tuberia as ACOMETIDA_TUBERIA,  -- columna para comparacion
case
	when f.diametro_acometida='0' then ''
	else f.diametro_acometida
end as DIAMETRO_ACOMETIDA,
-- f.diametro_acometida as DIAMETRO_ACOMETIDA, -- columna para comparacion
case
	when f.tapa='0' then ''
	else f.tapa
end as TAPA,
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
case
	when f.estado_desague='0' then ''
	else f.estado_desague
end as SIT_CONEX_ESTADO_DESAGUE,
-- f.estado_desague as SIT_CONEX_ESTADO_DESAGUE, -- columna para comparacion
case
	when f.categoria_desague='0' then ''
	else f.categoria_desague
end as CATEGORIA_DESAGUE,
--f.categoria_desague as CATEGORIA_DESAGUE, -- columna para comparacion
case
	when f.red_distribucion_desague='0' then ''
	else f.red_distribucion_desague
end as RED_DISTRIBUCION_DESAGUE,
--f.red_distribucion_desague as RED_DISTRIBUCION_DESAGUE,-- columna para comparacion
case
	when f.macrosector_desague='0' then ''
	else f.macrosector_desague
end as MACROSECTOR_DESAGUE,
--f.macrosector_desague as MACROSECTOR_DESAGUE,-- columna para comparacion
case
	when f.sector_desague='0' then ''
	else f.sector_desague
end as SECTOR_DESAGUE,
--f.sector_desague as SECTOR_DESAGUE,-- columna para comparacion
case
	when f.tipo_caja='0' then ''
	else f.tipo_caja
end as TIPO_CAJA,
--f.tipo_caja as TIPO_CAJA,-- columna para comparacion
case
	when f.estado_caja='0' then ''
	else f.estado_caja
end as ESTADO_CAJA,
--f.estado_caja as ESTADO_CAJA,-- columna para comparacion
case
	when f.diametro_tubo='0' then ''
	else f.diametro_tubo
end as DIAMETRO_TUBO,
--f.diametro_tubo as DIAMETRO_TUBO,-- columna para comparacion
case
	when f.tipo_material_tuberia='0' then ''
	else f.tipo_material_tuberia
end as TIPO_MATERIAL_TUBERIA,
--f.tipo_material_tuberia as TIPO_MATERIAL_TUBERIA, -- columna para comparacion
f.ubicacion_metros_desague as UBICACION_METROS_DESAGUE,-- columna para comparacion
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
end as VALVULA_MEDIDOR,
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
