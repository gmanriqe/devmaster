--10122014

-- Ejemplo con offset-fetch
-- 7. Elabore la consulta base para el paginado de películas:
	-- 7.1 Si el usuario marca 1 la plataforma debe mostrar las 5 primeras
	-- películas ordenadas por fecha de registro de manera descendente.
	-- 7.2 Si el usuario marca 2 la plataforma debe mostrar las siguientes 5
	-- primeras películas ordenadas por fecha de registro de manera
	-- descendente. Así sucesivamente para las demás pestañas 

SELECT *
FROM dbo.tbPelicula
ORDER BY fecregistro DESC
OFFSET 0 ROW
FETCH NEXT 5 ROW ONLY

-- quienes son los usuario con fecha de confirmacion desconocida (null)
SELECT alias, correo,
	   CASE 
		WHEN fechconfirma is null THEN 'FECHA NO CONFIRMA POR USUARIO'
	   ELSE
		'EL USUARIO CONFIRMO EL' + CONVERT(varchar(8), fechconfirma, 112)
	   END as mensaje
FROM tbUsuario
WHERE fechconfirma is null -- valores desconocidos
-- WHERE fechconfirma in not null -- valores conocidos

-- 3. USO DEL LIKE
-- 0Elabore un reporte que reciba como entrada un número de opción y liste los
-- países cuyo nombre:
SELECT *
FROM tbPais
--WHERE nombrepais LIKE '[aeiou]%' -- Inicia con una vocal
--WHERE nombrepais LIKE '[^aeiou]%' -- Inicia con una consonante
-- WHERE nombrepais LIKE '[^aeiou]%' AND nombrepais NOT LIKE '%-%'-- Paises que no contengan algun caracter especial
-- WHERE nombrepais LIKE 'a%a' --Inicia y termina con una “a”
-- WHERE nombrepais LIKE '%ama%' -- Contenga la secuencia “ama”
-- WHERE nombrepais LIKE '_u%i_' --Segunda letra es una “u” y penúltima la “i” (HABLANDO DE POSICIONES ESPECIFICAS)
-- WHERE nombrepais LIKE '_u%[^i]__' -- Segunda letra es una “u” y antepenúltima diferente a “i”
-- WHERE nombrepais LIKE '_u%[^io]__'-- Segunda letra es una “u” y antepenúltima diferente a “i” o diferente a "o"
-- WHERE nombrepais LIKE '_u%[^i]__' -- Contenga una “a” seguida del carácter sombrero, seguida de la letra “b”
-- WHERE nombrepais LIKE '%[aeiou]n[^aeiou]%'  --Contenga una vocal seguida de la letra “n”, seguida de una consonante.

-- **** TALLER DE CONSULTA A MULTIPLES TABLAS ****
--RECUERDA: predicado = comparar contra algo

-- uso del CROSS JOIN
--1. Liste todas las combinaciones de categorías de películas y planes.
SELECT cat.nombrecategoria, pla.nombre
FROM tbCategoria cat
CROSS JOIN tbPlan pla
ORDER BY cat.nombrecategoria

-- uso del INNER JOIN (interseccion de conjunto xD)
--2. Liste por cada película el nombre, resumen, año de estreno, duración en
--minutos y nombre del país.
SELECT pel.nombre, 
       pel.resumen, 
	   pel.estreno,
	   pel. duracionmin, 
	   pais.nombrepais as nombrepais
FROM tbPelicula pel
INNER JOIN tbPais pais -- con que tabla
ON pel.idpais = pais.idpais -- bajo que campos se asocian

-- consultar desde otra base de datos en la misma instancia
SELECT * FROM PrimerParcialDB.produccion.tbEmprendimiento
SELECT * FROM PrimerParcialDB.produccion.tbUbigeo

