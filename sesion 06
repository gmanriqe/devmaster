-- SESION 06
-- Tablas derivadas: Son diferentes a la subconsultas. Estas van en el FROM

-- EJERCICIO SESION 05
--select AVG(convert(DECIMAL(5,2),nuevatabla.descripcionpuntaje))

-- COMMON TABLE EXPRESION - expresiones de tablas comunes
WITH cte_tb1 -- cte_tb1 es el nombre de tabla
as
(select creg.idcontacto ,cli.nombre+' '+cli.apellidos as nombres, pro.nombreproducto, calco.idcalificacion, cal.descripcion, 
case
	when cal.descripcion='1 puntos' then 1
	when cal.descripcion='2 puntos' then 2
	when cal.descripcion='3 puntos' then 3
	when cal.descripcion='4 puntos' then 4
	when cal.descripcion='4 puntos' then 5
	else 0
end as descripcionpuntaje
from dbo.contacto_registro creg
inner join dbo.cliente cli on creg.idcliente = cli.idcliente
inner join producto pro on creg.idproducto = pro.idproducto
left join calificacion_contacto calco on creg.idcontacto = calco.idcontacto
left join calificacion cal on calco.idcalificacion = cal.idcalificacion) 
select * from cte_tb1 -- cte_tb1 es el nombre de tabla

-- UTILIZANDO VALORES DE LA TABLA cte_tb1
-- RECUERDA QUE EL CTE SOLAMENTE FUNCIONA CUANDO LA SUBCONSULTA ESTA DENTRO DE UN FROM. No! DENTRO DE UN SELECT
WITH cte_tb1 -- cte_tb1 es el nombre de tabla
as
(select creg.idcontacto ,cli.nombre+' '+cli.apellidos as nombres, pro.nombreproducto, calco.idcalificacion, cal.descripcion, 
case
	when cal.descripcion='1 puntos' then 1
	when cal.descripcion='2 puntos' then 2
	when cal.descripcion='3 puntos' then 3
	when cal.descripcion='4 puntos' then 4
	when cal.descripcion='4 puntos' then 5
	else 0
end as descripcionpuntaje
from dbo.contacto_registro creg
inner join dbo.cliente cli on creg.idcliente = cli.idcliente
inner join producto pro on creg.idproducto = pro.idproducto
left join calificacion_contacto calco on creg.idcontacto = calco.idcontacto
left join calificacion cal on calco.idcalificacion = cal.idcalificacion),
cte_tb2
as
(select * from cte_tb1) -- cte_tb1 es el nombre de tabla 01
select * from cte_tb2 -- cte_tb2 es el nombre de la tabla 02

-- elaborar un reporte donde se muestre el promedio de
-- calificacion, por cada colaborador se deberá mostrar el nombre del colaborador y el
-- promedio de las calificaciones realizadas, si no tiene calificacion se colocará cero

SELECT * FROM cliente
SELECT * FROM colaborador
SELECT * FROM producto
SELECT * FROM contacto_registro

go
with tb_new
as
(select c.nombres, cr.idcontacto, cal.idcalificacion, cal.descripcion 
from contacto_registro cr
right join colaborador c on cr.idcolaborador = c.idcolaborador
left join calificacion_contacto cc on cr.idcontacto = cc.idcontacto
left join calificacion cal on cal.idcalificacion = cc.idcalificacion),
tb_new2
as
(select nombres, idcontacto,
(case
	when descripcion = '0 punto' OR descripcion is null THEN '0'
	when descripcion = 'la calificacion es 1' THEN '1'
	when descripcion = 'la calificacion es 2' THEN '2'
	when descripcion = 'la calificacion es 4' tHEN '3'
END) as puntaje
from tb_new),
tb_new3
as
(select nombres, avg(convert(decimal(5,2),puntaje)) as promediopuntaje 
from tb_new2
group by nombres)
select * from tb_new3


