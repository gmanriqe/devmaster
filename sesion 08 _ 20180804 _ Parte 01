/*=================
STORE PROCEDURE
==================*/
-- BASE DE DATOS: ExamenFinalBD

-- que me permite tener un store procedure para insertar:  insertar teniendo una logica encapsulada

select * from produccion.tbActividadEconomica

-- EJEMPLO 01 - INSERCION STORE PROCEDURE
go
CREATE PROCEDURE produccion.InsActividadEconomica(
	-- parametros de entrada para mi logica
	@ciiu varchar(4),
	@descripcion varchar(500),
	@estado bit
)
as 
begin
--inicio logica
	-- diferencia entre este tipo de variable (declara @... int) y las declaradas en los parametros (@ciiu varchar)
	-- las de tipo (declara @... int) son variables locales, puedes declarar cuantos creas sean necesario para realizar tu logica
	declare @numAct int -- variable que validara si existe la actividad economica
	set @numAct = (select count(1) from produccion.tbActividadEconomica where ciiu=@ciiu)-- establecer que a la variable se le asignara algun valor en la logica

	if @numAct>0 
		begin
			print 'Codigo de ciiu ya existente'
		end
	else 
		begin
			insert into produccion.tbActividadEconomica(ciiu, descripcion, estado)
			values(@ciiu, @descripcion, @estado)
		end
--fin logica
end


exec produccion.InsActividadEconomica '0119','descripcion',1 -- probando codigo ya existente
exec produccion.InsActividadEconomica '9999','descripcion 9999',1 -- probando codigo no existente

go
-- EJEMPLO 02 - ACTUALIZACION STORE PROCEDURE
CREATE PROCEDURE produccion.UpdActividadEconomica(
	-- parametros de entrada para mi logica
	@ciiu varchar(4),
	@descripcion varchar(500),
	@estado bit
)
as 
begin
--inicio logica
	declare @numAct int -- variable que valida si existe la actividad economica ciiu
	set @numAct = (select count(1) from produccion.tbActividadEconomica where ciiu=@ciiu)-- establecer que a la variable se le asignara algun valor en la logica
	declare @numDes int -- variable que almacena el tamaño de la descripcion
	select @numDes-len(@descripcion) from produccion.tbActividadEconomica where ciiu=@ciiu

	
	if @numAct>0 
		begin
			if @numDes<10
				begin
					print 'Descripcion de ciiu debe ser mayor o igual a 10'
				end
			else 
			begin 
				update produccion.tbActividadEconomica
				set descripcion=@descripcion, estado=@estado
				where ciiu=@ciiu
			end
		end
	else 
		begin
			--print 'Codigo de ciiu no existente'
			insert into produccion.tbActividadEconomica(ciiu, descripcion, estado)
			values(@ciiu,@descripcion,@estado)
		end
--fin logica
end


go
-- EJEMPLO 03 - ELIMINACION FISICA STORE PROCEDURE
CREATE PROCEDURE produccion.eliminarActividadEconomia(@ciiu varchar(4))
as
begin
	delete from produccion.tbActividadEconomica
	where ciiu = @ciiu
end

exec produccion.eliminarActividadEconomia '9999'


go
-- EJEMPLO 04 - ELIMINACION LOGICA STORE PROCEDURE
CREATE PROCEDURE produccion.eliminarLogicaActividadEconomia(
	@ciiu varchar(4),
	@tipo varchar(1)
)
as
begin
	if @tipo='L'
	begin
		update produccion.tbActividadEconomica
		set estado = 0
		where ciiu = @ciiu
	end
	if @tipo='F'
	begin
		delete from produccion.tbActividadEconomica
		where ciiu = @ciiu
	end
end

execute produccion.eliminarLogicaActividadEconomia '9900','L'
SELECT * FROM produccion.tbActividadEconomica where ciiu='9900'


go
-- EJEMPLO 05 - STORE PROCEDURE DENTRO DE OTRO PROCEDURE
create procedure  produccion.EliminarActividadEconomicaPadre (@ciiu varchar(4),@tipo char(1))
as
begin
	--Paso 1
	execute produccion.eliminarLogicaActividadEconomia @ciiu,@tipo
	--Paso n
end

execute produccion.EliminarActividadEconomicaPadre '9900','F'