--Cuales son los emprendimientos del departamento de Amazonas
--y con población<10,000
--y mostrar mensaje [0-5000>: Población menor a 5000
--contrario, población entre 5000 y 10000
select emp.ruc,
       emp.razonsocial,
	   ubi.departamento,
	   ubi.provincia,
	   ubi.distrito,
	   ubi.poblacion,
	   case when ubi.poblacion>=0 and ubi.poblacion<5000 then 'Población menor a 5000'
	   else 'población entre 5000 y 10000' end as mensajepoblacion
from PrimerParcialDB.produccion.tbEmprendimiento emp
inner join PrimerParcialDB.produccion.tbUbigeo ubi
on emp.idubigeo=ubi.id
where ubi.departamento='AMAZONAS' and ubi.poblacion<10000
order by ubi.poblacion desc

-- 3. Liste por cada calificación la valoración, fecha de valoración, comentario,
-- nombre de película de aquellas calificaciones>=3.
SELECT cal.valoracion, 
       cal.fecregistro, 
	   ISNULL(cal.comentario, 'No ingreso comentario') as comentario,
	   pel.nombre
FROM tbCalificacion cal
INNER JOIN tbPelicula pel
ON cal.idpelicula = pel.idpelicula
WHERE cal.valoracion  >= 3

-- uso de LEFT OUTER JOIN
-- 4. Liste por cada usuario el alias, correo, estado y nombre de su país. NOTA: Los usuarios deben mostrarse así el país no se encuentra cargado
-- siendo usuario la tabla principal de la consulta.
SELECT usu. alias,usu.correo, usu.estado, pais.nombrepais
FROM tbUsuario usu
LEFT JOIN tbPais pais
ON usu.idpais = pais.idpais
SELECT * FROM tbUsuario
SELECT * FROM tbpais

-- uso de RIGHT OUTER JOIN
--5. Liste por cada país el id, nombre del país, así como el alias y correo de los
--usuarios asociados.
--NOTA: Los países deben mostrarse así no existan usuarios asociados
--siendo usuario la tabla principal de la consulta.
SELECT usu.alias, usu.correo, pais.idpais, pais.nombrepais
FROM tbUsuario usu
RIGHT JOIN tbPais pais
ON usu.idpais = pais.idpais

--uso de FULL OUTER JOIN (union de conjunto xD)
SELECT usu.alias, usu.correo, pais.idpais, pais.nombrepais
FROM tbUsuario usu
FULL JOIN tbPais pais
ON usu.idpais = pais.idpais

--uso de SELF JOIN, 
-- Ejm: yo soy empleado y tengo mi jefe. Mi jefe tiene su jefe. Su jefe de mi jefe tiene un jefe. 
CREATE SCHEMA interno;
DROP TABLE interno.tbEmpleado;
CREATE TABLE interno.tbEmpleado
(
id int identity(1,1) primary key,
nombres varchar(100),
apellidoPat varchar(100),
apellidoMat varchar(100),
matricula varchar(8),
matriculajefe int
)

insert into interno.tbEmpleado
SELECT 'Carlos','Mendez','Lopez','s00001',1 union all
SELECT 'Miguel','Morales','Vallejo','s00002',1 union all
SELECT 'Juana','Lucas','Diaz','s00003',1 


insert into interno.tbEmpleado
SELECT 'Carlos','Mendez','Lopez','s00004',2 union all
SELECT 'Miguel','Morales','Vallejo','s00005',2

insert into interno.tbEmpleado
SELECT 'Carlos','Mendez','Lopez','s00006',3 union all
SELECT 'Miguel','Morales','Vallejo','s00007',3

insert into interno.tbEmpleado
SELECT 'Carlos','Mendez','Lopez','s00006',null

SELECT * FROM interno.tbEmpleado

-- obtener la matricula, nombre completo de los empleado y nombre completo de los jefes
-- (MEJORAR CODIGO)
SELECT emp.matricula, 
	   emp.nombres, 
	   emp.apellidoPat + emp.apellidoMat as nombrecompleto, 
	   emp2.nombres + emp2.apellidoPat + emp2.apellidoMat
FROM interno.tbEmpleado emp
INNER JOIN interno.tbEmpleado emp2
on emp.matriculajefe = emp2.id

-- uso de MULTI JOIN

-- uso de JOIN + GROUP BY + SUM

-- uso de JOIN + GROUP BY + MAX + MIN

-- valoracion minima y maxima de cada pais

-- visualizar ubigeos sin emprendimientos. Contabilizar por cada ubigeo los emprendimientos registrados.

-- mostrar la minima y maxima poblacion y el area total en km2 de cada departamento
SELECT ubi.departamento, MIN(ubi.poblacion) as minpob, MAX(ubi.poblacion) as maxpobl, SUM(ubi.areakm2) as totalkm2
FROM PrimerParcialDB.produccion.tbUbigeo as ubi
GROUP BY ubi.departamento
ORDER BY ubi.departamento