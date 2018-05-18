-- FULLDAY DEV MASTER

-- #EJERCICIO 01 - CAMBIO CATEGORIA
-- LIKE DINAMICOS -- NO ENSEÑO EN CLASE
select cg.sub_categoria, f.categoria_agua, f.categoria_desague
from nasca.padroncg cg
inner join nasca.ficha f
on cg.codsuministro = f.codsuministro
where not(cg.sub_categoria like '%'||f.categoria_agua||'%' or
	  cg.sub_categoria like '%'||f.categoria_desague||'%') and 
	  f.sector='01'

-- HACIENDO USO DE CHAR_LENGTH, LTRIM, RTRIM Y COALESCE
-- CHAR_LENGTH (CUENTA CADENA DE TEXTO)
-- LTRIM (QUITA ESPACIO DE LA IZQUIERDA)
-- RTRIM (QUITA ESPACIO DE LA DERECHA)
-- COALESCE (SI R.NOMBRES ES NULO ENTONCES PONME ESPACIO EN BLANCO)

-- #EJERCICIO 01 - CAMBIO CATEGORIA HACIENDO USO DE LEFT JOIN

select 
--char_length(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat),
--char_length(rp.nombres||' '|| rp.apellido_pat||' '||rp.apellido_mat),
char_length(ltrim(rtrim(coalesce(r.nombres,'')||' '|| coalesce(r.apellido_pat,'')||' '||coalesce(r.apellido_mat,'')))),
char_length(ltrim(rtrim(coalesce(rp.nombres,'')||' '|| coalesce(rp.apellido_pat,'')||' '||coalesce(rp.apellido_mat,'')))),
rp.nombres,
rp.apellido_pat,
rp.apellido_mat,
f.id, 

--coalesce(r.nombres,'') -- coalesce te dice si r.nombres es nulo entonces ponme espacio en blanco
case
	when char_length(ltrim(rtrim(coalesce(r.nombres,'')||' '|| coalesce(r.apellido_pat,'')||' '||coalesce(r.apellido_mat,''))))>0 then r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat
	else 
		case
			when char_length(ltrim(rtrim(coalesce(rp.nombres,'')||' '|| coalesce(rp.apellido_pat,'')||' '||coalesce(rp.apellido_mat,''))))>0 then rp.nombres||' '|| rp.apellido_pat||' '||rp.apellido_mat
			else '' -- vacio
		end
	end as propietario,
	
--coalesce(r.nombres||' '|| r.apellido_pat||' '||r.apellido_mat) as nombre,

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
left join nasca.responsable rp
on f.id = rp.idficha and rp.tipo_resp='P'
where not(p.sub_categoria like '%'||f.categoria_agua||'%' or
	  p.sub_categoria like '%'||f.categoria_desague||'%') and 
	  f.sector='01' and f.estado_conexion='REAL'
order by f.manzana asc