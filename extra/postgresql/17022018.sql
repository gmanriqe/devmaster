-- VISUALIZAR TU MODELO ENTIDAD RELACION

-- CREACION DE TABLA
CREATE TABLE padron_catastro
(
  id SERIAL PRIMARY KEY,
  codcat VARCHAR(35) NOT NULL,
  suministro VARCHAR(11) NOT NULL,
  nombres VARCHAR(80) NOT NULL,
  identificion VARCHAR(20),
  direccion VARCHAR(100),
  urbanizacion VARCHAR(45),
  sector VARCHAR(40),
  manzana INTEGER,
  lote INTEGER,
  tipser VARCHAR(14),
  estcon VARCHAR(11),
  estagu VARCHAR(19),
  estdes VARCHAR(19),
  sitcon VARCHAR(20),
  categoria VARCHAR(32),
  tipmed VARCHAR(32),
  tarifa VARCHAR(50)
)

-- CREACION SECUENCIA (AUTOINCREMENT)
CREATE SEQUENCE padron_catastro_sequence
start 2
increment 1;

--INSERCION MASIVA DE DATA
INSERT INTO padron_catastro(codcat, suministro, nombres, identificion, direccion, urbanizacion, sector, manzana, lote, tipser, estcon, estagu, estdes, sitcon, categoria, tipmed, tarifa)
SELECT '001-03-01-01-0020-1485-001','00100091576','JORGE DEOMEDES CONDORI CALDERON','22069783','CAL PEDAGOGICO 0 S/N','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',20,1485,'AD','Activo','Activo','Activo','Activo A Activo D','DOMESTICO A DOMESTICO D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0030-0579-001','00100091587','ANA MARIA INCISO CRUCES','40853185','CHB MAURICIO 0 MANUEL MERCEDES','NASCA - URB SAN MAURICIO','NASCA - SECTOR 01',30,579,'D','Activo','','Activo','Activo D','DOMESTICO D','AI   D','NASCA: Solo Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0020-001','00101000013','CRUZ GRACIELA LOAYZA DE LA','00101000013','JR. ARICA 0 103','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,20,'AD','Activo','Activo','Activo','Activo A Activo D','DOMESTICO A DOMESTICO D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0030-001','00101000024','RAQUEL  TORRES CHAMANA','00101000024','JR. ARICA 0 109','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,30,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0035-001','00101000035','PODER  JUDICIAL ','00101000035','JR. ARICA 115','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,35,'AD','Activo','Cortado','Cortado','Cortado A Cortado D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0040-001','00101000046','  FARMACIA HUMANITARIA','00101000046','JR. ARICA 0 117','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,40,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0050-001','00101000057','TOTAL ARTEFACTOS S.A.','00101000057','JR. ARICA 0 121','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,50,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0060-001','00101000068','AMPARO  PEREZ DE ADAMS','00101000068','JR. ARICA 0 123','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,60,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0070-001','00101000079','ROJAS S.A.C.  NEGOCIACIONES','20495031307','JR. ARICA 0 125','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,70,'D','Activo','Inactivo','Activo','Inactivo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Solo Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0071-001','00101000080','GRACIEL  LOAYZA DE BARZOLA','00101000080','JR. ARICA 0 127','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,71,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0080-001','00101000091','RADIO  NASCA ','00101000091','JR. ARICA 0 129','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,80,'AD','Inactivo','Inactivo','Inactivo','Inactivo A Inactivo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0085-001','00101000104','RAQUEL  TORRES CHAMANA','00101000024','JR. ARICA 0 129','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,85,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0090-001','00101000115','TELLO.  JOSE RAMOS','00101000115','JR. ARICA 0 131','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,90,'AD','Activo','Cortado','Cortado','Cortado A Cortado D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0095-001','00101000126','REYNA M CUAYLA CONDORI','00101000126','JR. ARICA 0 133','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,95,'AD','Activo','Activo','Activo','Activo A Activo D','DOMESTICO A DOMESTICO D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0100-001','00101000137','PATRICIA F. CAMARGO CONDE','00101000137','JR. ARICA 0 139','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,100,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0105-001','00101000148','LEON  CASTRO CANELO','00101000148','JR. ARICA 0 141','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,105,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0110-001','00101000159','JESUS ROLANDO HERNANDEZ GARRIAZO','22072157','JR. ARICA 0 149','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,110,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0115-001','00101000160','MARINA  IGNACIO GARCIA','00101000160','JR. ARICA 0 135','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,115,'AD','Activo','Activo','Activo','Activo A Activo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0120-001','00101000171','PODER JUDICIAL','00101000171','JR. ARICA 0 135','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,120,'AD','Activo','Activo','Activo','Activo A Activo D','ESTATAL A ESTATAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D' UNION ALL
SELECT '001-03-01-01-0010-0125-001','00101000182','DEL PERU BCO POPULAR','00101000182','JR. ARICA 0 195','NASCA - URB CASCO URBANO','NASCA - SECTOR 01',10,125,'AD','Inactivo','Inactivo','Inactivo','Inactivo A Inactivo D','COMERCIAL A COMERCIAL D','AC   A  AC   D','NASCA: Agua  A   NASCA: Desagüe  D'

