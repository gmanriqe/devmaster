-- ** CARGA MASIVA DE PADRON-EPS GOOGLE DRIVE ** 
select * from padron_catastro
where suministro like '%00101093592%' --and sector='NASCA - SECTOR 01' 

select * from padron_catastro
where codcat like '%9695%' 

select * from padron_catastro
where codcat like '%6386%' 

select * from padron_catastro
where codcat like '%5759%' 

select * from padron_catastro --where suministro like '%022393%'
where direccion like '%CAL ASOCIACION DE VIVIENDA EL ORO  MZA A%' and direccion like '%F%'

select * from padron_catastro
where nombres like '%SARMIENTO%' and nombres like '%MARTINEZ%'
