
begin transaction
	--taidioma
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Idiomas', GETDATE(),9999,0

	declare @id_grupo1 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo1, 
	de_idioma, row_number() over(ORDER by de_idioma) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taidioma;
commit transaction;

begin transaction
	--tatipoparticipante
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Participante', GETDATE(),9999,0

	declare @id_grupo2 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo2, 
	de_tipoparticipante, row_number() over(ORDER by de_tipoparticipante) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tatipoparticipante;
commit transaction;

begin transaction
	--tatipoevento
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)	
	select 'Tipo Evento', GETDATE(),9999,0

	declare @id_grupo3 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo3, 
	de_tipoevento, row_number() over(ORDER by de_tipoevento) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tatipoevento;
commit transaction;

begin transaction
	--tasector
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Sector', GETDATE(),9999,0

	declare @id_grupo4 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo4, 
	de_sector, row_number() over(ORDER by de_sector) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tasector;
commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Países', GETDATE(),9999,0

	declare @id_grupo5 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo5, 
	de_pais, row_number() over(ORDER by de_pais) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tapais

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Estado Ficha', GETDATE(),9999,0

	declare @id_grupo6 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo6, 
	de_estado, row_number() over(ORDER by de_estado) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taestado

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Estado Notificacion', GETDATE(),9999,0

	declare @id_grupo7 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo7, 
	de_estado, row_number() over(ORDER by de_estado) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taestado 

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Stands', GETDATE(),9999,0

	declare @id_grupo8 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo8, 
	de_stand, row_number() over(ORDER by de_stand) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tastand 

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Fase', GETDATE(),9999,0

	declare @id_grupo9 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo9, 
	de_fase, row_number() over(ORDER by de_fase) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tafase

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Certificaciones', GETDATE(),9999,0

	declare @id_grupo10 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo10, 
	de_certificacion, row_number() over(ORDER by de_certificacion) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tacertificacion  

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Situación', GETDATE(),9999,0

	declare @id_grupo11 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo11, 
	de_situacion, row_number() over(ORDER by de_situacion) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tasituacion

commit transaction;

begin transaction

	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Documento', GETDATE(),9999,0

	declare @id_grupo12 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo12, 
	de_tipodocumento, row_number() over(ORDER by de_tipodocumento) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tatipodocumento 

commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Cargos', GETDATE(),9999,0

	declare @id_grupo13 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo13, 
	de_puesto, row_number() over(ORDER by de_puesto) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tapuesto; 
commit transaction;


begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Empresas', GETDATE(),9999,0

	declare @id_grupo14 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo14, 
	de_clasificacion, row_number() over(ORDER by de_clasificacion) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taclasificacion;  
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Producto', GETDATE(),9999,0

	declare @id_grupo15 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo15, 
	de_elaboracion, row_number() over(ORDER by de_elaboracion) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taelaboracion;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Perfil Participante', GETDATE(),9999,0

	declare @id_grupo16 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo16, 
	de_actividad, row_number() over(ORDER by de_actividad) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taactividad;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Linea', GETDATE(),9999,0

	declare @id_grupo17 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo17, 
	de_linea, row_number() over(ORDER by de_linea) as nTipOrden,1,0,9999,getdate(),0
	from rueda.talinea;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Productos', GETDATE(),9999,0

	declare @id_grupo18 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo18, 
	de_producto, row_number() over(ORDER by de_producto) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taproducto;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Fuente', GETDATE(),9999,0

	declare @id_grupo19 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo19, 
	de_fuente, row_number() over(ORDER by de_fuente) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tafuente;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Ficha', GETDATE(),9999,0

	declare @id_grupo20 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo20, 
	de_tipoficha, row_number() over(ORDER by de_tipoficha) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tatipoficha;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Control', GETDATE(),9999,0

	declare @id_grupo21 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo21, 
	de_dato, row_number() over(ORDER by de_dato) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tavalidacion;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tamaño Empresa', GETDATE(),9999,0

	declare @id_grupo22 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo22, 
	de_tamanio, row_number() over(ORDER by de_tamanio) as nTipOrden,1,0,9999,getdate(),0
	from rueda.tatamanio;
commit transaction;

begin transaction
	insert into routex.MaeGrupo(sGruNombre, dFecCreacion,nUsuCodCreacion,nEliminado)
	select 'Tipo Actividad', GETDATE(),9999,0

	declare @id_grupo23 int = scope_identity();

	insert into routex.MaeTipo(nGruCodigo, sTipNombre, nTipOrden, nTipActivo ,nTipEditable, nUsuCodCreacion, dFecCreacion, nEliminado)
	select @id_grupo23, 
	da_actividad, row_number() over(ORDER by da_actividad) as nTipOrden,1,0,9999,getdate(),0
	from rueda.taactividad;
commit transaction;