-- convercion minuscula
select lower(nombres) as minuscula, * 
from padron_catastro 
where lower(nombres) like '%capcha%' and lower(nombres) like '%julio cesar%'

-- CONCATENACION
SELECT codcat, suministro, nombres, identificacion, direccion, estcon, tarifa, CONCAT(nombres,' -- ' ,identificacion) 
FROM padron_catastro

-- SUBSTRING
SELECT codcat, SUBSTRING(codcat, 19,4) lote
FROM padron_catastro

SELECT suministro, identificacion,
	CASE
		WHEN suministro <> identificacion THEN 'ES DIFERENTE'
		WHEN suministro = identificacion THEN 'ES IGUAL'
	END as MENSAJE
FROM padron_catastro
WHERE suministro != identificacion

-- ficha
select
	CASE
	WHEN SUCURSAL='nasca' THEN 01
	WHEN SUCURSAL='vista alegre' THEN 05
	WHEN SUCURSAL='01' THEN 01
	END AS SUCURSAL,
	*
from nasca.ficha
where id=12

-- parametro
select variable, *
from nasca.parametro
where variable like '%sucur%'

-- ubigeo
select *
from nasca.ubigeo
where variable='sucursal'

-- codigo catastral
select *
from nasca.parametro
where variable='SECTOR'

-- tipo documento
select *
from nasca.parametro
where variable='TIPO_DOCUMENTO'

-- actualizar tipo documento
UPDATE nasca.parametro
SET valor='CE', CODIGO='CE'
WHERE id=90

-- distrito/centor poblado
SELECT *
FROM nasca.parametro
WHERE variable='CENTRO_PROBLADO_DISTRITO'

-- zona (SUB CONSULTA VERIFICAR)
SELECT distrito, (SELECT distrito
FROM nasca.ficha) as z, *
FROM nasca.ficha

-- TIPO DE HABILITACION
SELECT *
FROM nasca.parametro
WHERE variable='TIPO_HABILITACION' -- FALTA AÑADIR CASCO URBANO EN TIPO_HABILITACION

UPDATE 	nasca.parametro
SET	valor='CP.', codigo='CP.'
WHERE 	id=96

INSERT INTO parametro(variable, valor, codigo)
SELECT 'TIPO_HABILITACION',''

-- NOBRE HABILITACION
SELECT *
FROM nasca.parametro
WHERE variable='NOMBRE_HABILITACION'

INSERT INTO nasca.parametro(variable, valor, codigo)
SELECT 'NOMBRE_HABILITACION','CAJUCA I 5TA ESTRELLA','CAJUCA_I_5TA_ESTRELLA'

-- COMUNA -- CONCATENAR
select tipo_habilitacion,nombre_habilitacion,tipo_habilitacion||' '||nombre_habilitacion as comuna 
from nasca.ficha

-- TIPO DE VIA
SELECT *
FROM nasca.parametro
WHERE variable='TIPO_VIA' -- CONSULTAR VICTOR
ORDER BY codigo

UPDATE nasca.parametro
SET valor='CARRETERA', codigo='CARR.'
WHERE id=105

-- ESTADO SERVICIO
SELECT *
FROM nasca.parametro
WHERE variable='ESTADO_SERVICIO'

-- TIPO SERVICIO
SELECT *
FROM nasca.parametro
WHERE variable='TIPO_SERVICIO'

-- TIPO CONSTRUCCION
SELECT *
FROM nasca.parametro
WHERE variable='TIPO_CONSTRUCCION'

-- ESTADO CONSTRUCCION
SELECT *
FROM nasca.parametro
WHERE variable='ESTADO_CONSTRUCCION'

-- ESTADO_SERVICIO_AGUA
SELECT *
FROM nasca.parametro
WHERE variable='CIIU'

-- 20180226

select ficha,* from nasca.ficha
where codsuministro='00101013201'

-- Guardar con zona horaria, guardado con la zona del servidor.
-- Lo recomendable es manejar con el tipo de dato con timestanp y luego convertir a tu zona horaria
select fecregistro,fecregistro AT TIME ZONE 'america/lima' as fecregistrolocal from nasca.ficha

-- 
SELECT to_char(nasca.ficha.fecregistro, 'YYYYMMDD') as fecregistro, nasca.ficha.codencuestador as codenc, fecregistro,*
from nasca.ficha 
inner join nasca.responsable
on nasca.ficha.id = nasca.responsable.id
inner join nasca.unidad_uso
on nasca.ficha.id = nasca.unidad_uso.idficha
--WHERE manzana='0200'
where to_char(nasca.ficha.fecregistro, 'YYYYMMDD')>='20180225' AND nasca.ficha.codencuestador='E03'
--nasca.ficha.codencuestador='E03' --AND nasca.ficha.codencuestador IS NULL
ORDER BY codenc

--where nasca.ficha.codsuministro='00101087301'
--where CONVERT(character varying(8), fecregistro,112) >= '20180220'

-- CIIU NO LISTA (ADD 9500)
insert into nasca.parametro(variable, valor, codigo)
select 'CIIU','ACTIVIDADES DE ORGANIZACIONES POLITICAS','9492'
insert into nasca.parametro(variable, valor, codigo)
select 'CIIU','OTRAS ACTIVIDADES DEPORTIVAS','9319'
insert into nasca.parametro(variable, valor, codigo)
select 'CIIU','ALMACENAMIENTO Y DEPOSITO','5210'
insert into nasca.parametro(variable, valor, codigo)
select 'CIIU','OTROS TIPOS DE INTERMEDIACION MONETARIA','6419'
INSERT INTO nasca.parametro(variable,valor,codigo)
select 'CIIU','ACTIVIDADES DE FOTOGRAFIA','7420'
INSERT INTO NASCA.PARAMETRO(VARIABLE, VALOR, CODIGO)
SELECT 'CIIU','ACTIVIDADES DE OFICINAS PRINCIPALES','7010'
insert into nasca.parametro(variable,valor,codigo)
select 'CIIU','ACTIVIDADES POSTALES','5310'
insert into nasca.parametro(variable,valor,codigo)
select 'CIIU','VENTA AL POR MENOR DE PRODUCTOS CULTURALES Y RECREATIVOS EN COMERCIOS ESPECIALIZADOS','476'
insert into nasca.parametro(variable,valor,codigo)
select 'CIIU','ACTIVIDADES DE HOSPITALES','8610'
-- select comuna,* from nasca.ficha_dev

insert into nasca.ficha(sucursal,estado_conexion,codsuministro,distrito,sector,manzana,lote,conexion,sector_opera,subsector,tipo_habilitacion,nombre_habilitacion,manzana_mun,lote_mun,sublote_mun,tipo_poblacion,tipo_via,nombre_via,num_municipal,telefono,estado_servicio,tipo_servicio,referencias,tipo_construccion,estado_construccion,grupo_caracteristico,ciiu,quien_habita,num_familias,num_habitantes,estado_agua,categoria_agua,tipo_cobranza_medicion,macrosector_agua,sector_agua,multiusuario_agua,cantidad_predios,caja_registro,estado_caja_agua,acometida_tuberia,diametro_acometida,tapa,tipo_consumidor,pavimento,localizacion_conexion,ubicacion_metros,fuga,estado_tapa,estado_desague,categoria_desague,macrosector_desague,sector_desague,red_distribucion_desague,tipo_material_tuberia,diametro_tubo,tipo_caja,estado_caja,localizacion_caja,estado_obstruido,ubicacion_metros_desague,marca_medidor,num_medidor,lectura,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,valvula,seguridad_medidor,vereda,pista,pozo_artesanal,tipo_almacenamiento,num_pisos,presion_agua,medidas_fachada,frec_horas_abastecimiento,frec_dias_abastecimiento,observaciones,codencuestador,fectrabajada,fila)
select sucursal,estado_conexion,codsuministro,distrito,sector,manzana,lote,conexion,sector_opera,subsector,tipo_habilitacion,nombre_habilitacion,manzana_mun,lote_mun,sublote_mun,tipo_poblacion,tipo_via,nombre_via,num_municipal,telefono,estado_servicio,tipo_servicio,referencias,tipo_construccion,estado_construccion,grupo_caracteristico,ciiu,quien_habita,num_familias,num_habitantes,estado_agua,categoria_agua,tipo_cobranza_medicion,macrosector_agua,sector_agua,multiusuario_agua,cantidad_predios,caja_registro,estado_caja_agua,acometida_tuberia,diametro_acometida,tapa,tipo_consumidor,pavimento,localizacion_conexion,ubicacion_metros,fuga,estado_tapa,estado_desague,categoria_desague,macrosector_desague,sector_desague,red_distribucion_desague,tipo_material_tuberia,diametro_tubo,tipo_caja,estado_caja,localizacion_caja,estado_obstruido,ubicacion_metros_desague,marca_medidor,num_medidor,lectura,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,valvula,seguridad_medidor,vereda,pista,pozo_artesanal,tipo_almacenamiento,num_pisos,presion_agua,medidas_fachada,frec_horas_abastecimiento,frec_dias_abastecimiento,observaciones,codencuestador,fectrabajada,fila
from nasca.ficha_dev
where codsuministro=''

-- CREACION SECUENCIA (OTRA OPCION ES SERIAL AVERIGUAR)
CREATE SEQUENCE ficha_id_seq -- ficha=tabla -- id=campo
-- ASIGNACION PARA UNA COLUMNA
ALTER TABLE nasca.ficha ALTER COLUMN id SET DEFAULT nextval('ficha_id_seq');

-- HACIENDO USO DE SERIAL
alter table nombretabla add column nombrecolumna serial primary key not null;


-- EL MAXIMO VALOR QUE YA ESTA TOMADO
SELECT MAX(id) FROM nasca.ficha; -- 5762
-- TODAS LAS INSERCIONES QUE PARTAN DESDE EL 5762
SELECT setval('ficha_id_seq', 5762);  

-- CONVERTIR LA HORA DEL SERVIDOR EN HORA LOCAL 'america/lima'
select manzana, lote, fecregistro, codencuestador, fectrabajada AT TIME ZONE 'america/lima' as fecregistrolocal, * from nasca.ficha
WHERE MANZANA='0300' 
ORDER BY lote DESC

-- AGRUPAR Y CONTAR
select codencuestador, COUNT(1) as conencuestador
from nasca.ficha
where manzana='0250' AND codencuestador is not null
group by codencuestador

-- CUANTAS FICHAS CREADAS POR LOTE
select codencuestador, lote, COUNT(*) as contador
from nasca.ficha
where manzana='0250' AND codencuestador is not null
group by codencuestador, lote
order by lote

-- VACIAR UNA TABLAR (BORRA LA TABLA Y LA VUELVE A CREAR VACIA)
truncate table nasca.ficha_dev

-- CHANGE ROL USER
update nasca.usuario -- CHANGE SUPERVISOR TO 
set tipo='E'
where id=15

