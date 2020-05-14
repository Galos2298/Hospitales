USE [Hospital]
GO

/****** Object:  Table [dbo].[INGRESOS]    Script Date: 14/05/2020 17:23:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[INGRESOS](
	[Numero de Ingreso] [int] NOT NULL,
	[Numero de historial] [varchar](9) NULL,
	[Codigo Identificacion] [varchar](4) NULL,
	[Fecha de ingreso] [date] NULL,
	[Numero de Planta] [int] NULL,
	[Numero de Cama] [int] NULL,
	[Alergico] [char](1) NULL,
	[Observaciones] [char](500) NULL,
	[Coste de Ingreso] [money] NULL,
	[Diagnostico] [char](40) NULL,
 CONSTRAINT [PK_INGRESOS] PRIMARY KEY CLUSTERED 
(
	[Numero de Ingreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [FK_INGRESOS_MEDICOS] FOREIGN KEY([Codigo Identificacion])
REFERENCES [dbo].[MEDICOS] ([Codigo identificacion])
GO

ALTER TABLE [dbo].[INGRESOS] CHECK CONSTRAINT [FK_INGRESOS_MEDICOS]
GO

ALTER TABLE [dbo].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [FK_INGRESOS_PACIENTES] FOREIGN KEY([Numero de historial])
REFERENCES [dbo].[PACIENTES] ([Numero de Historial])
GO

ALTER TABLE [dbo].[INGRESOS] CHECK CONSTRAINT [FK_INGRESOS_PACIENTES]
GO

ALTER TABLE [dbo].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [CK_INGRESOS] CHECK  (([Numero de Planta]>=(0) AND [Numero de Planta]<=(10)))
GO

ALTER TABLE [dbo].[INGRESOS] CHECK CONSTRAINT [CK_INGRESOS]
GO

ALTER TABLE [dbo].[INGRESOS]  WITH CHECK ADD  CONSTRAINT [CK_INGRESOS_1] CHECK  (([Numero de cama]>=(0) AND [Numero de cama]<=(200)))
GO

ALTER TABLE [dbo].[INGRESOS] CHECK CONSTRAINT [CK_INGRESOS_1]
GO

/* scrip de la tabla de PACIENTES */
USE [Hospital]
GO

/****** Object:  Table [dbo].[PACIENTES]    Script Date: 14/05/2020 17:23:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PACIENTES](
	[N Seguridad Social] [varchar](15) NULL,
	[Nombre] [char](15) NULL,
	[Apellidos] [char](30) NULL,
	[Domicilio] [varchar](30) NULL,
	[Poblacion] [char](25) NULL,
	[Provincia] [char](15) NULL,
	[Codigo Postal] [varchar](5) NULL,
	[Telefono] [varchar](12) NULL,
	[Numero de Historial] [varchar](9) NOT NULL,
	[Sexo] [char](1) NULL,
	[Foto] [varbinary](max) NULL,
 CONSTRAINT [PK_PACIENTES] PRIMARY KEY CLUSTERED 
(
	[Numero de Historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PACIENTES]  WITH CHECK ADD  CONSTRAINT [CK_PACIENTES] CHECK  (([Sexo]='h' OR [Sexo]='m' OR [Sexo]='o'))
GO

ALTER TABLE [dbo].[PACIENTES] CHECK CONSTRAINT [CK_PACIENTES]
GO
 
 
 /* scrip de la tabla de MEDICOS */
 USE [Hospital]
GO

/****** Object:  Table [dbo].[MEDICOS]    Script Date: 14/05/2020 17:23:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MEDICOS](
	[Codigo identificacion] [varchar](4) NOT NULL,
	[Nombre de Medico] [char](15) NULL,
	[Apellidos de Medico] [char](30) NULL,
	[Especialidad] [char](25) NULL,
	[Fecha Ingreso] [date] NULL,
	[Cargo] [char](25) NULL,
	[Numero de Colegiado] [int] NULL,
	[Observaciones] [char](500) NULL,
 CONSTRAINT [PK_MEDICOS] PRIMARY KEY CLUSTERED 
(
	[Codigo identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO