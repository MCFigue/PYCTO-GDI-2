CREATE DATABASE Proyecto_GDI;
GO
USE [Proyecto_GDI]
GO
/****** Object:  Table [dbo].[asesores]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[asesorias]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[ciudad]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[cliente]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[Gerente]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[pedido]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[planes]    Script Date: 27/06/2022 20:52:15 ******/
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
/****** Object:  Table [dbo].[Turno]    Script Date: 27/06/2022 20:52:15 ******/
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
