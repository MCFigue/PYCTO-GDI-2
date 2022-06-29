
drop procedure usp_registrar_cliente;
go

create procedure usp_registrar_cliente
(
	
	@p_cli_nombre varchar(30),
	@p_cli_apellido varchar(30),
	@p_cli_identificacion char(8),
	@p_cli_sexo varchar(10),
	@p_cli_fechanac date,
	@p_cli_email varchar(50),
	@p_cli_telefono varchar(50),
	@p_cli_ruc char(11),
	@p_ciu_id int,
	----------
	@p_codigo    char      (5) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @cli_id int;
	-- Validaciones
	if(@p_cli_apellido is null OR @p_cli_nombre is null OR @p_cli_identificacion is null)
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
		select @CLI_ID=MAX(cli_id) from cliente;
		set @cli_id = @cli_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO CLIENTE(cli_id,cli_nombre,cli_apellido,cli_identificacion,cli_sexo,cli_fechanac,cli_email,cli_telefono,cli_ruc,ciu_Id)
		VALUES(@cli_id,@p_cli_nombre,@p_cli_apellido,@p_cli_identificacion,@p_cli_sexo,@p_cli_fechanac,@p_cli_email,@p_cli_telefono,@p_cli_ruc,@p_ciu_id); 
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
exec usp_registrar_cliente 'Esteban','Bueno','76232221','M','2002-03-01','esteban22@hotmail.com','98009221','576310111',1, @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go

begin
declare @codigo char(5), @estado int;
exec usp_registrar_cliente 'Emilia','De la Cruz','76890192','F','1997-03-12','emiliasantos@santos.com','988872122','20239911122',1, @codigo out, @estado out;
print concat('Estado: ', @estado);
print concat('Codigo: ', @codigo);
end;
go