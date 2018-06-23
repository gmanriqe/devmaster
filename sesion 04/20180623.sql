-- sesion 04 20180623


--USANDO BD CUESTIONARIO
--elaborar un reporte donde se muestre el id modulo, nombre del modulo y los tipos de controles
select distinct modu.ID, modu.nombre, cont.NOMBRE
from [dbo].[CUESTIONARIO] cues
inner join [dbo].[MODULO] modu on modu.ID = cues.IDMODULO
inner join [dbo].[TIPO_CONTROL] cont on cont.id = cues.IDTIPOCONTROL

select * from [TIPO_CONTROL]


--USANDO BD BANCA MASTER
--usando la BD BANCA MASTER, elaborar un reporte donde se muestre el ID contacto con su calificacion
--Nota: si no tiene calificacion tambien debera mostrarse el contacto

select * 
from [dbo].[contacto_registro] reg
left join [dbo].[calificacion_contacto] cont on cont.idcontacto = reg.idcontacto

--MANEJO DE FECHAS
--convertir una getdate() a date
--https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017
select convert(DATE, GETDATE())
select convert(VARCHAR, GETDATE(),103) -- deberias transformar a un varchar obligatoriamente
select convert(DATE, '15-06-2018',103)
select convert(DATETIME, '14/06/2018 18:00',103)

--FUNCIONES DE CADENA
--concatenando
select nombre+' '+apellidos as nombreApellido from [dbo].[cliente]
select CONCAT(nombre,'',apellidos) as nombreApellido from [dbo].[cliente] -- aqui ya dejas de utilizar el +. Dentro de CONCAT() pasas cada campo como parametro

--substring
select SUBSTRING(nombre,1,5) as nombre from cliente

--left
select LEFT(nombre,3) as nombre from cliente

--rigth
select RIGHT(nombre,2) as nombre from cliente

--length
select LEN(nombre) as nombre from cliente

--datalength
select DATALENGTH(nombre) as nombre from cliente --cuenta bits

--charindex
--CHARINDEX ( expressionToFind , expressionToSearch [ , start_location ] )   
select CHARINDEX('manrique',apellidos) as busqueda, apellidos from cliente --busca la coincidencia ya sea en minuscula o mayuscula

--replace
--REPLACE ( string_expression , string_pattern , string_replacement )
select REPLACE(nombre,' ','_' ) as nombre from cliente

--upper & lower
select upper(nombre) as mayuscula, lower(apellidos) as minuscula from cliente




