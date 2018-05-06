-- LIKE DINAMICOS -- NO ENSEÑO EN CLASE
select cg.sub_categoria, f.categoria_agua, f.categoria_desague
from nasca.padroncg cg
inner join nasca.ficha f
on cg.codsuministro = f.codsuministro
where not(cg.sub_categoria like '%'||f.categoria_agua||'%' or
	  cg.sub_categoria like '%'||f.categoria_desague||'%') and 
	  f.sector='01'