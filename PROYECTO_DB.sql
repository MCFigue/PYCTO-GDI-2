CREATE DATABASE PROYECTO_GDI
GO

USE PROYECTO_GDI
GO

CREATE TABLE DBO.CIUDAD
( 
	CIU_ID               INT  NOT NULL ,
	CIU_NOMBRE           VARCHAR(15)  NULL ,
	CONSTRAINT XPKCIUDAD PRIMARY KEY (CIU_ID ASC)
)
GO



CREATE TABLE DBO.GERENTE
( 
	GRT_ID               	INT  NOT NULL ,
	GRT_NOMBRE           	VARCHAR(30)  NULL ,
	GRT_APEPATERNO         	VARCHAR(15)  NULL ,
GRT_APEMATERNO         	VARCHAR(15)  NULL ,
	GRT_NROIDENTIFICACION   	CHAR(8)  NULL ,
	GRT_SEXO             	VARCHAR(10)  NULL ,
	GRT_EMAIL            	VARCHAR(50)  NULL ,
	GRT_TELEFONO         	VARCHAR(15)  NULL ,
	GRT_FECHANAC         	DATE  NULL ,
	CIU_ID               	INT  NULL ,
	CONSTRAINT XPKGERENTE PRIMARY KEY (GRT_ID ASC),
	CONSTRAINT R_12 FOREIGN KEY (CIU_ID) REFERENCES DBO.CIUDAD(CIU_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
GO



CREATE TABLE DBO.CLIENTE
( 
	CLI_ID               	INT  NOT NULL ,
	CLI_NOMBRE           	VARCHAR(30)  NOT NULL ,
	GRT_APEPATERNO         	VARCHAR(15)  NULL ,
GRT_APEMATERNO         	VARCHAR(15)  NULL ,
	GRT_NROIDENTIFICACION   	CHAR(8)  NULL ,
	CLI_SEXO             	VARCHAR(10)  NOT NULL ,
	CLI_FECHANAC         	DATE  NOT NULL ,
	CLI_EMAIL            	VARCHAR(50)  NOT NULL ,
	CLI_TELEFONO         	VARCHAR(15)  NOT NULL ,
	CLI_RUC              	CHAR(11)  NOT NULL ,
	CIU_ID               	INT  NULL ,
	CONSTRAINT XPKCLIENTE PRIMARY KEY (CLI_ID ASC),
	CONSTRAINT R_16 FOREIGN KEY (CIU_ID) REFERENCES DBO.CIUDAD(CIU_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
GO



CREATE TABLE DBO.TURNO
( 
	TURNO_ID             INT  NOT NULL ,
	TURNO_NOMBRE         VARCHAR(10)  NULL ,
	TURNO_HORARIO        VARCHAR(30)  NULL ,
	CONSTRAINT XPKTURNO PRIMARY KEY (TURNO_ID ASC)
)
GO



CREATE TABLE DBO.ASESORES
( 
	ASR_ID               	INT  NOT NULL ,
	ASR_NOMBRE           	VARCHAR(30)  NULL ,
	GRT_APEPATERNO         	VARCHAR(15)  NULL ,
GRT_APEMATERNO         	VARCHAR(15)  NULL ,
	GRT_NROIDENTIFICACION   	CHAR(8)  NULL ,
	ASR_FECHANAC         	DATE  NULL ,
	ASR_SEXO             	VARCHAR(10)  NULL ,
	ASR_EMAIL            	VARCHAR(50)  NULL ,
	ASR_TELEFONO         	VARCHAR(15)  NULL ,
	ASR_SUELDO           	NUMERIC  NULL ,
	CIU_ID               	INT  NULL ,
	TURNO_ID             	INT  NULL ,
	CONSTRAINT XPKASESORES PRIMARY KEY (ASR_ID ASC),
	CONSTRAINT R_13 FOREIGN KEY (CIU_ID) REFERENCES DBO.CIUDAD(CIU_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_18 FOREIGN KEY (TURNO_ID) REFERENCES DBO.TURNO(TURNO_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
GO



CREATE TABLE DBO.PLANES
( 
	PLN_ID               INT  NOT NULL ,
	PLN_NOMBRE           VARCHAR(10)  NOT NULL ,
	PLN_COSTO            NUMERIC  NOT NULL ,
	PLN_TRABAJADORES     INT  NOT NULL ,
	CONSTRAINT XPKPLAN PRIMARY KEY (PLN_ID ASC)
)
GO



CREATE TABLE DBO.PEDIDO
( 
	PDD_ID               INT  NOT NULL ,
	CLI_ID               INT  NULL ,
	ASR_ID               INT  NULL ,
	PLN_ID               INT  NULL ,
	PDD_MESES            INT  NULL ,
	PDD_TOTAL            NUMERIC  NULL ,
	PDD_FECHA            DATE  NULL ,
	CONSTRAINT XPKPEDIDO PRIMARY KEY (PDD_ID ASC),
	CONSTRAINT R_22 FOREIGN KEY (CLI_ID) REFERENCES DBO.CLIENTE(CLI_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_23 FOREIGN KEY (ASR_ID) REFERENCES DBO.ASESORES(ASR_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_24 FOREIGN KEY (PLN_ID) REFERENCES DBO.PLANES(PLN_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
GO



CREATE TABLE DBO.ASESORIAS
( 
	ASES_ID              INT  NOT NULL ,
	CLI_ID               INT  NULL ,
	ASR_ID               INT  NULL ,
	ASES_FECHA           DATE  NOT NULL ,
	ASES_OBSERV          VARCHAR(200)  NOT NULL ,
	ESTADO               VARCHAR(10)  NOT NULL ,
	CONSTRAINT XPKASESORIAS PRIMARY KEY (ASES_ID ASC),
	CONSTRAINT R_19 FOREIGN KEY (ASR_ID) REFERENCES DBO.ASESORES(ASR_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_20 FOREIGN KEY (CLI_ID) REFERENCES DBO.CLIENTE(CLI_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
GO
--insert
	--INSERT CIUDAD
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(1,'Lima');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(2,'Callao');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(3,'Arequipa');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(4,'Tacna');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(5,'Junin');
		go
		INSERT INTO ciudad(ciu_Id,ciu_nombre)
		values(6,'Loreto');
		go
	--INSERT TURNO
		INSERT INTO Turno(turno_id,turno_nombre,turno_horario)
		values(1,'MAÑANA','8:00 - 12:00');
		go
		INSERT INTO Turno(turno_id,turno_nombre,turno_horario)
		values(2,'TARDE','13:00 - 19:00');
		go
	--INSERT CLIENTE ORDEN
		INSERT INTO CLIENTE(cli_id,cli_nombre,cli_apellido,cli_identificacion,cli_sexo,cli_fechanac,cli_email,cli_telefono,cli_ruc,ciu_Id)
		VALUES(1,'Daniel','Figueroa','79213122','M',GETDATE(),'danielfiguero@gmail.com',92456781,2022091232,1);

	--INSERT ORDEN ASESORES
		INSERT INTO asesores(asr_id,asr_nombre,asr_apellido,asr_identificacion,asr_fechanac,asr_sexo,asr_email,asr_telefono,asr_sueldo,ciu_Id,turno_id)
		VALUES(1,'Marco','Caballero','73022690',GETDATE(),'M','marcoestrada@hotmail.com',92456781,2000,2,1);
	--INSERT EN ASESORIAS ORDEN
		INSERT INTO asesorias(ases_id,cli_id,asr_id,ases_fecha,ases_observ,estado)
		VALUES(1,2,2,GETDATE(),'La reunion se realizara a travez de este zoom: https://zoom.us/9293182731','ATENDIDO');
--SP START

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



