delete from nasca.ficha_desarrollo

-- ******** FICHA *******

-- insertar a tabla espejo ficha_desarrollo REALES FACTIBLES POTENCIALES CLANDESTINO
insert into nasca.ficha_desarrollo(fila,sucursal,estado_conexion,codsuministro,distrito,sector,manzana,lote,conexion,sector_opera,subsector,tipo_habilitacion,nombre_habilitacion,manzana_mun,lote_mun,sublote_mun,tipo_poblacion,tipo_via,nombre_via,num_municipal,telefono,estado_servicio,tipo_servicio,referencias,tipo_construccion,estado_construccion,grupo_caracteristico,ciiu,quien_habita,num_familias,num_habitantes,estado_agua,categoria_agua,tipo_cobranza_medicion,macrosector_agua,sector_agua,multiusuario_agua,cantidad_predios,caja_registro,estado_caja_agua,acometida_tuberia,diametro_acometida,tapa,tipo_consumidor,pavimento,localizacion_conexion,ubicacion_metros,fuga,estado_tapa,estado_desague,categoria_desague,macrosector_desague,sector_desague,red_distribucion_desague,tipo_material_tuberia,diametro_tubo,tipo_caja,estado_caja,localizacion_caja,estado_obstruido,ubicacion_metros_desague,marca_medidor,num_medidor,lectura,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,valvula,seguridad_medidor,vereda,pista,pozo_artesanal,tipo_almacenamiento,num_pisos,presion_agua,medidas_fachada,frec_horas_abastecimiento,frec_dias_abastecimiento,observaciones,codencuestador,fectrabajada)
values
(47,'01','REAL','00101049183','01','01','0985','0010','01','01','001','URB.','AMAPROVI','M','1','','URBANO','CA.','FLOR DE AMANCAES','S/N','993503920','ACTIVO','AD',$$FACHADA COLOR BLANCO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',13.65,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',14.87,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','TANQUE_ELEVADO',1,'',0,0,0,$$PAGA POR EL SERVICIO DE DESAGUE. EL PROPIETARIO MANIFIESTA QUE NO CUENTA CON EL SERVICIO DE AGUA$$,'E04','2018-02-21'),
(48,'01','CLANDESTINO','','01','01','0985','0020','00','01','001','URB.','AMAPROVI','M','2','','URBANO','CA.','FLOR DE AMANCAES','S/N','','ACTIVO','AD',$$FACHADA SIN TARRAJEAR, PUERTA COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',6.24,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',8.34,0,0,$$VIVIENDA DESHABITADA (ABANDONADO). DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(49,'01','CLANDESTINO','','01','01','0985','0030','00','01','001','URB.','AMAPROVI','M','3','','URBANO','CA.','FLOR DE AMANCAES','S/N','','ACTIVO','AD',$$FACHADA COLOR BLANCO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','OTROS','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',14.36,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',15.53,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','TANQUE_ELEVADO',2,'',16.5,0,0,$$LA PROPIETARIA NO CUENTA CON RECIBO.$$,'E04','2018-02-21'),
(50,'01','CLANDESTINO','','01','01','0985','0040','00','01','001','URB.','AMAPROVI','M','4','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$AL COSTADO DE CASA COLOR BLANCO DE TRES PISOS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',5.03,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7.72,0,0,$$TERRENO BALDIO. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(51,'01','CLANDESTINO','','01','01','0985','0050','00','01','001','URB.','AMAPROVI','M','5','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$CASA DE DOS PISOS CON PUERTA Y VENTANA CON REJAS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','INDUSTRIAL','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.23,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','TANQUE_ELEVADO',2,'',6.97,0,0,$$DESAGUE CON CONEXIÓN DIRECTA. $$,'E04','2018-02-21'),
(52,'01','CLANDESTINO','','01','01','0985','0060','00','01','001','URB.','AMAPROVI','M','6','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$CASA DE UN PISO COLOR BLANCO CON PORTON COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.26,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',6.99,0,0,$$PROPIETARIA NO QUISO ATENDERNOS. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(53,'01','CLANDESTINO','','01','01','0985','0070','00','01','001','URB.','AMAPROVI','M','7','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$TERRENO BALDIO. AL COSTADO DE UNA CASA COLOR BLANCO CON PORTON COLOR NEGRO$$,'CASA_VIVIENDA','INDEFINIDO','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',3.23,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7,0,0,$$TERRENO BALDIO. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(54,'01','REAL','00101104212','01','01','0985','0080','01','01','001','URB.','AMAPROVI','M','8','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$CASA DE DOS PISOS COLOR MELON CON PORTON COLOR ROJO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.34,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','150_MM-6','CONCRETO','BUENA_CONDICION','INTERIOR_PREDIO','NO',5.5,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',2,'',7.05,0,0,$$TAPA DEL DESAGUE EN MAL ESTADO$$,'E04','2018-02-21'),
(55,'01','CLANDESTINO','','01','01','0985','0090','00','01','001','URB.','AMAPROVI','M','9','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$TERRENO BALDIO.$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.3,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',8.07,0,0,$$TERRENO BALDIO. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(56,'01','CLANDESTINO','','01','01','0985','0100','00','01','001','URB.','AMAPROVI','M','10','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$CASA DE UN PISO. AL COSTADO DE CASA DE 3 PISOS CON PORTON NEGRA$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'','','','','','PEQUEÑO_CONSUMIDOR','ASFALTO','NO_UBICADA',0,'','','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','MAL_ESTADO','INTERIOR_PREDIO','NO',4.35,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',12.8,0,0,$$VIVIENDA AVANDONADA. CAJA DE AGUA TAPADA CON DESMONTE$$,'E04','2018-02-21'),
(57,'01','CLANDESTINO','','01','01','0985','0110','00','01','001','URB.','AMAPROVI','M','11','','URBANO','AV.','CIRCUNVALACION','S/N','989187522','ACTIVO','AD',$$CASA DE TRES PISOS, COLOR BLANCO Y PUERTA COLOR MARRON$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',TRUE,2,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.18,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',3,'',7.07,0,0,$$DESAGUE CON CONEXIÓN DIRECTA. INDICA QUE NO TIENE RECIBO$$,'E04','2018-02-21'),
(58,'01','CLANDESTINO','','01','01','0985','0120','00','01','001','URB.','AMAPROVI','M','12','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$FRENTE A LA PLAZA DE AMAPROVI. COSTADO DE CASA COLOR BLANCA DE TRES PISOS CON REJAS COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIEND','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.22,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','INTERIOR_PREDIO','NO',5.38,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',6.6,0,0,$$TAPA DEL DESAGUE EN MAL ESTADO. 10:00 - 1ERA VISITA - NO SE ENCONTRO A NADIE. 2:32 - 2DA VISITA - NO SE ENCONTRO A NADIE.$$,'E04','2018-02-21'),
(59,'01','CLANDESTINO','','01','01','0985','0130','00','01','001','URB.','AMAPROVI','M','13','','URBANO','AV.','CIRCUNVALACION','S/N','','ACTIVO','AD',$$CASA DE UN PISO SIN PUERTA NI VENTANAS. ABANDONDA$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',3.44,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','OTRO',1,'',7,0,0,$$VIVIENDA ABONDONADA. SE OBSERVO QUE LA CAJA DE DESAGUE ESTA ENTERRADA$$,'E04','2018-02-21'),
(60,'01','FACTIBLE','','01','01','0985','0140','00','01','001','URB.','AMAPROVI','M','14','','URBANO','AV.','CIRCUNVALACION','S/N','','','AD',$$CASA DE UN PISO. AL COSTADO DE UNA CASA COLOR BLANCO CON PORTON COLOR ROJO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'','','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'','','','','','PEQUEÑO_CONSUMIDOR','ASFALTO','',0,'','','','','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','','','','','','','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',5.38,0,0,$$VIVIENDA EN CONSTRUCCION. NO SE VISUALIZA CAJA DE AGUA, NI DESAGUE$$,'E04','2018-02-21'),
(61,'01','CLANDESTINO','','01','01','0985','0150','00','01','001','URB.','AMAPROVI','M','15','','URBANO','AV.','CIRCUNVALACION','S/N','','','',$$COSTADO DE UNA CASA COLOR BLANCO HUMO CON PORTON COLOR MARRON$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'','','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'','','','','','PEQUEÑO_CONSUMIDOR','ASFALTO','',0,'','','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','MAL_ESTADO','VEREDA','NO',9.44,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',1,'',11,0,0,$$11:50 - 1ER VISITA - NO QUISO BRINDAR INFORMACION. 3:00 - 2DA VISITA - NO QUISO BRINDAR INFORMACION. $$,'E04','2018-02-21'),
(62,'01','REAL','00101001070','01','01','0985','0160','01','01','001','URB.','AMAPROVI','M','16','','URBANO','CA.','FEDERICO GAVELIO','S/N','','ACTIVO','D',$$CASA DE UN PISO COLOR BLANCO CON PUERTA COLOR MADERA Y PORTON$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.17,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',6.1,0,0,$$DESAGUE CON CONEXIÓN DIRECTA. PAGA POR EL SERVICIO DE DESAGUE$$,'E04','2018-02-21'),
(63,'01','CLANDESTINO','','01','01','0985','0170','00','01','001','URB.','AMAPROVI','M','17','','URBANO','CA.','FEDERICO GAVELIO','S/N','','ACTIVO','',$$CASA DE UN PISO COLOR BLANCO CON PUERTA COLOR MADERA$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.32,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',2,'',6.23,0,0,$$DESAGUE CON CONEXIÓN DIRECTA.  1:00 - 1ERA VISITA - NO SE ENCONTRO A NADIE. 3:20 - 2DA VISITA - NO SE ENCONTRO A NADIE$$,'E04','2018-02-21'),
(64,'01','CLANDESTINO','','01','01','0985','0180','01','01','001','URB.','AMAPROVI','M','18','','URBANO','CA.','FEDERICO GAVELIO','S/N','','ACTIVO','AD',$$CASA DE UN PISO COLOR AMARILLO CON PUERTA Y PORTON COLOR MADERA$$,'CASA_VIVIENDA','NORMAL','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','CONCRETO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.04,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',1,'',6,0,0,$$DESAGUE CON CONEXIÓN DIRECTA.$$,'E04','2018-02-21'),
(65,'01','CLANDESTINO','','01','01','0985','0190','00','01','001','URB.','AMAPROVI','M','19','','URBANO','CA.','FEDERICO GAVELIO','S/N','','ACTIVO','AD',$$CASA DE UN PISO. AL COSTADO DE CASA COLOR AMARILLO CON PUERTA Y PORTON$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',6.12,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',4.94,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',11.1,0,0,$$ 10:20 - 1ERA VISITA - NO SE ENCONTRO A NADIE. 1:40 - 2DA VISITA - NO SE ENCONTRO A NADIE. 4:00 - 3ERA VISITA - NO SE ENCONTRO A NADIE$$,'E04','2018-02-21'),
(66,'01','CLANDESTINO','','01','01','0985','0200','00','01','001','URB.','AMAPROVI','M','19','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$CASA DE UN PISO. AL COSTADO DE CASA COLOR BLANCO DE DOS PISOS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'','','','','','PEQUEÑO_CONSUMIDOR','ASFALTO','NO_UBICADA',0,'','','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',4.54,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',1,'',10.9,0,0,$$NO QUISO BRINDAR MUCHA INFORMACION. NO QUISO BRINDAR RECIBO$$,'E04','2018-02-21'),
(67,'01','CLANDESTINO','','01','01','0985','0210','00','01','001','URB.','AMAPROVI','M','20','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$AL COSTADO DE CASA DE UN PISO CON REJAS COLOR NEGRO Y PORTON COLOR BLANCO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.83,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',6.12,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',2,'',7.2,0,0,$$ 8:30 - 1ERA VISITA - NO SE ENCONTRO A NADIE.  12:10 - 2DA VISITA - NO SE ENCONTRO A NADIE$$,'E04','2018-02-21'),
(68,'01','CLANDESTINO','','01','01','0985','0220','00','01','001','URB.','AMAPROVI','M','21','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$CASA DE UN PISO CON PUERTA Y PORTON COLOR BLANCO, CON REJAS$$,'CASA_VIVIENDA','NORMAL','VIVIENDA','9500','PROPIETARIO',0,3,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.73,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',5.9,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7.06,0,0,$$$$,'E04','2018-02-21'),
(69,'01','CLANDESTINO','','01','01','0985','0230','00','01','001','URB.','AMAPROVI','M','22','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$COSTADO DE TIENDA SAN CARLOS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,2,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.82,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',2,'',7.5,0,0,$$DESAGUE CON CONEXIÓN DIRECTA.$$,'E04','2018-02-21'),
(70,'01','REAL','00101049110','01','01','0985','0240','01','01','001','URB.','AMAPROVI','M','23','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$CASA DE UN PISO CON TEJA$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.82,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','INTERIOR_PREDIO','NO',5.92,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',1,'',7.04,0,0,$$CAJA DE DESAGUE UBICADA DENTRO DEL PREDIO. BODEGA SIN PUNTO DE AGUA$$,'E04','2018-02-21'),
(71,'01','CLANDESTINO','','01','01','0985','0250','00','01','001','URB.','AMAPROVI','M','24','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$CASA DE UN PISO CON PUERTA DE LATA COLOR NEGRO Y PORTON CON REJA$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.7,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7.05,0,0,$$DESAGUE CON CONEXIÓN DIRECTA.  12:15 - 1ERA VISITA - NO SE ENCONTRO A NADIE. 4:30 - 2DA VISITA - NO SE ENCONTRO A NADIE. 5:00 - 3ERA VISITA - NO SE ENCONTRO A NADIE$$,'E04','2018-02-21'),
(72,'01','CLANDESTINO','','01','01','0985','0260','00','01','001','URB.','AMAPROVI','M','25','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$TERRENO BALDIO.$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.55,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7,0,0,$$TERRENO BALDIO.$$,'E04','2018-02-21'),
(73,'01','CLANDESTINO','','01','01','0985','0270','00','01','001','URB.','AMAPROVI','M','26','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$A DOS CASAS DE TIENDA SAN CARLOS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','CONCRETO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',1.8,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',2,'',7.03,0,0,$$DESAGUE CON CONEXIÓN DIRECTA. PROPIETARIO NO QUIERE BRINDAR INFORMACION$$,'E04','2018-02-21'),
(74,'01','CLANDESTINO','','01','01','0985','0280','00','01','001','URB.','AMAPROVI','M','27','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$CASA DE UN PISO COLOR AMARILLO CON PUERTA Y PORTON COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',2.08,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','TANQUE_ELEVADO',1,'',7,0,0,$$DESAGUE CON CONEXIÓN DIRECTA. PROPIETARIO NO QUIERE BRINDAR INFORMACION. PROPIETARIA AGRESIVA$$,'E04','2018-02-21'),
(75,'01','CLANDESTINO','','01','01','0985','0290','00','01','001','URB.','AMAPROVI','M','28','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$AL COSTADO DE UNA CASA COLOR AMARILLA CON REJAS$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.6,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','NO_DETERMINADO','',1,'',7,0,0,$$TERRENO BALDIO. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(76,'01','CLANDESTINO','','01','01','0985','0300','00','01','001','URB.','AMAPROVI','M','29','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$AL COSTADO DE CASA PORTON Y PUERTA COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.84,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','INTERIOR_PREDIO','',6.16,'','','','','','','','','','CONCRETO','ASFALTO','','',2,'',7,0,0,$$CAJA DE DESAGUE UBICADA DENTRO DEL PREDIO.  10:03 - 1ERA VISITA - NO SE ENCONTRO A NADIE. 12:15 - 2DA VISITA - NO SE ENCONTRO A NADIE$$,'E04','2018-02-21'),
(77,'01','CLANDESTINO','','01','01','0985','0310','00','01','001','URB.','AMAPROVI','M','30','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$TERRENO BALDIO.$$,'CASA_VIVIENDA','INDEFINIDO','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.72,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','NO_DETERMINADO','','','','NO_UBICADO','',0,'','','','','','','','','','CONCRETO','ASFALTO','','',1,'',7,0,0,$$TERRENO BALDIO. DESAGUE CON CONEXIÓN DIRECTA$$,'E04','2018-02-21'),
(78,'01','CLANDESTINO','','01','01','0985','0320','00','01','001','URB.','AMAPROVI','M','31','','URBANO','CA.','LAS MARGARITAS','S/N','','ACTIVO','AD',$$AL LADO DE CASA DE UN PISO CON PUERTA CON REJA Y PORTON COLOR NEGRO$$,'SIN_CONSTRUIR','LOTE','VIVIENDA','9500','',0,0,'CORTADO','DOMESTICO','','MACROSECTOR_AGUA_NASCA','SECTOR_SERVICIO_AGUA_NASCA',FALSE,1,'C.S.N.','BUENA_CONDICION','PVC','15_MM-1/2','FIERRO_GALVANIZADO','PEQUEÑO_CONSUMIDOR','ASFALTO','VEREDA',4.06,'NO','BUENA_CONDICION','ACTIVO','DOMESTICO','MACROSECTOR_DESAGUE_NASCA','SECTOR_SERVICIO_DESAGUE_NASCA','COLECTOR_PUBLICO','P.V.C.','150_MM-6','CONCRETO','BUENA_CONDICION','VEREDA','NO',4.62,'','','','','','','','','','CONCRETO','ASFALTO','TIENE','',1,'',8.3,0,0,$$$$,'E04','2018-02-21')

-- insertar de tabla espejo ficha_desarrollo los FACTIBLES POTENCIALES y CLANDESTINOS a tabla ficha
insert into nasca.ficha(fila,sucursal,estado_conexion,codsuministro,distrito,sector,manzana,lote,conexion,sector_opera,subsector,tipo_habilitacion,nombre_habilitacion,manzana_mun,lote_mun,sublote_mun,tipo_poblacion,tipo_via,nombre_via,num_municipal,telefono,estado_servicio,tipo_servicio,referencias,tipo_construccion,estado_construccion,grupo_caracteristico,ciiu,quien_habita,num_familias,num_habitantes,estado_agua,categoria_agua,tipo_cobranza_medicion,macrosector_agua,sector_agua,multiusuario_agua,cantidad_predios,caja_registro,estado_caja_agua,acometida_tuberia,diametro_acometida,tapa,tipo_consumidor,pavimento,localizacion_conexion,ubicacion_metros,fuga,estado_tapa,estado_desague,categoria_desague,macrosector_desague,sector_desague,red_distribucion_desague,tipo_material_tuberia,diametro_tubo,tipo_caja,estado_caja,localizacion_caja,estado_obstruido,ubicacion_metros_desague,marca_medidor,num_medidor,lectura,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,valvula,seguridad_medidor,vereda,pista,pozo_artesanal,tipo_almacenamiento,num_pisos,presion_agua,medidas_fachada,frec_horas_abastecimiento,frec_dias_abastecimiento,observaciones,codencuestador,fectrabajada)
select fila,sucursal,estado_conexion,codsuministro,distrito,sector,manzana,lote,conexion,sector_opera,subsector,tipo_habilitacion,nombre_habilitacion,manzana_mun,lote_mun,sublote_mun,tipo_poblacion,tipo_via,nombre_via,num_municipal,telefono,estado_servicio,tipo_servicio,referencias,tipo_construccion,estado_construccion,grupo_caracteristico,ciiu,quien_habita,num_familias,num_habitantes,estado_agua,categoria_agua,tipo_cobranza_medicion,macrosector_agua,sector_agua,multiusuario_agua,cantidad_predios,caja_registro,estado_caja_agua,acometida_tuberia,diametro_acometida,tapa,tipo_consumidor,pavimento,localizacion_conexion,ubicacion_metros,fuga,estado_tapa,estado_desague,categoria_desague,macrosector_desague,sector_desague,red_distribucion_desague,tipo_material_tuberia,diametro_tubo,tipo_caja,estado_caja,localizacion_caja,estado_obstruido,ubicacion_metros_desague,marca_medidor,num_medidor,lectura,diametro_medidor,estado_medidor,posicion_medidor,tipo_medidor,valvula,seguridad_medidor,vereda,pista,pozo_artesanal,tipo_almacenamiento,num_pisos,presion_agua,medidas_fachada,frec_horas_abastecimiento,frec_dias_abastecimiento,observaciones,codencuestador,fectrabajada
from nasca.ficha_desarrollo
where codsuministro = ''

select fila, * from nasca.ficha

-- actualizar de tabla espejo ficha_desarrollo los REALES a tabla ficha
update nasca.ficha f
set
fila=fd.fila,
sucursal=fd.sucursal,
estado_conexion=fd.estado_conexion,
codsuministro=fd.codsuministro,
distrito=fd.distrito,
sector=fd.sector,
manzana=fd.manzana,
lote=fd.lote,
conexion=fd.conexion,
sector_opera=fd.sector_opera,
subsector=fd.subsector,
tipo_habilitacion=fd.tipo_habilitacion,
nombre_habilitacion=fd.nombre_habilitacion,
manzana_mun=fd.manzana_mun,
lote_mun=fd.lote_mun,
sublote_mun=fd.sublote_mun,
tipo_poblacion=fd.tipo_poblacion,
tipo_via=fd.tipo_via,
nombre_via=fd.nombre_via,
num_municipal=fd.num_municipal,
telefono=fd.telefono,
estado_servicio=fd.estado_servicio,
tipo_servicio=fd.tipo_servicio,
referencias=fd.referencias,
tipo_construccion=fd.tipo_construccion,
estado_construccion=fd.estado_construccion,
grupo_caracteristico=fd.grupo_caracteristico,
ciiu=fd.ciiu,
quien_habita=fd.quien_habita,
num_familias=fd.num_familias,
num_habitantes=fd.num_habitantes,
estado_agua=fd.estado_agua,
categoria_agua=fd.categoria_agua,
tipo_cobranza_medicion=fd.tipo_cobranza_medicion,
macrosector_agua=fd.macrosector_agua,
sector_agua=fd.sector_agua,
multiusuario_agua=fd.multiusuario_agua,
cantidad_predios=fd.cantidad_predios,
caja_registro=fd.caja_registro,
estado_caja_agua=fd.estado_caja_agua,
acometida_tuberia=fd.acometida_tuberia,
diametro_acometida=fd.diametro_acometida,
tapa=fd.tapa,
tipo_consumidor=fd.tipo_consumidor,
pavimento=fd.pavimento,
localizacion_conexion=fd.localizacion_conexion,
ubicacion_metros=fd.ubicacion_metros,
fuga=fd.fuga,
estado_tapa=fd.estado_tapa,
estado_desague=fd.estado_desague,
categoria_desague=fd.categoria_desague,
macrosector_desague=fd.macrosector_desague,
sector_desague=fd.sector_desague,
red_distribucion_desague=fd.red_distribucion_desague,
tipo_material_tuberia=fd.tipo_material_tuberia,
diametro_tubo=fd.diametro_tubo,
tipo_caja=fd.tipo_caja,
estado_caja=fd.estado_caja,
localizacion_caja=fd.localizacion_caja,
estado_obstruido=fd.estado_obstruido,
ubicacion_metros_desague=fd.ubicacion_metros_desague,
marca_medidor=fd.marca_medidor,
num_medidor=fd.num_medidor,
lectura=fd.lectura,
diametro_medidor=fd.diametro_medidor,
estado_medidor=fd.estado_medidor,
posicion_medidor=fd.posicion_medidor,
tipo_medidor=fd.tipo_medidor,
valvula=fd.valvula,
seguridad_medidor=fd.seguridad_medidor,
vereda=fd.vereda,
pista=fd.pista,
pozo_artesanal=fd.pozo_artesanal,
tipo_almacenamiento=fd.tipo_almacenamiento,
num_pisos=fd.num_pisos,
presion_agua=fd.presion_agua,
medidas_fachada=fd.medidas_fachada,
frec_horas_abastecimiento=fd.frec_horas_abastecimiento,
frec_dias_abastecimiento=fd.frec_dias_abastecimiento,
observaciones=fd.observaciones,
codencuestador=fd.codencuestador,
fectrabajada=fd.fectrabajada
from nasca.ficha_desarrollo fd
where f.codsuministro = fd.codsuministro and fd.codsuministro <> '' 

-- consulta total de fichas por estado de conexion
select estado_conexion, count(1)
from nasca.ficha
group by estado_conexion

-- ********** UNIDADES DE USO ************

delete from nasca.unidad_uso_desarrollo

-- insertando las unidades de uso -- tres unidades por ficha
insert into nasca.unidad_uso_desarrollo(fila,responsable,tipo_uso,categoria,complemento)
values
(47,'01','VIVIENDA','DOM',$$1ER PISO$$),
(48,'01','VIVIENDA','DOM',$$1ER PISO$$),
(49,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(50,'01','VIVIENDA','DOM',$$BALDIO$$),
(51,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(52,'01','VIVIENDA','DOM',$$1ER PISO$$),
(53,'01','VIVIENDA','DOM',$$BALDIO$$),
(54,'02','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(55,'01','VIVIENDA','DOM',$$BALDIO$$),
(56,'01','VIVIENDA','DOM ',$$1ER PISO$$),
(57,'01','VIVIENDA','DOM',$$1ER PISO$$),
(58,'01','VIVIENDA','DOM',$$1ER PISO$$),
(59,'01','VIVIENDA','DOM',$$1ER PISO$$),
(60,'01','VIVIENDA','DOM',$$1ER PISO$$),
(61,'01','VIVIENDA','DOM',$$1ER PISO$$),
(62,'01','VIVIENDA','DOM',$$1ER PISO$$),
(63,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(64,'01','VIVIENDA','DOM',$$1ER PISO$$),
(65,'01','VIVIENDA','DOM',$$1ER PISO$$),
(66,'01','VIVIENDA','DOM',$$1ER PISO$$),
(67,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(68,'01','VIVIENDA','DOM',$$1ER PISO$$),
(69,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(70,'01','VIVIENDA','DOM',$$1ER PISO$$),
(71,'01','VIVIENDA','DOM',$$1ER PISO$$),
(72,'01','VIVIENDA','DOM',$$BALDIO$$),
(73,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(74,'01','VIVIENDA','DOM',$$1ER PISO$$),
(75,'01','VIVIENDA','DOM',$$BALDIO$$),
(76,'01','VIVIENDA','DOM',$$1ER Y 2DO PISO$$),
(77,'01','VIVIENDA','DOM',$$BALDIO$$),
(78,'01','VIVIENDA','DOM',$$1ER PISO$$),
(47,'','','',$$$$),
(48,'','','',$$$$),
(49,'','','',$$$$),
(50,'','','',$$$$),
(51,'','','',$$$$),
(52,'','','',$$$$),
(53,'','','',$$$$),
(54,'','','',$$$$),
(55,'','','',$$$$),
(56,'','','',$$$$),
(57,'02','VIVIENDA','DOM',$$2DO Y 3ER PISO$$),
(58,'','','',$$$$),
(59,'','','',$$$$),
(60,'','','',$$$$),
(61,'','','',$$$$),
(62,'','','',$$$$),
(63,'','','',$$$$),
(64,'','','',$$$$),
(65,'','','',$$$$),
(66,'','','',$$$$),
(67,'','','',$$$$),
(68,'','','',$$$$),
(69,'','','',$$$$),
(70,'','','',$$$$),
(71,'','','',$$$$),
(72,'','','',$$$$),
(73,'','','',$$$$),
(74,'','','',$$$$),
(75,'','','',$$$$),
(76,'','','',$$$$),
(77,'','','',$$$$),
(78,'','','',$$$$),
(47,'','','',$$$$),
(48,'','','',$$$$),
(49,'','','',$$$$),
(50,'','','',$$$$),
(51,'','','',$$$$),
(52,'','','',$$$$),
(53,'','','',$$$$),
(54,'','','',$$$$),
(55,'','','',$$$$),
(56,'','','',$$$$),
(57,'','','',$$$$),
(58,'','','',$$$$),
(59,'','','',$$$$),
(60,'','','',$$$$),
(61,'','','',$$$$),
(62,'','','',$$$$),
(63,'','','',$$$$),
(64,'','','',$$$$),
(65,'','','',$$$$),
(66,'','','',$$$$),
(67,'','','',$$$$),
(68,'','','',$$$$),
(69,'','','',$$$$),
(70,'','','',$$$$),
(71,'','','',$$$$),
(72,'','','',$$$$),
(73,'','','',$$$$),
(74,'','','',$$$$),
(75,'','','',$$$$),
(76,'','','',$$$$),
(77,'','','',$$$$),
(78,'','','',$$$$)

select fila,* from nasca.unidad_uso_desarrollo order by fila

-- obtener el idficha de cada unidad de uso insertada
update nasca.unidad_uso_desarrollo u
set idficha= f.id
from nasca.ficha f
where u.fila= f.fila

--Cargar de unidad_uso_desarrollo a unidad_uso -- Solo los que tienen responsable diferente a vacio
insert into nasca.unidad_uso(responsable,tipo_uso,categoria,complemento,idficha)
select responsable,tipo_uso,categoria,complemento,idficha
from nasca.unidad_uso_desarrollo
where responsable<>''

select fila,* from nasca.ficha order by fila
select * from nasca.unidad_uso where idficha=5798 order by idficha 
select * from nasca.unidad_uso_desarrollo order by idficha

-- ********* RESPONSABLE Y PROPIETARIO ***********
delete from nasca.responsable_desarrollo
select * from nasca.responsable_desarrollo

-- insertando responsable y propietario
insert into nasca.responsable_desarrollo(fila,tipo_resp,tipo_doc,num_doc,nombres,apellido_pat,apellido_mat) 
values
(47,'P','','','ADRIEL','VARGAS','CARITAS'),
(48,'P','','','','',''),
(49,'P','','','','',''),
(50,'P','','','','',''),
(51,'P','','','','',''),
(52,'P','','','','',''),
(53,'P','','','','',''),
(54,'P','','','ELIZABETH','MARTINEZ','IGLESIAS'),
(55,'P','','','','',''),
(56,'P','','','','',''),
(57,'P','','','','',''),
(58,'P','','','','',''),
(59,'P','','','','',''),
(60,'P','','','','',''),
(61,'P','','','','',''),
(62,'P','','','EUDES LUZ','QUISPE','QUISPE'),
(63,'P','','','','',''),
(64,'P','','','MARIA JESUS','FERNANDEZ','YBARCENA'),
(65,'P','','','','',''),
(66,'P','','','','',''),
(67,'P','','','','',''),
(68,'P','','','','',''),
(69,'P','','','','',''),
(70,'P','','','REYNA','CONDORI','HUAMANI'),
(71,'P','','','','',''),
(72,'P','','','','',''),
(73,'P','','','','',''),
(74,'P','','','','',''),
(75,'P','','','','',''),
(76,'P','','','','',''),
(77,'P','','','','',''),
(78,'P','','','BENIGNO','PILLACA','LANDEO'),
(47,'R','DNI','22086051','ADRIEL','VARGAS','CARITAS'),
(48,'R','','','','',''),
(49,'R','DNI','17971671','HECTOR','GUTIERREZ',''),
(50,'R','','','','',''),
(51,'R','','','','',''),
(52,'R','','','','',''),
(53,'R','','','','',''),
(54,'R','DNI','10355745','FELIX','ZAPATA','DIOSES'),
(55,'R','','','','',''),
(56,'R','','','','',''),
(57,'R','DNI','08212460','JAVIER','GOMEZ','SANCHEZ'),
(58,'R','','','','',''),
(59,'R','','','','',''),
(60,'R','','','','',''),
(61,'R','DNI','73866722','MARIA','AYBAR','MOLINA'),
(62,'R','','','EUDES LUZ','QUISPE','QUISPE'),
(63,'R','','','','',''),
(64,'R','DNI','09075834','MARIA JESUS','FERNANDEZ','YBARCENA'),
(65,'R','','','','',''),
(66,'R','','','RONAL','HUAMAN','PEREZ'),
(67,'R','','','','',''),
(68,'R','','','','',''),
(69,'R','','','','',''),
(70,'R','DNI','22077887','REYNA','CONDORI','HUAMANI'),
(71,'R','','','','',''),
(72,'R','','','','',''),
(73,'R','','','','',''),
(74,'R','DNI','46943260','YAZMIN','CONDORI','ZEA'),
(75,'R','','','','',''),
(76,'R','','','','',''),
(77,'R','','','','',''),
(78,'R','DNI','22101835','BENIGNO','PILLACA','LANDEO')

select * from nasca.responsable_desarrollo
select id, * from nasca.ficha

-- Pego valores de ficha a responsable_desarrollo
update nasca.responsable_desarrollo r
set idficha=f.id
from nasca.ficha f
where r.fila = f.fila

-- Inserto de table espejo responsable_desarrollo sus responsables y propietarios a responsable
insert into nasca.responsable(tipo_resp,tipo_doc,num_doc,nombres,apellido_pat,apellido_mat,idficha)
select tipo_resp,tipo_doc,num_doc,nombres,apellido_pat,apellido_mat,idficha
from nasca.responsable_desarrollo

select * from nasca.responsable order by idficha

-- QUE FILA NOS FALTA
select min(fila) from nasca.ficha
select max(fila) from nasca.ficha

select min(fila+1) as fila_c from nasca.ficha where fila+1 not in (select fila from nasca.ficha where fila is not null)






