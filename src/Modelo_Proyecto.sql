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


