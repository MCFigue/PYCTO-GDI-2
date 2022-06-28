USE [master]
GO
/****** Object:  Database [Proyecto_GDI]    Script Date: 27/06/2022 20:44:34 ******/
CREATE DATABASE [Proyecto_GDI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_GDI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto_GDI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_GDI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto_GDI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Proyecto_GDI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_GDI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_GDI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Proyecto_GDI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_GDI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_GDI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proyecto_GDI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_GDI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto_GDI] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_GDI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_GDI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_GDI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_GDI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto_GDI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto_GDI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Proyecto_GDI] SET QUERY_STORE = OFF
GO
USE [Proyecto_GDI]
GO
/****** Object:  Table [dbo].[asesores]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asesores](
	[asr_id] [int] NOT NULL,
	[asr_nombre] [varchar](30) NULL,
	[asr_apellido] [varchar](30) NULL,
	[asr_identificacion] [char](8) NULL,
	[asr_fechanac] [date] NULL,
	[asr_sexo] [varchar](10) NULL,
	[asr_email] [varchar](50) NULL,
	[asr_telefono] [varchar](15) NULL,
	[asr_sueldo] [numeric](18, 0) NULL,
	[ciu_Id] [int] NULL,
	[turno_id] [int] NULL,
 CONSTRAINT [XPKasesores] PRIMARY KEY CLUSTERED 
(
	[asr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asesorias]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asesorias](
	[ases_id] [int] NOT NULL,
	[cli_id] [int] NULL,
	[asr_id] [int] NULL,
	[ases_fecha] [date] NOT NULL,
	[ases_observ] [varchar](200) NOT NULL,
	[estado] [varchar](10) NOT NULL,
 CONSTRAINT [XPKasesorias] PRIMARY KEY CLUSTERED 
(
	[ases_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudad]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudad](
	[ciu_Id] [int] NOT NULL,
	[ciu_nombre] [varchar](15) NULL,
 CONSTRAINT [XPKciudad] PRIMARY KEY CLUSTERED 
(
	[ciu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[cli_id] [int] NOT NULL,
	[cli_nombre] [varchar](30) NOT NULL,
	[cli_apellido] [varchar](30) NOT NULL,
	[cli_identificacion] [char](8) NOT NULL,
	[cli_sexo] [varchar](10) NOT NULL,
	[cli_fechanac] [date] NOT NULL,
	[cli_email] [varchar](50) NOT NULL,
	[cli_telefono] [varchar](15) NOT NULL,
	[cli_ruc] [char](11) NOT NULL,
	[ciu_Id] [int] NULL,
 CONSTRAINT [XPKcliente] PRIMARY KEY CLUSTERED 
(
	[cli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gerente]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gerente](
	[grt_id] [int] NOT NULL,
	[grt_nombre] [varchar](30) NULL,
	[grt_apellido] [varchar](30) NULL,
	[grt_identificacion] [char](8) NULL,
	[grt_sexo] [varchar](10) NULL,
	[grt_email] [varchar](50) NULL,
	[grt_telefono] [varchar](15) NULL,
	[grt_fechanac] [date] NULL,
	[ciu_Id] [int] NULL,
 CONSTRAINT [XPKGerente] PRIMARY KEY CLUSTERED 
(
	[grt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[pdd_id] [int] NOT NULL,
	[cli_id] [int] NULL,
	[asr_id] [int] NULL,
	[pln_id] [int] NULL,
	[pdd_meses] [int] NULL,
	[pdd_total] [numeric](18, 0) NULL,
	[pdd_fecha] [date] NULL,
 CONSTRAINT [XPKpedido] PRIMARY KEY CLUSTERED 
(
	[pdd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planes]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planes](
	[pln_id] [int] NOT NULL,
	[pln_nombre] [varchar](10) NOT NULL,
	[pln_costo] [numeric](18, 0) NOT NULL,
	[pln_trabajadores] [int] NOT NULL,
 CONSTRAINT [XPKplan] PRIMARY KEY CLUSTERED 
(
	[pln_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[turno_id] [int] NOT NULL,
	[turno_nombre] [varchar](10) NULL,
	[turno_horario] [varchar](30) NULL,
 CONSTRAINT [XPKTurno] PRIMARY KEY CLUSTERED 
(
	[turno_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[asesores]  WITH CHECK ADD  CONSTRAINT [R_13] FOREIGN KEY([ciu_Id])
REFERENCES [dbo].[ciudad] ([ciu_Id])
GO
ALTER TABLE [dbo].[asesores] CHECK CONSTRAINT [R_13]
GO
ALTER TABLE [dbo].[asesores]  WITH CHECK ADD  CONSTRAINT [R_18] FOREIGN KEY([turno_id])
REFERENCES [dbo].[Turno] ([turno_id])
GO
ALTER TABLE [dbo].[asesores] CHECK CONSTRAINT [R_18]
GO
ALTER TABLE [dbo].[asesorias]  WITH CHECK ADD  CONSTRAINT [R_19] FOREIGN KEY([asr_id])
REFERENCES [dbo].[asesores] ([asr_id])
GO
ALTER TABLE [dbo].[asesorias] CHECK CONSTRAINT [R_19]
GO
ALTER TABLE [dbo].[asesorias]  WITH CHECK ADD  CONSTRAINT [R_20] FOREIGN KEY([cli_id])
REFERENCES [dbo].[cliente] ([cli_id])
GO
ALTER TABLE [dbo].[asesorias] CHECK CONSTRAINT [R_20]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([ciu_Id])
REFERENCES [dbo].[ciudad] ([ciu_Id])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [R_16]
GO
ALTER TABLE [dbo].[Gerente]  WITH CHECK ADD  CONSTRAINT [R_12] FOREIGN KEY([ciu_Id])
REFERENCES [dbo].[ciudad] ([ciu_Id])
GO
ALTER TABLE [dbo].[Gerente] CHECK CONSTRAINT [R_12]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [R_22] FOREIGN KEY([cli_id])
REFERENCES [dbo].[cliente] ([cli_id])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [R_22]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [R_23] FOREIGN KEY([asr_id])
REFERENCES [dbo].[asesores] ([asr_id])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [R_23]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [R_24] FOREIGN KEY([pln_id])
REFERENCES [dbo].[planes] ([pln_id])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [R_24]
GO
/****** Object:  StoredProcedure [dbo].[usp_registrar_asesor]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_registrar_asesor]
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
/****** Object:  StoredProcedure [dbo].[usp_registrar_cliente]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_registrar_cliente]
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
/****** Object:  StoredProcedure [dbo].[usp_reservar_asesoria]    Script Date: 27/06/2022 20:44:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_reservar_asesoria]
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
USE [master]
GO
ALTER DATABASE [Proyecto_GDI] SET  READ_WRITE 
GO