-- a la consulta obtenida, considerar si el promedio:




go
with tb_new
as
(select c.nombres, cr.idcontacto, cal.idcalificacion, cal.descripcion 
from contacto_registro cr
right join colaborador c on cr.idcolaborador = c.idcolaborador
left join calificacion_contacto cc on cr.idcontacto = cc.idcontacto
left join calificacion cal on cal.idcalificacion = cc.idcalificacion),
tb_new2
as
(select nombres, idcontacto, descripcion,
(case
	when descripcion = '0 puntos' OR descripcion is null THEN '0'
	when descripcion = 'la calificacion es 1' THEN '1'
	when descripcion = 'la calificacion es 2' THEN '2'
	when descripcion = 'la calificacion es 3' tHEN '3'
	when descripcion = 'la calificacion es 4' tHEN '4'
END) as puntaje
from tb_new),
tb_new3
as
(select nombres, avg(convert(decimal(5,2),puntaje)) as promediopuntaje 
from tb_new2
group by nombres)

select nombres,
case
	WHEN promediopuntaje = 0 then 'COLABORADOR SIN CALIFICACION'
	WHEN promediopuntaje > 3 AND promediopuntaje < 5 then 'COLABORADOR PROMEDIO'
	WHEN promediopuntaje >= 5 then 'COLABORADOR CON BUENA CALIFICACION'
END as prompuntaje
from tb_new3

select * from calificacion_contacto
select * from contacto_registro
select * from calificacion

/**********
	VISTAS
**************/
-- UNA VISTA NO RECIBE PARAMETROS
-- SOLO PUEDES LOGRAR HACER SELECT
-- SE PUEDE REALIZAR INNER JOIN

--CREACION DE UNA VISTA
--nomenclatura v:vista cliente:tabla list:listar
go
	CREATE VIEW v_cliente_list 
	select idcliente, dni, apellidos from cliente
go
-- ELIMINAR UNA VISTA
	drop view v_cliente_list
go
-- MODIFICAR UNA VISTA
	ALTER VIEW  v_cliente_list
	as
	select idcliente, dni, nombre, apellidos from cliente
go
-- LLAMAR A UNA VISTA
	SELECT * FROM v_cliente_list
go
	CREATE VIEW v_producto_list
	as
	SELECT p.nombreproducto, t.nombre, t.descripcion
	from producto p
	inner join tipoproducto t on p.idtipoproducto = t.idtipoproducto
go
select * from v_producto_list


/**********************
MANEJO DE VARIABLES
*********************/

declare @dni varchar(10)
set @dni = '71556877'
SELECT * FROM cliente
where dni = @dni


/**********************
FUNCTION
*********************/
-- de una funcion no puedes llamar a una store procedure
-- mientras que en un store procedure si puedes llamar a una funcion
-- le puedes enviar parametros o no
-- en una funcion te devolvera si o si un resultado (le envies o no un resultado)
-- la funcion no te realiza insert update o delete
-- los encontraras en la carpeta programmability - functions - table-valued functions


-- FUNCIONES DE TIPO TABLA
-- ESTRUCTURA DE UNA FUNCION
go
CREATE FUNCTION f_cliente_list() -- declaracion de una funcion
returns table -- si no recibe parametros declararlos vacio
as return
select idcliente, dni,nombre,apellidos 
from cliente
-- llamada a una funcion de tipo tabla
--similar a la llamada de una vista
select * from f_cliente_list()

go
CREATE FUNCTION f_cliente_list2
(
@nombre varchar(50)
)
returns table
as 
return
select nombre,dni 
from cliente
where @nombre = nombre

select * from f_cliente_list2('gian carlos')


