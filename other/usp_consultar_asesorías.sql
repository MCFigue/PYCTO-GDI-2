use Proyecto_GDI

select * from Asesores

create procedure usp_consultar_asesores
(
	@p_mensaje	varchar(100)	OUT,
	@p_estado	int		OUT
)
AS
BEGIN
	-- Variables
	DECLARE @msg_error varchar(50);
	-- Proceso
	if(@p_estado is NULL)
	BEGIN
		SET @p_estado = 1;
	END
	SET @p_estado = 1;
	BEGIN TRY 
		-- Inicia la Tx
		BEGIN TRANSACTION;
		-- Llenar las variables
		select a.asr_nombre,a.asr_apepaterno,a.asr_apematerno,t.turno_nombre,t.turno_horario from Asesores a
		inner join Turno t ON t.turno_id = a.turno_id
		set @p_mensaje = 'Consulta realizada exitosamente.'
		-- Confirma la Tx
		COMMIT TRANSACTION; 
	END TRY 
	BEGIN CATCH 
		-- Cancela la Tx
		ROLLBACK TRANSACTION;
		set @p_estado = -1;
	END CATCH;
END;
GO

--2. Verificar su funcionamiento.

-- Prueba 1: 
declare @estado int, @mensaje varchar(100)
exec usp_consultar_asesores @mensaje out,@estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @mensaje);
go