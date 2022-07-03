use Proyecto_GDI;
go

drop procedure usp_consultar_pedidos;
go


create procedure usp_consultar_pedidos
(
	@codigo int,
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
		select * from Pedido where pdd_id=@codigo;
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

begin;
	declare @estado int, @mensaje varchar(100)
	exec usp_consultar_pedidos 2,@mensaje out,@estado out;
	print concat('Estado: ', @estado);
	print concat('Mensaje: ', @mensaje);
end;
go

begin;
	declare @estado int, @mensaje varchar(100)
	exec usp_consultar_pedidos 1,@mensaje out,@estado out;
	print concat('Estado: ', @estado);
	print concat('Mensaje: ', @mensaje);
end;
go