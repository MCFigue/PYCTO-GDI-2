
drop procedure usp_reservar_asesoria;
go

create procedure usp_reservar_asesoria
(
	
	@p_cli_id int,
	@p_asr_id int,
	@p_ases_fecha date,
	@p_ases_observ varchar(200),
	@p_ases_estado varchar(10),
	----------
	@p_codigo    char      (50) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @ases_id int;
	-- Validaciones
	if(@p_cli_id is null OR @p_asr_id is null OR @p_ases_estado is null)
	begin
		set @p_estado = -3;
		set @p_codigo = 'Proceso fue abortado por que no se tienen espacios rellenados';
		return;
	end;
	-- Proceso
	SET @p_estado = 1;
	set @p_codigo = 'Proceso fue realizado';
	BEGIN TRY 
		-- Inicia la Tx
		BEGIN TRANSACTION; 
		-- Generar el nuevo codigo
		select @ases_id=MAX(ases_id) from asesorias;
		set @ases_id = @ases_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO asesorias(ases_id,cli_id,asr_id,ases_fecha,ases_observ,estado)
		VALUES(@ases_id,@p_cli_id,@p_asr_id,@p_ases_fecha,@p_ases_observ,@p_ases_estado); 
		-- Confirma la Tx
		COMMIT TRANSACTION; 
	END TRY 
	BEGIN CATCH 
		-- Cancela la Tx
		ROLLBACK TRANSACTION;
		if(@p_estado=1) set @p_estado = -1;
		set @p_codigo = 'Proceso fallido';
	END CATCH;
END;
GO

begin
declare @codigo char(5), @estado int;
exec usp_reservar_asesoria 1,3,'2022-06-10','La reunion se realizara a travez de este zoom: https://meet.google.com/xua-by-iuhg','PENDIENTE', @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go

begin
declare @codigo char(5), @estado int;
exec usp_reservar_asesoria 1,1,'2022-04-22','La reunion se realizara a travez de este meet: https://meet.google.com/uid-wme-ldk','ATENDIDO', @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go

