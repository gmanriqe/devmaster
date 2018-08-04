
-- BASE DE DATOS: BD_BANCA_MASTER

-- EJEMPLO 06 - Insertar registro
CREATE PROCEDURE dbo.insCliente(
	@dni varchar(15),
	@nombre varchar(15),
	@apellidos varchar(15),
	@idcategoria int
)
AS
INSERT INTO cliente(dni,nombre,apellidos,idcategoria)
values(@dni,@nombre,@apellidos,@idcategoria)

exec dbo.insCliente '12345458','nuevoClie','apellido',2


/*================================
TRANSACCIONES Y MANEJO DE ERRORES
TRY AND CATCH
=================================*/

-- EJEMPLO 01
-- Sea por conexion, o por que se cayo el servidor (llego el momento de utilizar el try and catch)
BEGIN TRANSACTION
	INSERT INTO cliente(dni,nombre,apellidos,idcategoria,estado)
	VALUES ('159357','Hervey','Nuevo',2,'I')
--COMMIT;
ROLLBACK; -- EN CASO DE UN ERROR, REVIERTE

-- EJEMPLO 02
CREATE TABLE t1
	(a int not null primary key);
CREATE TABLE t2
	(a int not null references t1(a));
GO

INSERT INTO t1 VALUES (1);
INSERT INTO t1 VALUES (3);
INSERT INTO t1 VALUES (4);
INSERT INTO t1 VALUES (6);

GO
set xact_abort off
GO

BEGIN TRANSACTION;
INSERT INTO t2 VALUES(1);
INSERT INTO t2 VALUES(2);
INSERT INTO t2 VALUES(3);
COMMIT TRANSACTION

SELECT * FROM t2

SET XACT_ABORT ON
GO 
BEGIN TRANSACTION
INSERT INTO t2 VALUES(4);
INSERT INTO t2 VALUES(5);
INSERT INTO t2 VALUES(6);
COMMIT TRANSACTION


-- EJEMPLO 03
-- MANEJO DE ERRORES CON TRY CATCH

BEGIN TRY
	BEGIN TRANSACTION;
		INSERT INTO t2 VALUES (4);
		INSERT INTO t2 VALUES (5);
		INSERT INTO t2 VALUES (6);
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK
	SELECT 
	-- VISUALIZACION DE ERRORES POR SQL
	ERROR_NUMBER() AS ERRNUM,
	ERROR_MESSAGE() AS ERRMSG,
	ERROR_SEVERITY() as ERRSEV,
	ERROR_PROCEDURE() as ERRPROC,
	ERROR_LINE() as ERRLINE
	--PRINT 'SALIO UN ERROR'
END CATCH

select * from t2
truncate table t2

EXEC sp_helptext 'dbo.insCliente'
