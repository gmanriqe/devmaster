--03122017
USE DEVFLIX;

-- creacion de tbPais
CREATE TABLE tbPais
(
idpais int identity(1,1) primary key,
nombre varchar(100) not null
)

-- creacion de tbPelicula
CREATE TABLE tbPelicula
(
idpelicula int identity(1,1) primary key,
nombrepais varchar(100) not null,
resumen varchar(200) not null,
rutaalojamiento varchar(200) not null,
estreno int null,
duracionmin int not null,
fecregistro datetime default getdate(),--Fecha y hora del server
fecactualiza datetime null,
idpais int references tbPais(idpais) not null -- campo por el que hacemos referencia
)

-- creacion de tbCategoria
CREATE TABLE tbCategoria
(
idcategoria int identity(1,1) primary key,
nombre varchar(50) not null
)

-- creacion de tbCategoriaPelicula, rompiendo relacion n to n entre pelicula y categoria
CREATE TABLE tbCategoriaPelicula
(
idpelicula int references tbPelicula(idpelicula),
idcategoria int references tbCategoria(idcategoria),
primary key(idcategoria, idpelicula) -- idcateogira y idpelicula son irrepetibles
)

-- modificando longitud de columna nombre de la tabla tbPais
alter table tbPais alter column nombre varchar(100) not null

--Agregar una columna del tipo fecha y hora con valor por defecto fecha y hora de la base datos
alter table tbCategoriaPelicula add fecregistro datetime default getdate()
alter table tbCategoriaPelicula add comentario varchar(100) default ''

-- insertando registros en tbPais con el commando excel: ="select '"&A2&"' union all "
INSERT INTO tbPais
select 'AUSTRIA' union all -- junta los resultado de mas de +1 select
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
select 'PERU' union all 
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
select 'TOKELAU' --union all 

-- insertando registro a la tabla tbPelicula
INSERT INTO tbPelicula
SELECT 'Jacinta','Buscando a Wasaberto','https://www.youtube.com/watch?v=gCnCXzNnf9g',
		2015,50,getdate(),getdate(),1 union all
SELECT 'Los Vengadores','Iron Man y su nuevo traje','https://www.youtube.com/watch?v=jp8AyRmGWbI',
		2016,150,getdate(),getdate(),2 union all
SELECT 'La Momia','La Momia regresa del inframundo','https://www.youtube.com/watch?v=SIp4Z8blj_8',
		2017,65,getdate(),getdate(),3

-- 1. Toda vez que se requiera listar los países, la base de datos debe enviar el id,
-- nombre de cada país ordenado por nombre de manera ascendente.
SELECT *
FROM tbPais
ORDER BY idpais ASC

-- 2. Elaborar un reporte que liste las películas registradas entre el 26/11/2017 y
-- el 01/12/2017.Además, si es una película peruana debe mostrar el mensaje
-- ‘Película Nacional’. Caso contrario, ‘Película del extranjero’. 
SELECT * FROM tbPelicula
SELECT nombrepelicula,  
	   CONVERT(varchar(8), fecregistro,112) as fecregistro,
CASE
	WHEN idpais = 1
		THEN 'Pelicula Nacional'
	WHEN idpais = 2
		THEN 'Pelicula Extranjera'
	ELSE '---'
END 
FROM tbPelicula
WHERE CONVERT(varchar(8), fecregistro,112) >= '20171206' AND 
	  CONVERT(varchar(8), fecregistro,112) <= '20171207'

-- 3. Elaborar un reporte que liste las películas cuyo nombre contenga la palabra
--‘MA’. Además, considere el siguiente cuadro para mostrar en base a la
-- duración en minutos un mensaje:

SELECT nombrepelicula, idpais,
CASE
	WHEN idpais = 1
	THEN 'PERU'
	WHEN idpais = 2
	THEN 'CHILE'
END AS PAIS
FROM tbPelicula
WHERE nombrepelicula LIKE '%RE%'

-- 4. Elaborar un reporte que liste en una sola consulta:
-- Películas con año de estreno 2015 y duración en minutos mayor a 100
SELECT * 
FROM tbPelicula
WHERE estreno = 2017 AND duracionmin > 100

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
SELECT TOP(10) nombre
FROM tbPais
ORDER BY nombre DESC