-- INSERT USER
-- https://www.browserling.com/tools/bcrypt (bcrypt)
insert into nasca.usuario(codigo,contraseña,nombres,apellido_pat,apellido_mat, tipo,color)
select 'E10','$2a$10$y05NL54v6OG6Qms4ZizLN.gx1d5OsmlXHpWnVdBXkQvfOjAaBFD2a','Juny Antuane','Ancase','Munarriz','E','f6ab4a'

-- CONSULTA SECTOR_2 PADRON-AYUDA
select mz, 
lt, 
case
	when (char_length(suministro)=7) then '0010'||''||suministro
end as suministro, 
codcat as codcatastral,
nombres, 
tipo_via ||' '|| nombre_via ||' '|| num_via as direccion,
case
	when(identificacion=0) then '-'
end as idenficacion,
facturacion
from sector2.padron
where mz=365
order by lt asc


-- QUE FILA NOS FALTA
select min(fila) from nasca.ficha
select max(fila) from nasca.ficha

select min(fila+1) as fila_c from nasca.ficha where fila+1 not in (select fila from nasca.ficha where fila is not null)

-- PADRON SECTOR 02 SAN CARLOS

select 
CASE
	WHEN estado='ACTIVA' THEN 'REAL'
	WHEN estado='CLANDESTINO' THEN 'CLANDESTINO'
END AS ESTADO,
CASE
	WHEN (char_length(suministro)=7) THEN '0010'||''||suministro
END AS suministro,
distrito, sector, manzana, lote, conexion,facturacion, sector_operacional, sub_operacional, nombres, identificacion, conyuge, tipo_habilitacion, nombre_habilitacion, manzana_municipal, lote_municipal, tipo_via, nombre_via, numero_municipal, situacion, tipo_servicio, complemento,tipo_predio,estado_construccion,ciiu,quien_habita,num_familia,num_habitantes, tipo_uso,hab_deshab,uso_predio,marca_medidor,num_medidor,lectura_medidor,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,llaves_paso_medidor,seguridad_medidor,condicion_conexion_agua, material_caja_agua, estado_caja_agua, material_conexion_agua, diametro_conexion_agua, material_tapa_agua, ubicación_conexion_agua, fuga_agua, estado_tapa_agua,ubicacion_metros_agua, responsable_uso, tipo_uso, complemento_uso, condicion_conexion_desague, material_conexion_desague, diametro_conexion_desague, material_conexion_desague, estado_caja_desague,ubicación_conexion_desague,tapa_desague, estado_tapa_desague, atoro,ubicacion_metros_desague,vereda,pavimento, pozo_artesanal, tipo_almacenamiento, pisos, medida_facha,horas_frecuencia,dias_frecuencia,argumento_complementario from sector 
where manzana='295'
order by lote asc


-- PADRON SECTOR 03 VISTA ALEGRE
select 
CASE
	WHEN estado='ACTIVA' THEN 'REAL'
	WHEN estado='CLANDESTINO' THEN 'CLANDESTINO'
	WHEN estado='FACTIBLE' THEN 'FACTIBLE'
END AS ESTADO,
CASE
	WHEN (char_length(suministro)=8) THEN '005'||''||suministro
	WHEN (char_length(suministro)=0) THEN '-'
END AS suministro,
distrito, sector, manzana, lote, conexion,facturacion, sector_operacional, sub_operacional, nombres, identificacion, conyuge, tipo_habilitacion, nombre_habilitacion, manzana_municipal, lote_municipal, tipo_via, nombre_via, numero_municipal, situacion, tipo_servicio, complemento,tipo_predio,estado_construccion,ciiu,quien_habita,num_familia,num_habitantes, tipo_uso,hab_deshab,uso_predio,marca_medidor,num_medidor,lectura_medidor,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,llaves_paso_medidor,seguridad_medidor,condicion_conexion_agua, material_caja_agua, estado_caja_agua, material_conexion_agua, diametro_conexion_agua, material_tapa_agua, ubicación_conexion_agua, fuga_agua, estado_tapa_agua,ubicacion_metros_agua, responsable_uso, tipo_uso, complemento_uso, condicion_conexion_desague, material_conexion_desague, diametro_conexion_desague, material_conexion_desague, estado_caja_desague,ubicación_conexion_desague,tapa_desague, estado_tapa_desague, atoro,ubicacion_metros_desague,vereda,pavimento, pozo_artesanal, tipo_almacenamiento, pisos, medida_facha,horas_frecuencia,dias_frecuencia,argumento_complementario from sectorva 
where manzana='125'
order by lote asc

