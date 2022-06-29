drop procedure usp_registrar_asesor;
go

create procedure usp_registrar_asesor
(
	
	@p_asr_nombre varchar(30),
	@p_asr_apellido varchar(30),
	@p_asr_identificacion char(8),
	@p_asr_fechanac date,
	@p_asr_sexo varchar(10),
	@p_asr_email varchar(50),
	@p_asr_telefono varchar(15),
	@p_asr_sueldo numeric,
	@p_ciu_id int,
	@p_turno_id int,
	----------
	@p_codigo    char      (50) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @asr_id int;
	-- Validaciones
	if(@p_asr_apellido is null OR @p_asr_nombre is null OR @p_asr_identificacion is null)
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
		select @asr_id=MAX(asr_id) from asesores;
		set @asr_id = @asr_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO asesores(asr_id,asr_nombre,asr_apellido,asr_identificacion,asr_fechanac,asr_sexo,asr_email,asr_telefono,asr_sueldo,ciu_Id,turno_id)
		VALUES(@asr_id,@p_asr_nombre,@p_asr_apellido,@p_asr_identificacion,@p_asr_fechanac,@p_asr_sexo,@p_asr_email,@p_asr_telefono,@p_asr_sueldo,@p_ciu_id,@p_turno_id); 
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
exec usp_registrar_asesor 'Arturo','Millan','20668712','1989-01-12','M','arturomillan@hotmail.com','987678564','1700',3,2, @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go

begin
declare @codigo char(5), @estado int;
exec usp_registrar_asesor 'Anthonela','Ramirez','68271113','1999-11-10','F','mantillaaa@hotmail.com','9879876111','1800',3,2, @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go
