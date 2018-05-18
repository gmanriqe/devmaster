-- CLANDESTINO ACTIVO AGUA
select  
case
	when char_length(ltrim(rtrim(coalesce(r.nombres,'')||' '|| coalesce(r.apellido_pat,'')||' '||coalesce(r.apellido_mat,''))))>0 then r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat
	else 
		case
			when char_length(ltrim(rtrim(coalesce(rp.nombres,'')||' '|| coalesce(rp.apellido_pat,'')||' '||coalesce(rp.apellido_mat,''))))>0 then rp.nombres||' '|| rp.apellido_pat||' '||rp.apellido_mat
			else '' -- vacio
		end
	end as propietario,
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
upper(grupo_caracteristico),
f.observaciones,
sector,
f.id
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R' 
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P' 
where estado_conexion='CLANDESTINA' and tipo_servicio='A' and estado_agua='ACTIVO' -- estado_agua='ACTIVO'
order by sector asc

-- CLANDESTINO ACTIVO DESAGUE
select  
case
	when char_length(ltrim(rtrim(coalesce(r.nombres,'')||' '|| coalesce(r.apellido_pat,'')||' '||coalesce(r.apellido_mat,''))))>0 then r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat
	else 
		case
			when char_length(ltrim(rtrim(coalesce(rp.nombres,'')||' '|| coalesce(rp.apellido_pat,'')||' '||coalesce(rp.apellido_mat,''))))>0 then rp.nombres||' '|| rp.apellido_pat||' '||rp.apellido_mat
			else '' -- vacio
		end
	end as propietario,
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
upper(grupo_caracteristico),
f.observaciones,
sector,
f.id
from nasca.ficha f
left join nasca.responsable r
on f.id = r.idficha and r.tipo_resp='R' 
left join nasca.responsable rp
on f.id = r.idficha and r.tipo_resp='P' 
where estado_conexion='CLANDESTINA' and tipo_servicio='D' and estado_desague='ACTIVO' -- estado_agua='ACTIVO'
order by sector asc

-- ** LIMPIANDO BD PARA FACTIBLES
update nasca.ficha
set estado_agua=null, --
categoria_agua=null, --
tipo_cobranza_medicion=null, --
macrosector_agua=null, --
sector_agua=null, --
cantidad_predios=null, --
tipo_consumidor=null, --
caja_registro=null, --
estado_caja_agua=null, --
acometida_tuberia=null, --
diametro_acometida=null,  --
tapa=null, --
pavimento=null, --
localizacion_conexion=null, --
ubicacion_metros=null, --
estado_tapa=null, --
multiusuario_agua=null, --
tiene_fuga=null, --
estado_desague=null, --
categoria_desague=null, --
macrosector_desague=null, --
sector_desague=null, --
red_distribucion_desague=null, --
tipo_material_tuberia=null, --
diametro_tubo=null, --
tipo_caja=null, --
estado_caja=null, -- 
localizacion_caja=null, --
obstruido=null, --
ubicacion_metros_desague=null,--
marca_medidor=null, --
num_medidor=null, --
lectura=null, --
diametro_medidor=null, --
estado_medidor=null, --
posicion_medidor=null, --
valvula=null, --
tipo_medidor=null, --
seguridad_medidor=null --
where estado_conexion='FACTIBLE'