-- PADRON SECTOR 03 VISTA ALEGRE -- RESUMEN
select 
CASE
	WHEN estado='ACTIVA' THEN 'REAL'
	WHEN estado='CLANDESTINO' THEN 'CLAND.'
	WHEN estado='FACTIBLE' THEN 'FACT.'
END AS ESTADO,
CASE
	WHEN (char_length(suministro)=8) THEN '005'||''||suministro
	WHEN (char_length(suministro)=0) THEN '-'
END AS suministro,
CASE
	WHEN (char_length(manzana)=3) THEN '0'||manzana
END AS manzana, 
CASE
	WHEN (char_length(lote)=2) THEN '00'||lote 
	WHEN (char_length(lote)=3) THEN '0'||lote 
END AS lote, 

cod_catastral,
nombres, 
tipo_habilitacion||' '||nombre_habilitacion as nombre_habilitacion, 
tipo_via||' '||nombre_via||' '||numero_municipal as nombre_via,
facturacion
from sectorva 
where manzana='548'
order by lote asc


-- OBTENIENDO VALORES REPETIDOS 
select valor, codigo, count(*) 
from NASCA.parametro
where variable='MANZANA'
group by valor, codigo
having count(*) > 1


select codencuestador,estado_conexion, codsuministro, manzana, lote, * from nasca.ficha
where manzana='0620' and sector='01'
order by lote asc

select codencuestador,manzana, count(lote) from nasca.ficha
where manzana='0855' and sector='01'
group by codencuestador, manzana


-- REPORTE LISBETH SECTOR 01
select * from nasca.ficha f
inner join nasca.unidad_uso u
on f.id = u.idficha
inner join nasca.responsable r
on f.id = r.idficha
where f.estado_conexion is not null and f.sector='01'
order by f.manzana, f.lote asc


-- ACTUALIZAR CAMPO COMUNA A UNA MANZANA ASIGNADA
update nasca.ficha
set comuna='CU. CERCADO_NASCA'
where manzana='0845' and sector='01'



-- URBANA
update nasca.ficha
set tipo_poblacion='URBANA'
where manzana='0997' and SECTOR='01'

-- COLUMNA Y FILA
update nasca.ficha
set ubicacion_conexion_fila=0 ,ubicacion_conexion_columna=0
where manzana='0565' and SECTOR='01'

-- *** PROPIETARIO ***
select * from nasca.responsable
where idficha='4761'

-- *** RESPONSABLE ***
select * from nasca.responsable
where idficha in (
'1531',
'1531',
'1530',
'1529',
'1528',
'1527',
'1526',
'1525',
'1524',
'1535',
'1534',
'1533',
'1532')
order by idficha asc


-- *** UNIDAD_USO ***
select * from nasca.unidad_uso
where idficha in (
'1500',
'1499',
'1498',
'1497',
'1496',
'1495',
'1494',
'1493',
'1492',
'1491',
'1490',
'1489',
'1488',
'1487',
'1486',
'1485',
'1484',
'1483',
'1482',
'1481')
order by idficha asc

-- ** SEARCH FOR MEASURE AND REFERENCE
select * from nasca.ficha
where ubicacion_metros_desague='1.64' and medidas_fachada='9.15' and referencias like '%COLOR AMARILLO%'

-- ** UPDATE TIPO_HABILITACION, NOMBRE_HABILITACIO, SUBSECTOR, SECTOR
update nasca.ficha
set tipo_habilitacion='URB.', nombre_habilitacion='LOS_JARDINES', subsector='003', sector_opera='01'
where manzana='0400' and sector='01'-- and codencuestador is null and codsuministro is null