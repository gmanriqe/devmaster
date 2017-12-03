--03122017

CREATE TABLE tbCategoria
(
idcategoria int identity(1,1) primary key,
nombrecategoria varchar(50) not null
)

-- insertar data con select
INSERT INTO tbCategoria
SELECT 'accion' union all --juntar los resultado de +1 select 
SELECT 'ciencias ficcion y fantasia' union all
SELECT 'clasicas' union all
SELECT 'comedias' union all
SELECT 'terror' union all
SELECT 'romance' union all
SELECT 'drama' union all
SELECT 'policial' union all
SELECT 'thriller' --union all

INSERT INTO tbCategoria
SELECT 'otros'

-- creacion de tbcategoriapelicula
CREATE TABLE tbCategoriaPelicula
(
idcategoria int references tbCategoria(idcategoria), -- llave foraneas
idpelicula int references tbPelicula(idpelicula)
primary key (idcategoria, idpelicula) --idcategoria+idpelicula son irrepetibles
)

-- modificando estructura de tabla tbCategoriaPelicula, añadiendole una columna del tipo fecha y hora con valor
-- por defecto del servidor
ALTER TABLE tbCategoriaPelicula add fecregistro datetime default getdate()
ALTER TABLE tbCategoriaPelicula add comentario varchar(100) default ''

SELECT * FROM tbPelicula
SELECT * FROM tbCategoria
SELECT * FROM tbCategoriaPelicula

-- insertar registros en tbCategoriaPelicula
INSERT INTO tbCategoriaPelicula(idcategoria,idpelicula)
SELECT 4,1 union all
SELECT 4,2 union all
SELECT 4,4 

-- haciendo uso de order by
SELECT idCategoria as micategoria, fecregistro,
	   comentario as micomentario
FROM tbCategoriaPelicula
ORDER BY micategoria asc, micomentario desc

-- toda vez que se requiera listar los países, la base de datos debe enviar el id,
-- nombre de cada país ordenado por nombre de manera ascendente.
SELECT idpais, nombrepais
FROM tbPais
ORDER BY nombrepais ASC

