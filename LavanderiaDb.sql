USE [master]
GO
/****** Object:  Database [lavanderiadb]    Script Date: 04/04/2018 8:57:34 p. m. ******/
CREATE DATABASE [lavanderiadb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lavanderiadb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\lavanderiadb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lavanderiadb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\lavanderiadb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [lavanderiadb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lavanderiadb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lavanderiadb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lavanderiadb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lavanderiadb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lavanderiadb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lavanderiadb] SET ARITHABORT OFF 
GO
ALTER DATABASE [lavanderiadb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lavanderiadb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lavanderiadb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lavanderiadb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lavanderiadb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lavanderiadb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lavanderiadb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lavanderiadb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lavanderiadb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lavanderiadb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [lavanderiadb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lavanderiadb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lavanderiadb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lavanderiadb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lavanderiadb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lavanderiadb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [lavanderiadb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lavanderiadb] SET RECOVERY FULL 
GO
ALTER DATABASE [lavanderiadb] SET  MULTI_USER 
GO
ALTER DATABASE [lavanderiadb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lavanderiadb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lavanderiadb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lavanderiadb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lavanderiadb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'lavanderiadb', N'ON'
GO
ALTER DATABASE [lavanderiadb] SET QUERY_STORE = OFF
GO
USE [lavanderiadb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [lavanderiadb]
GO
/****** Object:  Table [dbo].[estatusM]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estatusM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[tabla] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NULL,
 CONSTRAINT [PK_estatusM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[servicios]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](6) NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](250) NULL,
	[precio] [decimal](18, 2) NULL,
	[notas] [varchar](450) NULL,
	[costo] [decimal](18, 0) NULL,
	[stock] [int] NULL,
	[imagen] [nvarchar](max) NULL,
	[tservicio] [bit] NULL,
 CONSTRAINT [PK_servicios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[rnc] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](15) NULL,
	[celular] [varchar](15) NULL,
	[fecCreacion] [datetime] NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[nivel] [char](1) NOT NULL,
	[status] [bit] NOT NULL,
	[direccion] [varchar](250) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ventas]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[numDoc] [varchar](50) NOT NULL,
	[tipoPago] [int] NOT NULL,
	[fecha] [smalldatetime] NULL,
	[fechaPagada] [smalldatetime] NULL,
	[fechaAbono] [smalldatetime] NULL,
	[subTotal] [decimal](18, 0) NULL,
	[total] [decimal](18, 0) NULL,
	[balancePendiente] [decimal](18, 0) NULL,
	[saldoPagado] [decimal](18, 0) NULL,
	[userID] [int] NULL,
	[estatusID] [int] NULL,
	[estatusPago] [int] NULL,
	[fechaentrega] [smalldatetime] NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ventasDetalle]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventasDetalle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ventaID] [int] NOT NULL,
	[servicioID] [int] NOT NULL,
	[cantidad] [decimal](18, 2) NOT NULL,
	[precio] [decimal](18, 2) NOT NULL,
	[itbis] [decimal](18, 2) NOT NULL,
	[total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ventasDetalle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[estatusM] ON 

INSERT [dbo].[estatusM] ([id], [code], [tabla], [descripcion]) VALUES (1, N'1', N'ventas', N'Recibido')
INSERT [dbo].[estatusM] ([id], [code], [tabla], [descripcion]) VALUES (4, N'2', N'ventas', N'Entregado')
INSERT [dbo].[estatusM] ([id], [code], [tabla], [descripcion]) VALUES (5, N'1', N'ventas', N'Pendiente de Pago')
INSERT [dbo].[estatusM] ([id], [code], [tabla], [descripcion]) VALUES (6, N'2', N'ventas', N'Abonado')
INSERT [dbo].[estatusM] ([id], [code], [tabla], [descripcion]) VALUES (7, N'3', N'ventas', N'Pagado')
SET IDENTITY_INSERT [dbo].[estatusM] OFF
SET IDENTITY_INSERT [dbo].[servicios] ON 

INSERT [dbo].[servicios] ([ID], [codigo], [nombre], [descripcion], [precio], [notas], [costo], [stock], [imagen], [tservicio]) VALUES (1, NULL, N'Lavado de Camisa', NULL, CAST(150.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[servicios] ([ID], [codigo], [nombre], [descripcion], [precio], [notas], [costo], [stock], [imagen], [tservicio]) VALUES (2, NULL, N'Lavado de Blazer', NULL, CAST(300.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[servicios] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([ID], [nombre], [apellido], [rnc], [email], [telefono], [celular], [fecCreacion], [username], [password], [nivel], [status], [direccion]) VALUES (1, N'admin', N'istrador', NULL, NULL, N'8492077714', NULL, CAST(N'2016-07-09T14:16:59.947' AS DateTime), N'admin', N'123', N'1', 1, NULL)
INSERT [dbo].[usuarios] ([ID], [nombre], [apellido], [rnc], [email], [telefono], [celular], [fecCreacion], [username], [password], [nivel], [status], [direccion]) VALUES (3, N'juan', N'palote', NULL, NULL, N'88454', NULL, CAST(N'2016-07-09T14:17:33.997' AS DateTime), N'user', N'123', N'2', 1, NULL)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([ID], [numDoc], [tipoPago], [fecha], [fechaPagada], [fechaAbono], [subTotal], [total], [balancePendiente], [saldoPagado], [userID], [estatusID], [estatusPago], [fechaentrega]) VALUES (3, N'0', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL)
INSERT [dbo].[ventas] ([ID], [numDoc], [tipoPago], [fecha], [fechaPagada], [fechaAbono], [subTotal], [total], [balancePendiente], [saldoPagado], [userID], [estatusID], [estatusPago], [fechaentrega]) VALUES (4, N'x', 0, CAST(N'2016-07-10T19:51:00' AS SmallDateTime), NULL, NULL, CAST(300 AS Decimal(18, 0)), CAST(354 AS Decimal(18, 0)), CAST(354 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 1, 5, NULL)
INSERT [dbo].[ventas] ([ID], [numDoc], [tipoPago], [fecha], [fechaPagada], [fechaAbono], [subTotal], [total], [balancePendiente], [saldoPagado], [userID], [estatusID], [estatusPago], [fechaentrega]) VALUES (5, N'x', 1, CAST(N'2016-07-10T19:53:00' AS SmallDateTime), NULL, CAST(N'2016-07-10T19:53:00' AS SmallDateTime), CAST(450 AS Decimal(18, 0)), CAST(531 AS Decimal(18, 0)), CAST(81 AS Decimal(18, 0)), CAST(450 AS Decimal(18, 0)), 1, 1, 6, NULL)
INSERT [dbo].[ventas] ([ID], [numDoc], [tipoPago], [fecha], [fechaPagada], [fechaAbono], [subTotal], [total], [balancePendiente], [saldoPagado], [userID], [estatusID], [estatusPago], [fechaentrega]) VALUES (6, N'x', 1, CAST(N'2016-07-10T20:13:00' AS SmallDateTime), CAST(N'2016-07-10T20:13:00' AS SmallDateTime), NULL, CAST(150 AS Decimal(18, 0)), CAST(177 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(177 AS Decimal(18, 0)), 1, 1, 7, NULL)
INSERT [dbo].[ventas] ([ID], [numDoc], [tipoPago], [fecha], [fechaPagada], [fechaAbono], [subTotal], [total], [balancePendiente], [saldoPagado], [userID], [estatusID], [estatusPago], [fechaentrega]) VALUES (7, N'x', 1, CAST(N'2016-07-10T21:45:00' AS SmallDateTime), CAST(N'2016-07-10T21:45:00' AS SmallDateTime), CAST(N'2016-07-10T21:43:00' AS SmallDateTime), CAST(300 AS Decimal(18, 0)), CAST(354 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(354 AS Decimal(18, 0)), 3, 4, 7, CAST(N'2016-07-10T22:13:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[ventas] OFF
SET IDENTITY_INSERT [dbo].[ventasDetalle] ON 

INSERT [dbo].[ventasDetalle] ([ID], [ventaID], [servicioID], [cantidad], [precio], [itbis], [total]) VALUES (1, 4, 1, CAST(2.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), CAST(354.00 AS Decimal(18, 2)))
INSERT [dbo].[ventasDetalle] ([ID], [ventaID], [servicioID], [cantidad], [precio], [itbis], [total]) VALUES (2, 5, 1, CAST(3.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), CAST(531.00 AS Decimal(18, 2)))
INSERT [dbo].[ventasDetalle] ([ID], [ventaID], [servicioID], [cantidad], [precio], [itbis], [total]) VALUES (3, 6, 1, CAST(1.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), CAST(177.00 AS Decimal(18, 2)))
INSERT [dbo].[ventasDetalle] ([ID], [ventaID], [servicioID], [cantidad], [precio], [itbis], [total]) VALUES (4, 7, 2, CAST(1.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(354.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ventasDetalle] OFF
ALTER TABLE [dbo].[usuarios] ADD  CONSTRAINT [DF_Users_fecCreacion]  DEFAULT (getdate()) FOR [fecCreacion]
GO
ALTER TABLE [dbo].[usuarios] ADD  CONSTRAINT [DF_Users_status]  DEFAULT ('True') FOR [status]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_estatusM] FOREIGN KEY([estatusID])
REFERENCES [dbo].[estatusM] ([id])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_estatusM]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_usuarios] FOREIGN KEY([userID])
REFERENCES [dbo].[usuarios] ([ID])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_usuarios]
GO
ALTER TABLE [dbo].[ventasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ventasDetalle_servicios] FOREIGN KEY([servicioID])
REFERENCES [dbo].[servicios] ([ID])
GO
ALTER TABLE [dbo].[ventasDetalle] CHECK CONSTRAINT [FK_ventasDetalle_servicios]
GO
ALTER TABLE [dbo].[ventasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ventasDetalle_ventas] FOREIGN KEY([ventaID])
REFERENCES [dbo].[ventas] ([ID])
GO
ALTER TABLE [dbo].[ventasDetalle] CHECK CONSTRAINT [FK_ventasDetalle_ventas]
GO
/****** Object:  StoredProcedure [dbo].[ListCliente]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[ListCliente] as 
 select (u.nombre + ' ' + u.apellido) as NombreC ,
( 'Tel: ' + u.telefono + ', Cel: ' + u.celular) as Contactos, *
  from usuarios u   





GO
/****** Object:  StoredProcedure [dbo].[ListClientes]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[ListClientes] as 
 select (u.nombre + ' ' + u.apellido) as Nombre ,
( 'Tel: ' + u.telefono + ', Cel: ' + u.celular) as Contactos, *
  from usuarios u   





GO
/****** Object:  StoredProcedure [dbo].[ListServicio]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[ListServicio] as 
 select *,(case (tservicio) when 1 then '1 - Servicio' when 2 then '2- Producto' else '' end ) as tServicios
  from servicios    





GO
/****** Object:  StoredProcedure [dbo].[ListServicios]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[ListServicios] as 
 select *,(case (tservicio) when 1 then '1 - Servicio' when 2 then '2- Producto' else '' end ) as tServicio
  from servicios    





GO
/****** Object:  StoredProcedure [dbo].[ListVentas]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ListVentas] as 
select  v.*,(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusID) as Estatus,
(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusPago) as EstatusP,
(select u.nombre + ' ' + u.apellido from usuarios u where u.id=v.userID) as Nombre,
(select 'Tel: ' + u2.telefono + ', Cel: ' + u2.celular from usuarios u2 where u2.id=v.userID) as Contactos
  from ventas v  order by fecha desc




GO
/****** Object:  StoredProcedure [dbo].[ListVentasPend]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ListVentasPend] as 
select  v.*,(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusID) as Estatus,
(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusPago) as EstatusP,
(select u.nombre + ' ' + u.apellido from usuarios u where u.id=v.userID) as Nombre,
(select 'Tel: ' + u2.telefono + ', Cel: ' + u2.celular from usuarios u2 where u2.id=v.userID) as Contactos
  from ventas v where v.estatusID !=4 order by fecha desc




GO
/****** Object:  StoredProcedure [dbo].[ListVentasPendPago]    Script Date: 04/04/2018 8:57:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[ListVentasPendPago] as 
select  v.*,(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusID) as Estatus,
(select cast(e.code as varchar) +  ' - ' + e.descripcion from estatusM e where e.id=v.estatusPago) as EstatusP,
(select u.nombre + ' ' + u.apellido from usuarios u where u.id=v.userID) as Nombre,
(select 'Tel: ' + u2.telefono + ', Cel: ' + u2.celular from usuarios u2 where u2.id=v.userID) as Contactos
  from ventas v where v.estatusPago !=7 order by fecha desc




GO
USE [master]
GO
ALTER DATABASE [lavanderiadb] SET  READ_WRITE 
GO
