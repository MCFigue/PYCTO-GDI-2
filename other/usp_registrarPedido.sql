create procedure usp_registrar_pedido
(
	@p_cli_id int,
	@p_asr_id int,
	@p_pln_id int,
	@p_pdd_meses int,
	@p_pdd_fechaini date,
	----------
	@p_pdd_fechafin date	out,
	@p_pdd_total numeric(18,2)	OUT,
	@p_msg    varchar      (100) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @asr_id int;
	-- Validaciones
	if(
		@p_cli_id is null OR
		@p_asr_id is null OR 
		@p_pln_id is null OR 
		@p_pdd_meses is null OR 
		@p_pdd_fechaini is null
	)
	begin
		set @p_estado = -2;
		set @p_msg = 'Proceso fue abortado por que no se tienen espacios rellenados';
		return;
	end;
	-- Proceso
	SET @p_estado = 1;
	set @p_msg = 'Proceso fue realizado';
	BEGIN TRY 
		-- Inicia la Tx
		BEGIN TRANSACTION; 
		-- Generar el nuevo codigo
		
		set @p_pdd_total = Cast(@p_pdd_meses as numeric(18,2)) * (Select p.pln_costo from Planes p where p.pln_id = @p_pln_id)
		set @p_pdd_fechafin = (Select DATEADD(MONTH,@p_pdd_meses,@p_pdd_fechaini))
		
		-- Inserta el nuevo cliente
		INSERT INTO Pedido VALUES(@p_cli_id,@p_asr_id,@p_pln_id,@p_pdd_meses,@p_pdd_total,@p_pdd_fechaini,@p_pdd_fechafin);
		-- Confirma la Tx
		COMMIT TRANSACTION; 
	END TRY 
	BEGIN CATCH 
		-- Cancela la Tx
		ROLLBACK TRANSACTION;
		if(@p_estado=1) set @p_estado = -1;
		set @p_msg = 'Proceso fallido';
	END CATCH;
END;
GO

begin
declare @fechaini date = (select GETDATE()),@fechafin date, @total numeric(18,2),@msg varchar(100), @estado int;
exec usp_registrar_pedido 1,1,1,1,@fechaini,@fechafin out, @total out,@msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
print concat('Total: ',@total);
print concat('Fecha final: ',@fechafin)
end;
go

begin
declare @fechaini date = (select GETDATE()),@fechafin date, @total numeric(18,2),@msg varchar(100), @estado int;
exec usp_registrar_pedido 2,1,2,1,@fechaini,@fechafin out, @total out,@msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
print concat('Total: ',@total);
print concat('Fecha final: ',@fechafin)
end;
go