-- taller de ordenamiento y filtrado (añadido por excel)
-- https://classroom.google.com/c/ODEyMjMzOTYxMFpa
INSERT INTO tbPais
select 'BELGICA' union all 
select 'BULGARIA' union all 
select 'CHIPRE' union all 
select 'DINAMARCA' union all 
select 'ESPAÑA' union all 
select 'FINLANDIA' union all 
select 'FRANCIA' union all 
select 'GRECIA' union all 
select 'HUNGRIA' union all 
select 'IRLANDA' union all 
select 'ITALIA' union all 
select 'LUXEMBURGO' union all 
select 'MALTA' union all 
select 'PAISES BAJOS' union all 
select 'POLONIA' union all 
select 'PORTUGAL' union all 
select 'REINO UNIDO' union all 
select 'ALEMANIA' union all 
select 'RUMANIA' union all 
select 'SUECIA' union all 
select 'LETONIA' union all 
select 'ESTONIA' union all 
select 'LITUANIA' union all 
select 'REPUBLICA CHECA' union all 
select 'REPUBLICA ESLOVACA' union all 
select 'ESLOVENIA' union all 
select 'OTROS PAISES O TERRITORIOS DE LA UNION EUROPEA' union all 
select 'ALBANIA' union all 
select 'ISLANDIA' union all 
select 'LIECHTENSTEIN' union all 
select 'MONACO' union all 
select 'NORUEGA' union all 
select 'ANDORRA' union all 
select 'SAN MARINO' union all 
select 'SANTA SEDE' union all 
select 'SUIZA' union all 
select 'UCRANIA' union all 
select 'MOLDAVIA' union all 
select 'BELARUS' union all 
select 'GEORGIA' union all 
select 'BOSNIA Y HERZEGOVINA' union all 
select 'CROACIA' union all 
select 'ARMENIA' union all 
select 'RUSIA' union all 
select 'MACEDONIA ' union all 
select 'SERBIA' union all 
select 'MONTENEGRO' union all 
select 'GUERNESEY' union all 
select 'SVALBARD Y JAN MAYEN' union all 
select 'ISLAS FEROE' union all 
select 'ISLA DE MAN' union all 
select 'GIBRALTAR' union all 
select 'ISLAS DEL CANAL' union all 
select 'JERSEY' union all 
select 'ISLAS ALAND' union all 
select 'TURQUIA' union all 
select 'OTROS PAISES O TERRITORIOS DEL RESTO DE EUROPA' union all 
select 'BURKINA FASO' union all 
select 'ANGOLA' union all 
select 'ARGELIA' union all 
select 'BENIN' union all 
select 'BOTSWANA' union all 
select 'BURUNDI' union all 
select 'CABO VERDE' union all 
select 'CAMERUN' union all 
select 'COMORES' union all 
select 'CONGO' union all 
select 'COSTA DE MARFIL' union all 
select 'DJIBOUTI' union all 
select 'EGIPTO' union all 
select 'ETIOPIA' union all 
select 'GABON' union all 
select 'GAMBIA' union all 
select 'GHANA' union all 
select 'GUINEA' union all 
select 'GUINEA-BISSAU' union all 
select 'GUINEA ECUATORIAL' union all 
select 'KENIA' union all 
select 'LESOTHO' union all 
select 'LIBERIA' union all 
select 'LIBIA' union all 
select 'MADAGASCAR' union all 
select 'MALAWI' union all 
select 'MALI' union all 
select 'MARRUECOS' union all 
select 'MAURICIO' union all 
select 'MAURITANIA' union all 
select 'MOZAMBIQUE' union all 
select 'NAMIBIA' union all 
select 'NIGER' union all 
select 'NIGERIA' union all 
select 'REPUBLICA CENTROAFRICANA' union all 
select 'SUDAFRICA' union all 
select 'RUANDA' union all 
select 'SANTO TOME Y PRINCIPE' union all 
select 'SENEGAL' union all 
select 'SEYCHELLES' union all 
select 'SIERRA LEONA' union all 
select 'SOMALIA' union all 
select 'SUDAN' union all 
select 'SWAZILANDIA' union all 
select 'TANZANIA' union all 
select 'CHAD' union all 
select 'TOGO' union all 
select 'TUNEZ' union all 
select 'UGANDA' union all 
select 'REP.DEMOCRATICA DEL CONGO' union all 
select 'ZAMBIA' union all 
select 'ZIMBABWE' union all 
select 'ERITREA' union all 
select 'SANTA HELENA' union all 
select 'REUNION' union all 
select 'MAYOTTE' union all 
select 'SAHARA OCCIDENTAL' union all 
select 'OTROS PAISES O TERRITORIOS DE AFRICA' union all 
select 'CANADA' union all 
select 'ESTADOS UNIDOS DE AMERICA' union all 
select 'MEXICO' union all 
select 'SAN PEDRO Y MIQUELON ' union all 
select 'GROENLANDIA' union all 
select 'OTROS PAISES  O TERRITORIOS DE AMERICA DEL NORTE' union all 
select 'ANTIGUA Y BARBUDA' union all 
select 'BAHAMAS' union all 
select 'BARBADOS' union all 
select 'BELICE' union all 
select 'COSTA RICA' union all 
select 'CUBA' union all 
select 'DOMINICA' union all 
select 'EL SALVADOR' union all 
select 'GRANADA' union all 
select 'GUATEMALA' union all 
select 'HAITI' union all 
select 'HONDURAS' union all 
select 'JAMAICA' union all 
select 'NICARAGUA' union all 
select 'PANAMA' union all 
select 'SAN VICENTE Y LAS GRANADINAS' union all 
select 'REPUBLICA DOMINICANA' union all 
select 'TRINIDAD Y TOBAGO' union all 
select 'SANTA LUCIA' union all 
select 'SAN CRISTOBAL Y NIEVES' union all 
select 'ISLAS CAIMÁN' union all 
select 'ISLAS TURCAS Y CAICOS' union all 
select 'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS' union all 
select 'GUADALUPE' union all 
select 'ANTILLAS HOLANDESAS' union all 
select 'SAN MARTIN (PARTE FRANCESA)' union all 
select 'ARUBA' union all 
select 'MONTSERRAT' union all 
select 'ANGUILLA' union all 
select 'SAN BARTOLOME' union all 
select 'MARTINICA' union all 
select 'PUERTO RICO' union all 
select 'BERMUDAS' union all 
select 'ISLAS VIRGENES BRITANICAS' union all 
select 'OTROS PAISES O TERRITORIOS DEL CARIBE Y AMERICA CENTRAL' union all 
select 'ARGENTINA' union all 
select 'BOLIVIA' union all 
select 'BRASIL' union all 
select 'COLOMBIA' union all 
select 'CHILE' union all 
select 'ECUADOR' union all 
select 'GUYANA' union all 
select 'PARAGUAY' union all 
select 'SURINAM' union all 
select 'URUGUAY' union all 
select 'VENEZUELA' union all 
select 'GUAYANA FRANCESA' union all 
select 'ISLAS MALVINAS' union all 
select 'OTROS PAISES O TERRITORIOS  DE SUDAMERICA' union all 
select 'AFGANISTAN' union all 
select 'ARABIA SAUDI' union all 
select 'BAHREIN' union all 
select 'BANGLADESH' union all 
select 'MYANMAR' union all 
select 'CHINA' union all 
select 'EMIRATOS ARABES UNIDOS' union all 
select 'FILIPINAS' union all 
select 'INDIA' union all 
select 'INDONESIA' union all 
select 'IRAQ' union all 
select 'IRAN' union all 
select 'ISRAEL' union all 
select 'JAPON' union all 
select 'JORDANIA' union all 
select 'CAMBOYA' union all 
select 'KUWAIT' union all 
select 'LAOS' union all 
select 'LIBANO' union all 
select 'MALASIA' union all 
select 'MALDIVAS' union all 
select 'MONGOLIA' union all 
select 'NEPAL' union all 
select 'OMAN' union all 
select 'PAKISTAN' union all 
select 'QATAR' union all 
select 'COREA' union all 
select 'COREA DEL NORTE ' union all 
select 'SINGAPUR' union all 
select 'SIRIA' union all 
select 'SRI LANKA' union all 
select 'TAILANDIA' union all 
select 'VIETNAM' union all 
select 'BRUNEI' union all 
select 'ISLAS MARSHALL' union all 
select 'YEMEN' union all 
select 'AZERBAIYAN' union all 
select 'KAZAJSTAN' union all 
select 'KIRGUISTAN' union all 
select 'TADYIKISTAN' union all 
select 'TURKMENISTAN' union all 
select 'UZBEKISTAN' union all 
select 'ISLAS MARIANAS DEL NORTE' union all 
select 'PALESTINA' union all 
select 'HONG KONG' union all 
select 'BHUTÁN' union all 
select 'GUAM' union all 
select 'MACAO' union all 
select 'OTROS PAISES O TERRITORIOS DE ASIA' union all 
select 'AUSTRALIA' union all 
select 'FIJI' union all 
select 'NUEVA ZELANDA' union all 
select 'PAPUA NUEVA GUINEA' union all 
select 'ISLAS SALOMON' union all 
select 'SAMOA' union all 
select 'TONGA' union all 
select 'VANUATU' union all 
select 'MICRONESIA' union all 
select 'TUVALU' union all 
select 'ISLAS COOK' union all 
select 'NAURU' union all 
select 'PALAOS' union all 
select 'TIMOR ORIENTAL' union all 
select 'POLINESIA FRANCESA' union all 
select 'ISLA NORFOLK' union all 
select 'KIRIBATI' union all 
select 'NIUE' union all 
select 'ISLAS PITCAIRN' union all 
select 'TOKELAU' union all 
select 'NUEVA CALEDONIA' union all 
select 'WALLIS Y FORTUNA' union all 
select 'SAMOA AMERICANA' union all 
select 'OTROS PAISES O TERRITORIOS DE OCEANIA' union all 
select 'DESCONOCIDO'

