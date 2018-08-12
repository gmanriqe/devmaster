-- INSERT CON SELECT Y UNION ALL
INSERT INTO cliente(dni, nombre, apellidos, idcategoria)
SELECT '64394487','Jesus','Gonzales',4 UNION ALL
SELECT '35947865','Jeferson','Arias',3 UNION ALL
SELECT '75849965','Valeria','Rios',1 UNION ALL
SELECT '65847361','Karla','Fuentes',2 

-- REGISTRAR AL MENOS 5 NUEVOS COLABORADORES
-- CONSIDERAR LOS CAMPOS QUE NO DEBEN SER NULOS
INSERT INTO DBO.colaborador
SELECT '86596523','Jaime','Dolores' UNION ALL
SELECT '98765432','Beto','Rodriguez' UNION ALL
SELECT '15246253','Dayanna','Alvarado' UNION ALL
SELECT '63568597','Cinthya','Gonzales' UNION ALL
SELECT '78564523','Diego','Gomez' 


SELECT * FROM dbo.calificacion
-- INSERT CON IDENTITY
SET IDENTITY_INSERT calificacion ON;
INSERT INTO calificacion(idcalificacion, nombre, descripcion)
SELECT 5,'nueva calificacion','-'
SET IDENTITY_INSERT calificacion OFF;

/** SUBCONSULTAS **/
-- RECUERDA QUE PARA UNA SUBCONSULTA DEBES TENER EN CUENTA EL WHERE O TOP
-- CONSULTA INTERNA
-- ELABORE UN REPORTE DONDE SE LISTE LA INFORMACION DEL CLIENTE Y CUANTOS PRODUCTOS TIENE CONTACTADOS
select cli.idcliente, cli.nombre+' '+cli.apellidos as nombreCliente,
(select count(cr.idcliente)
from contacto_registro cr where cr.idcliente = cli.idcliente --id de ambas tablas son iguales
group by cr.idcliente)
from cliente cli

select count(idcliente)
from contacto_registro
group by idcliente

-- elaborar un reporte donde liste los colaboradores (tabla de donde partes) y cuantos contactos tiene realizados (tabla donde agrupas)
select col.nombres, col.apellidos, 
(
select count(con.idcolaborador)
from [dbo].[contacto_registro] con 
where con.idcolaborador = col.idcolaborador
group by idcolaborador
) as colaborador
from [dbo].[colaborador] col

select count(idcolaborador)
from [dbo].[contacto_registro]
group by idcolaborador

select * from contacto_registro
select * from colaborador

-- elaborar un reporte donde liste los colaboradores (tabla de donde partes) y cuantos contactos tiene realizados (tabla donde agrupas)
-- añadiendo el when case
select col.nombres, col.apellidos, 
(
select count(con.idcolaborador)
from [dbo].[contacto_registro] con 
where con.idcolaborador = col.idcolaborador
--group by idcolaborador
) as cantidadcontacto,
CASE 
	WHEN (select count(con.idcolaborador) from [dbo].[contacto_registro] con where con.idcolaborador = col.idcolaborador)=1 THEN 'NUEVO EN CARTERA'
	WHEN (select count(con.idcolaborador) from [dbo].[contacto_registro] con where con.idcolaborador = col.idcolaborador)=2 THEN 'CLIENTE FRECUENTE'
	ELSE '-'
END
from [dbo].[colaborador] col

-- a la siguiente query, especifique la cantida de contactos obtenidos,
-- segun los siguientes datos.
/*
	SI ES 0 = 'AUN NINGUNO'
	SI ES 1 = 'YA INICIADO'
	SI ES 2 o + = 'ENCAMINADO'
*/
select col.nombres, col.apellidos, 
(
select count(con.idcolaborador)
from [dbo].[contacto_registro] con 
where con.idcolaborador = col.idcolaborador
--group by idcolaborador
) as cantidadcontacto,
CASE 
	WHEN (select count(con.idcolaborador) from [dbo].[contacto_registro] con where con.idcolaborador = col.idcolaborador)=1 THEN 'YA INICIADO'
	WHEN (select count(con.idcolaborador) from [dbo].[contacto_registro] con where con.idcolaborador = col.idcolaborador) >=2 THEN 'ENCAMINADO'
	ELSE 'ENCAMINADO'
END as referencia
from [dbo].[colaborador] col}

/* CONSULTAS EXTERNAS CON FROM */
SELECT COUNT(idcliente) as cliente,
(SELECT COUNT(idproducto) FROM producto) as productos,
(SELECT COUNT(idcategoria) FROM categoria) as categoria
FROM cliente

-- elaborar un reporte de consulta externa SIN FROM
SELECT 
(SELECT COUNT(idcliente) FROM cliente) as cliente,
(SELECT COUNT(idproducto) FROM producto) as productos,
(SELECT COUNT(idcategoria) FROM categoria) as categoria


--elaborar un reporte donde se muestre todos los productos y cuantos fueron contactados.
--si no tiene cantidad de contactos(cero o nulos), mencionar 'PRODUCTO NO CONTACTADO'

SELECT pro.nombreproducto, isnull(pro.descripcion,'no descripcion') as descripcion, 
(
SELECT tip.nombre 
from tipoproducto tip 
where tip.idtipoproducto = pro.idtipoproducto
),
(
select count(cont.idproducto) 
from contacto_registro cont 
where cont.idproducto=pro.idproducto
--group by idproducto
) as cantidadproducto,
CASE 
	WHEN (select count(cont.idproducto) from contacto_registro cont where cont.idproducto=pro.idproducto) = 0 OR 
	(select count(cont.idproducto) from contacto_registro cont where cont.idproducto=pro.idproducto) is null THEN 'PRODUCTO NO CONTACTADO' 
	ELSE '-'
END as cantidad
FROM dbo.producto pro
inner join dbo.tipoproducto tip
on pro.idtipoproducto = tip.idtipoproducto


/** SUB CONSULTAS DENTRO DE UN FROM **/
-- SVG : PROMEDIO
-- elaborar un reporte, para obtener un el promedio de calificacion
-- considerar el puntaje indicado en la calificacion: 0 puntos = 0 , 1 puntos - 1 , 2 puntos - 2 , 3 puntos - 3 , ...
-- listar los contactos, nombre cliente, nombre producto y su comentario de la calificacion
-- RECUERDA: -- tomar en cuenta a la tabla que tiene mayor informacion como tabla principal
select * from dbo.calificacion
select * from dbo.calificacion_contacto
select * from dbo.contacto_registro


select AVG(convert(DECIMAL(5,2),nuevatabla.descripcionpuntaje))
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
