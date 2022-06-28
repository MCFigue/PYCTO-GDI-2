CREATE DATABASE Proyecto_GDI
GO

USE Proyecto_GDI
GO

CREATE TABLE dbo.Ciudad
( 
	ciu_Id               int  NOT NULL IDENTITY,
	ciu_nombre           varchar(15)  NULL ,
	CONSTRAINT XPKciudad PRIMARY KEY (ciu_Id ASC)
)
go



CREATE TABLE dbo.Gerente
( 
	grt_id					int  NOT NULL IDENTITY,
	grt_nombre				varchar(30)  NULL ,
	grt_apepaterno			varchar(15)  NULL ,
	grt_apematerno			varchar(15)  NULL ,
	grt_nroidentificacion   char(8)  NULL ,
	grt_sexo				varchar(10)  NULL ,
	grt_email				varchar(50)  NULL ,
	grt_telefono			varchar(15)  NULL ,
	grt_fechanac			date  NULL ,
	ciu_Id					int  NULL ,
	CONSTRAINT XPKGerente PRIMARY KEY (grt_id ASC),
	CONSTRAINT R_12 FOREIGN KEY (ciu_Id) REFERENCES dbo.ciudad(ciu_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE dbo.Cliente
( 
	cli_id					int  NOT NULL IDENTITY,
	cli_nombre				varchar(30)  NOT NULL ,
	cli_apepaterno			varchar(15)  NULL ,
	cli_apematerno			varchar(15)  NULL ,
	cli_nroidentificacion   char(8)  NULL ,
	cli_sexo				varchar(10)  NOT NULL ,
	cli_fechanac			date  NOT NULL ,
	cli_email				varchar(50)  NOT NULL ,
	cli_telefono			varchar(15)  NOT NULL ,
	cli_ruc					char(11)  NOT NULL ,
	ciu_Id					int  NULL ,
	CONSTRAINT XPKcliente PRIMARY KEY (cli_id ASC),
	CONSTRAINT R_16 FOREIGN KEY (ciu_Id) REFERENCES dbo.ciudad(ciu_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE dbo.Turno
( 
	turno_id             int  NOT NULL IDENTITY,
	turno_nombre         varchar(10)  NULL ,
	turno_horario        varchar(30)  NULL ,
	CONSTRAINT XPKTurno PRIMARY KEY (turno_id ASC)
)
go



CREATE TABLE dbo.Asesores
( 
	asr_id					int  NOT NULL IDENTITY,
	asr_nombre				varchar(30)  NULL ,
	asr_apepaterno			varchar(15)  NULL ,
	asr_apematerno			varchar(15)  NULL ,
	asr_nroidentificacion   char(8)  NULL ,
	asr_fechanac			date  NULL ,
	asr_sexo				varchar(10)  NULL ,
	asr_email				varchar(50)  NULL ,
	asr_telefono			varchar(15)  NULL ,
	asr_sueldo				numeric(18,2)  NULL ,
	ciu_Id					int  NULL ,
	turno_id				int  NULL ,
	CONSTRAINT XPKasesores PRIMARY KEY (asr_id ASC),
	CONSTRAINT R_13 FOREIGN KEY (ciu_Id) REFERENCES dbo.ciudad(ciu_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_18 FOREIGN KEY (turno_id) REFERENCES dbo.Turno(turno_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE dbo.Planes
( 
	pln_id               int  NOT NULL IDENTITY,
	pln_nombre           varchar(10)  NOT NULL ,
	pln_costo            numeric(18,2)  NOT NULL ,
	pln_trabajadores     int  NOT NULL ,
	CONSTRAINT XPKplan PRIMARY KEY (pln_id ASC)
)
go



CREATE TABLE dbo.Pedido
( 
	pdd_id               int  NOT NULL IDENTITY,
	cli_id               int  NULL ,
	asr_id               int  NULL ,
	pln_id               int  NULL ,
	pdd_meses            int  NULL ,
	pdd_total            numeric(18,2)  NULL ,
	pdd_fecha            date  NULL ,
	CONSTRAINT XPKpedido PRIMARY KEY (pdd_id ASC),
	CONSTRAINT R_22 FOREIGN KEY (cli_id) REFERENCES dbo.cliente(cli_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_23 FOREIGN KEY (asr_id) REFERENCES dbo.asesores(asr_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_24 FOREIGN KEY (pln_id) REFERENCES dbo.planes(pln_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go



CREATE TABLE dbo.Asesorias
( 
	ases_id              int  NOT NULL IDENTITY,
	cli_id               int  NULL ,
	asr_id               int  NULL ,
	ases_fecha           date  NOT NULL ,
	ases_observ          varchar(200)  NOT NULL ,
	estado               varchar(10)  NOT NULL ,
	CONSTRAINT XPKasesorias PRIMARY KEY (ases_id ASC),
	CONSTRAINT R_19 FOREIGN KEY (asr_id) REFERENCES dbo.asesores(asr_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT R_20 FOREIGN KEY (cli_id) REFERENCES dbo.cliente(cli_id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

use Proyecto_GDI

--insert
	--INSERT PLAN
		INSERT INTO Planes VALUES ('Básico','90','4')
		INSERT INTO Planes VALUES ('Pro','130','8')
		INSERT INTO Planes VALUES ('Premium','260','16')
	--INSERT CIUDAD
		INSERT INTO ciudad(ciu_nombre)
		values('Lima');
		go
		INSERT INTO ciudad(ciu_nombre)
		values('Callao');
		go
		INSERT INTO ciudad(ciu_nombre)
		values('Arequipa');
		go
		INSERT INTO ciudad(ciu_nombre)
		values('Tacna');
		go
		INSERT INTO ciudad(ciu_nombre)
		values('Junin');
		go
		INSERT INTO ciudad(ciu_nombre)
		values('Loreto');
		go
	--INSERT TURNO
		INSERT INTO Turno(turno_nombre,turno_horario)
		values('MAÑANA','8:00 - 12:00');
		go
		INSERT INTO Turno(turno_nombre,turno_horario)
		values('TARDE','13:00 - 19:00');
		go
	--INSERT CLIENTE ORDEN
		INSERT INTO CLIENTE(cli_nombre,cli_apepaterno,cli_apematerno,cli_nroidentificacion,cli_sexo,cli_fechanac,cli_email,cli_telefono,cli_ruc,ciu_Id)
		VALUES('Daniel','Figueroa','Millan','79213122','M',GETDATE(),'danielfiguero@gmail.com',92456781,2022091232,1);

	--INSERT ORDEN ASESORES
		INSERT INTO asesores(asr_nombre,asr_apepaterno,asr_apematerno,asr_nroidentificacion,asr_fechanac,asr_sexo,asr_email,asr_telefono,asr_sueldo,ciu_Id,turno_id)
		VALUES('Marco','Caballero','Perez','73022690',GETDATE(),'M','marcoestrada@hotmail.com',92456781,2000,2,1);
	--INSERT EN ASESORIAS ORDEN
		INSERT INTO asesorias(cli_id,asr_id,ases_fecha,ases_observ,estado)
		VALUES(1,1,GETDATE(),'La reunion se realizara a travez de este zoom: https://zoom.us/9293182731','ATENDIDO');
--SP START

drop procedure usp_registrar_cliente;
go

create procedure usp_registrar_cliente
(
	
	@p_cli_nombre varchar(30),
	@p_cli_apepaterno varchar(30),
	@p_cli_apematerno varchar(30),
	@p_cli_nroidentificacion char(8),
	@p_cli_sexo varchar(10),
	@p_cli_fechanac date,
	@p_cli_email varchar(50),
	@p_cli_telefono varchar(50),
	@p_cli_ruc char(11),
	@p_ciu_id int,
	----------
	@p_msg    varchar      (100) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @cli_id int;
	-- Validaciones
	if(@p_cli_apepaterno is null OR @p_cli_apematerno is null OR @p_cli_nombre is null OR @p_cli_nroidentificacion is null)
	begin
		set @p_estado = -3;
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
		select @CLI_ID=MAX(cli_id) from cliente;
		set @cli_id = @cli_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO CLIENTE(cli_nombre,cli_apepaterno,cli_apematerno,cli_nroidentificacion,cli_sexo,cli_fechanac,cli_email,cli_telefono,cli_ruc,ciu_Id)
		VALUES(@p_cli_nombre,@p_cli_apepaterno,@p_cli_apematerno,@p_cli_nroidentificacion,@p_cli_sexo,@p_cli_fechanac,@p_cli_email,@p_cli_telefono,@p_cli_ruc,@p_ciu_id); 
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

delete from Cliente
where cli_nombre = 'Esteban'

begin
declare @msg varchar(100), @estado int;
exec usp_registrar_cliente 'Esteban','Bueno','Martinez','76232221','M','2002-03-01','esteban22@hotmail.com','98009221','576310111',1, @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
end;
go

begin
declare @msg varchar(100), @estado int;
exec usp_registrar_cliente 'Emilia','De la Cruz','Pereira','76890192','F','1997-03-12','emiliasantos@santos.com','988872122','20239911122',1, @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
end;
go

drop procedure usp_registrar_asesor;
go

create procedure usp_registrar_asesor
(
	
	@p_asr_nombre varchar(30),
	@p_asr_apepaterno varchar(30),
	@p_asr_apematerno varchar(30),
	@p_asr_nroidentificacion char(8),
	@p_asr_fechanac date,
	@p_asr_sexo varchar(10),
	@p_asr_email varchar(50),
	@p_asr_telefono varchar(15),
	@p_asr_sueldo numeric,
	@p_ciu_id int,
	@p_turno_id int,
	----------
	@p_msg    varchar      (100) OUT, 
	@p_estado    int       OUT
)
AS
BEGIN
	-- Variables
	DECLARE @asr_id int;
	-- Validaciones
	if(@p_asr_apepaterno is null OR @p_asr_apematerno is null OR @p_asr_nombre is null OR @p_asr_nroidentificacion is null)
	begin
		set @p_estado = -3;
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
		select @asr_id=MAX(asr_id) from asesores;
		set @asr_id = @asr_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO asesores(asr_nombre,asr_apepaterno,asr_apematerno,asr_nroidentificacion,asr_fechanac,asr_sexo,asr_email,asr_telefono,asr_sueldo,ciu_Id,turno_id)
		VALUES(@p_asr_nombre,@p_asr_apepaterno,@p_asr_apematerno,@p_asr_nroidentificacion,@p_asr_fechanac,@p_asr_sexo,@p_asr_email,@p_asr_telefono,@p_asr_sueldo,@p_ciu_id,@p_turno_id); 
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
declare @msg varchar(100), @estado int;
exec usp_registrar_asesor 'Arturo','Millan','Estrada','20668712','1989-01-12','M','arturomillan@hotmail.com','987678564','1700',3,2, @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
end;
go

begin
declare @msg varchar(100), @estado int;
exec usp_registrar_asesor 'Anthonela','Ramirez','Garces','68271113','1999-11-10','F','mantillaaa@hotmail.com','9879876111','1800',3,2, @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
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
	@p_msg    varchar      (100) OUT, 
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
		select @ases_id=MAX(ases_id) from asesorias;
		set @ases_id = @ases_id+1;
		-- Inserta el nuevo cliente
		INSERT INTO asesorias(cli_id,asr_id,ases_fecha,ases_observ,estado)
		VALUES(@p_cli_id,@p_asr_id,@p_ases_fecha,@p_ases_observ,@p_ases_estado); 
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
declare @msg varchar(100), @estado int;
exec usp_reservar_asesoria 1,3,'2022-06-10','La reunion se realizara a travez de este zoom: https://meet.google.com/xua-by-iuhg','PENDIENTE', @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
end;
go

begin
declare @msg varchar(100), @estado int;
exec usp_reservar_asesoria 1,1,'2022-04-22','La reunion se realizara a travez de este meet: https://meet.google.com/uid-wme-ldk','ATENDIDO', @msg out, @estado out;
print concat('Estado: ', @estado);
print concat('Mensaje: ', @msg);
end;
go