-- FUNCIONES ESCALARES
-- retorna valores de un solo tipo
-- los encontraras en la carpeta programmability - functions - scalar-valued functions
go
CREATE FUNCTION f_PromedioCalificaacion()
returns decimal (5,2) -- lo que te devolvera al final la funcion
as
BEGIN -- necesario el inicio
	declare @retornoCalculo decimal(5,2)

	select @retornoCalculo = AVG(convert(DECIMAL(5,2),nuevatabla.descripcionpuntaje))
	from
	(select creg.idcontacto ,cli.nombre+' '+cli.apellidos as nombres, pro.nombreproducto, calco.idcalificacion, cal.descripcion, 
	case
		when cal.descripcion='1 puntos' then 1
		when cal.descripcion='2 puntos' then 2
		when cal.descripcion='3 puntos' then 3
		when cal.descripcion='4 puntos' then 4
		when cal.descripcion='4 puntos' then 5
		else 0
	end as descripcionpuntaje
	from dbo.contacto_registro creg
	inner join dbo.cliente cli on creg.idcliente = cli.idcliente
	inner join producto pro on creg.idproducto = pro.idproducto
	left join calificacion_contacto calco on creg.idcontacto = calco.idcontacto
	left join calificacion cal on calco.idcalificacion = cal.idcalificacion) as nuevatabla

	return @retornoCalculo
END -- necesario el final


select f_PromedioCalificaacion()

-- EJERCICIO: elaborar una funcion donde me retorne la cantidad de registros de : clientes, colaboradores y productos
go
CREATE FUNCTION f_contador_list() -- declaracion de una funcion
returns table -- si no recibe parametros declararlos vacio
as return
select 
(select count(*) as contadorCliente from cliente) as cliente ,
(select count(*) as contadorColaborador from colaborador) as coloborador,
(select count(*) as contadorProducto from producto) as producto

select * from f_contador_list() -- DEBES TENER EN CUENTA QUE TIENES QUE LLAMARLO COMO SI FUERA UNA FUNCION DE TABLA, NO UNA ESCALAR


-- EJERCICIO: Eleborar una funcion donde liste los encuentros entre dos fechas diferentes
-- estas fechas deben ser parametros de entrada
-- se debe mostrar hora de encuentro, sede

create function f_filtro
(
	@fecha1 datetime,
	@fecha2 date
)
returns table
as 
return
select f.FECHA, s.NOMBRE_SEDE from dbo.TB_FIXTURE f
inner join dbo.TB_SEDE s on f.IDSEDE = s.IDSEDE
where convert(DATE, FECHA, 103) between convert(DATE, @fecha1, 103) and convert(DATE, @fecha2, 103)

select * from dbo.f_fixturesede_list('2018-06-15','2018-06-19')
select * from dbo.f_fixturesede_list('2018/06/15','2018/06/19')

select *  from TB_FIXTURE
where convert(DATE,FECHA,103) between convert(DATE, '15-06-2018', 103) and  convert(DATE,'19-06-2018', 103) 


/**********************
STORE PROCEDURE
*********************/
-- son almacenados en la carpeta stored procedures

-- CREACION DE UN STORE PROCEDURE
CREATE PROCEDURE sp_sede_list
as
select NOMBRE_SEDE from tb_sede

-- LLAMADA DE UN STORE PROCEDURE
exec sp_sede_list

-- UPDATE DE UN STORE PROCEDURE
ALTER procedure sp_sede_list
(
	@fecha1 date,
	@fecha2 date
)
as
select * from f_filtro (@fecha1,@fecha2) --invocando a la funcion filtro creada anterioremente


exec sp_sede_list'2018/06/14','2018/06/15'

-- EJERCICIO: elabore un procedimiento almacenaado donde inserte una nueva sede y liste las sedes

create procedure sp_sede_insert_list
(
	@sede varchar(50)
)
as 
insert into TB_SEDE
select @sede
select * from TB_SEDE

exec sp_sede_insert_list'Huacho'

-- sp_helptextmuestra como esta hecho tu store procedure o function
sp_helptext sp_sede_insert_list
