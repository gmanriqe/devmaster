-- EXAMPLE CURSOR
declare

begin

	declare @id_participante int=0;
	declare @campo1 varchar(100)='';
	declare @campo2 varchar(100)='';
	declare @campo3 varchar(20)='';
    declare @campo4 varchar(20)='';
	declare @id_routex int;
	
	DECLARE c_participante CURSOR FOR
	select id, campo1, campo2, campo3, campo4, ...
	from participante;

	--lectura de empresas en rueda
	open c_participante;          
	fetch next from c_participante 
	into @id_participante, @campo1, @campo2, @campo3, @campo4;

	--bucle de empresas
	WHILE @@FETCH_STATUS = 0 BEGIN

        --inserta valores de participante en trxempre
		insert into trxempre(campo1, campo2, campo3, campo4 .....)
		values (@campo1, @campo2, campo3, campo4); 

		--recupera el id de la empresa en routex
		set @id_routex = scope_identity();
		
		--inserta valores de etiqueta en trxeti
		insert into trxeti(campo1, campo2, campo_id_routex_empresa, campo3, ...)
		select campoA, campoB, @id_routex, campoC, campoD, ...
		from etiqueta
		inner join participante on participante.id = @id_participante;
		
		--pasar al siguiente valor del cursor	
		fetch next from c_participante 
		into @id_participante, @campo1, @campo2, @campo3, @campo4;

	END;

	close c_participante  ;          
	deallocate c_participante  ; 

end;