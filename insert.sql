/* Insert PACIENTES */
USE [Hospital]
GO

INSERT INTO [dbo].[PACIENTES]
           ([N Seguridad Social]
           ,[Nombre]
           ,[Apellidos]
           ,[Domicilio]
           ,[Poblacion]
           ,[Provincia]
           ,[Codigo Postal]
           ,[Telefono]
           ,[Numero de Historial]
           ,[Sexo]
           ,[Foto])
     VALUES
           (<N Seguridad Social, varchar(15),>
           ,<Nombre, char(15),>
           ,<Apellidos, char(30),>
           ,<Domicilio, varchar(30),>
           ,<Poblacion, char(25),>
           ,<Provincia, char(15),>
           ,<Codigo Postal, varchar(5),>
           ,<Telefono, varchar(12),>
           ,<Numero de Historial, varchar(9),>
           ,<Sexo, char(1),>
           ,<Foto, varbinary(max),>)
GO


/* Insert Medicos */
USE [Hospital]
GO

INSERT INTO [dbo].[MEDICOS]
           ([Codigo identificacion]
           ,[Nombre de Medico]
           ,[Apellidos de Medico]
           ,[Especialidad]
           ,[Fecha Ingreso]
           ,[Cargo]
           ,[Numero de Colegiado]
           ,[Observaciones])
     VALUES
           (<Codigo identificacion, varchar(4),>
           ,<Nombre de Medico, char(15),>
           ,<Apellidos de Medico, char(30),>
           ,<Especialidad, char(25),>
           ,<Fecha Ingreso, date,>
           ,<Cargo, char(25),>
           ,<Numero de Colegiado, int,>
           ,<Observaciones, char(500),>)
GO
/* Insert ingresos */
USE [Hospital]
GO

INSERT INTO [dbo].[INGRESOS]
           ([Numero de Ingreso]
           ,[Numero de historial]
           ,[Codigo Identificacion]
           ,[Fecha de ingreso]
           ,[Numero de Planta]
           ,[Numero de Cama]
           ,[Alergico]
           ,[Observaciones]
           ,[Coste de Ingreso]
           ,[Diagnostico])
     VALUES
           (<Numero de Ingreso, int,>
           ,<Numero de historial, varchar(9),>
           ,<Codigo Identificacion, varchar(4),>
           ,<Fecha de ingreso, date,>
           ,<Numero de Planta, int,>
           ,<Numero de Cama, int,>
           ,<Alergico, char(1),>
           ,<Observaciones, char(500),>
           ,<Coste de Ingreso, money,>
           ,<Diagnostico, char(40),>)
GO