SELECT * FROM tbPais

-- alterando la tabla pais, editando el atributo nombre
ALTER TABLE tbPais alter column nombrepais varchar(100)

-- Elaborar un reporte que liste las películas registradas entre el 26/11/2017 y
-- el 01/12/2017.Además, si es una película peruana debe mostrar el mensaje
-- ‘Película Nacional’. Caso contrario, ‘Película del extranjero’.


-- 2017-11-26 13:07:03.303 (este formato es el 112)
SELECT nombre,  CONVERT(varchar(8), fecregistro,112) as fecregistro,
CASE WHEN idpais = 1 
	 then 'Pelicula Nacional'
	 else 'Pelicula del extranjero'
END AS Mensaje
FROM tbPelicula
WHERE CONVERT(varchar(8), fecregistro,112) >= '20171126' and -- un predicado puede traer verdadero o falso
	  CONVERT(varchar(8), fecregistro,112) >= '20171101' -- un predicado puede traer verdadero o falso

-- ejemplo con in
SELECT *
FROM tbCategoriaPelicula
WHERE idpelicula in (1,4) -- buscar peliculas con id 1 o id 4
/*
WHERE 
	idpelicula = 1
OR
	idpelicula = 4
*/

-- ejemplo con between
SELECT nombre,  CONVERT(varchar(8), fecregistro,112) as fecregistro,
CASE WHEN idpais = 1 THEN 'Pelicula Nacional'
	 ELSE 'Pelicula del extranjero'
END AS Mensaje
FROM tbPelicula
WHERE CONVERT(varchar(8), fecregistro,112) BETWEEN '20171126' AND  '20171203' -- un predicado puede traer verdadero o falso

-- ejemplo con el operador LIKE = como
-- Elaborar un reporte que liste las películas cuyo nombre contenga la palabra
-- ‘MA’. Además, considere el siguiente cuadro para mostrar en base a la
-- duración en minutos un mensaje:
SELECT *,
CASE 
	WHEN duracionmin >= 0 and duracionmin <= 59 THEN 'PELICULA NO CUMPLE LOS ESTANDARES DE LA PLATAFORMA' 
	WHEN duracionmin >= 60 and duracionmin <= 90 THEN 'PELICULA'+nombre+'ES DE DURACION BAJA'
	WHEN duracionmin >= 91 and duracionmin <= 120 THEN 'PELICULA'+nombre+'ES DE DURACION MEDIA'
	ELSE 'PELICULA'+nombre+'ES DE DURACION ALTA' -- si no es una de las tres anteriores esta es por default
END AS mensaje_pelicula
FROM tbPelicula
WHERE nombre LIKE '%MA%' -- obtener las peliculas con MA en cualquier parte del nombre


-- 4. Elaborar un reporte que liste en una sola consulta:
-- 4.1 Películas con año de estreno 2015 y duración en minutos mayor a 100

SELECT *
FROM tbPelicula
WHERE estreno = 2015 AND duracionmin > 100 or estreno > 2016

-- 5. Elaborar un reporte que liste las películas no estrenadas en el año 2015.
SELECT *
FROM tbPelicula
WHERE estreno != 2015
-- not(estreno=2015)
-- !=2015
-- <>2015
-- not in(2015)

-- 6. En base al requerimiento 1, elabore un reporte que liste los 10 primeros
-- países ordenados por nombre de manera descendente. Este reporte recibe un
-- parámetro que indica si incluirá filas con valores que coinciden con la
-- posición 10.
-- BIT = true o false
SELECT * FROM tbPais

SELECT TOP(10) WITH TIES nombrepais
FROM tbPais
ORDER BY nombrepais DESC

-- 7. Elabore la consulta base para el paginado de películas:
-- 7.1 Si el usuario marca 1 la plataforma debe mostrar las 5 primeras
-- películas ordenadas por fecha de registro de manera descendente.
-- 7.2 Si el usuario marca 2 la plataforma debe mostrar las siguientes 5
-- primeras películas ordenadas por fecha de registro de manera
-- descendente. Así sucesivamente para las demás pestañas
-- 1 2 3 4 5 6 7 8 9 10

-- 8. Elabore un reporte con los usuarios registrados sin confirmación de su
-- cuenta. Además, debe mostrar un mensaje de ‘Usuario sin confirmar al
-- <fecha-hoy>’.
