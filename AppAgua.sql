USE [master]
GO
/****** Object:  Database [appAgua]    Script Date: 04/04/2018 8:44:12 p. m. ******/
CREATE DATABASE [appAgua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'appAgua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\appAgua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'appAgua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\appAgua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [appAgua] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [appAgua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [appAgua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [appAgua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [appAgua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [appAgua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [appAgua] SET ARITHABORT OFF 
GO
ALTER DATABASE [appAgua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [appAgua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [appAgua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [appAgua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [appAgua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [appAgua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [appAgua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [appAgua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [appAgua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [appAgua] SET  ENABLE_BROKER 
GO
ALTER DATABASE [appAgua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [appAgua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [appAgua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [appAgua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [appAgua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [appAgua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [appAgua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [appAgua] SET RECOVERY FULL 
GO
ALTER DATABASE [appAgua] SET  MULTI_USER 
GO
ALTER DATABASE [appAgua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [appAgua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [appAgua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [appAgua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [appAgua] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'appAgua', N'ON'
GO
ALTER DATABASE [appAgua] SET QUERY_STORE = OFF
GO
USE [appAgua]
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
USE [appAgua]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[CAT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CAT_DESCRIPCION] [varchar](255) NULL,
 CONSTRAINT [PK_MAE_CATEGORIA] PRIMARY KEY CLUSTERED 
(
	[CAT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[PRO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_CODIGO] [varchar](50) NULL,
	[PRO_NOMBRE] [varchar](50) NOT NULL,
	[PRO_DESCRIPCION] [varchar](255) NULL,
	[PRO_ID_CATEGORIA] [int] NOT NULL,
	[PRO_SUB_CATEGORIA] [int] NOT NULL,
	[PRO_ETIQUETAS] [varchar](max) NULL,
	[PRO_PRECIO] [decimal](18, 2) NOT NULL,
	[PRO_NOTAS] [varchar](50) NULL,
	[PRO_ACTIVO] [bit] NULL,
	[PRO_FECHA_CREADO] [smalldatetime] NOT NULL,
	[PRO_IMAGEN] [nvarchar](max) NULL,
 CONSTRAINT [PK_MAE_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[PRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUBCATEGORIAS]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBCATEGORIAS](
	[SUB_ID] [int] IDENTITY(1,1) NOT NULL,
	[SUB_CATEGORIA_ID] [int] NOT NULL,
	[SUB_DESCRIPCION] [varchar](255) NOT NULL,
 CONSTRAINT [PK_SUBCATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[SUB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[USU_ID] [int] IDENTITY(1,1) NOT NULL,
	[SUP_NOMBRE] [varchar](max) NOT NULL,
	[SUP_APELLIDO] [varchar](max) NOT NULL,
	[SUP_CEDULA] [varchar](max) NULL,
	[SUP_PASAPORTE] [varchar](50) NULL,
	[SUP_TELEFONO] [varchar](50) NULL,
	[SUP_CORREO] [varchar](255) NULL,
	[SUP_FECHA_INGRESO] [datetime] NULL,
	[SUP_FECHA_SALIDA] [datetime] NULL,
	[SUP_FECHA_REGISTRO] [datetime] NULL,
	[SUP_ACTIVO] [bit] NOT NULL,
	[SUP_LOGIN] [nvarchar](50) NULL,
	[SUP_CLAVE] [nvarchar](50) NULL,
	[SUP_NIVEL] [int] NULL,
 CONSTRAINT [PK_MAE_USUARIOS] PRIMARY KEY CLUSTERED 
(
	[USU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[VEN_ID] [int] IDENTITY(1,1) NOT NULL,
	[VEN_NUMERO_DOC] [varchar](50) NOT NULL,
	[VEN_TIPO_DOC] [int] NOT NULL,
	[VEN_VENTA_FECHA] [smalldatetime] NULL,
	[VEN_FECHA_PAGADA] [smalldatetime] NULL,
	[VEN_ID_CLIENTE] [int] NULL,
	[VEN_SUB_TOTAL] [decimal](18, 0) NULL,
	[VEN_TOTAL] [decimal](18, 0) NULL,
	[VEN_ESTATUS] [varchar](50) NULL,
 CONSTRAINT [PK_MAE_VENTAS] PRIMARY KEY CLUSTERED 
(
	[VEN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS_DETALLES]    Script Date: 04/04/2018 8:44:13 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS_DETALLES](
	[VEN_DET_ID] [int] IDENTITY(1,1) NOT NULL,
	[VEN_DET_ID_VENTA] [int] NOT NULL,
	[VEN_DET_ID_PRODUCTO] [int] NOT NULL,
	[VEN_DET_CANTIDAD] [decimal](18, 2) NOT NULL,
	[VEN_DET_PRECIO_UNITARIO] [decimal](18, 2) NOT NULL,
	[VEN_DET_COMENTARIOS] [varchar](50) NULL,
	[VEN_DET_SUB_TOTAL] [decimal](18, 2) NOT NULL,
	[VEN_DET_TOTAL] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_AUX_VENTAS_DETALLES] PRIMARY KEY CLUSTERED 
(
	[VEN_DET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ventasDetalle]    Script Date: 04/04/2018 8:44:13 p. m. ******/
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
	[autor] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CATEGORIAS] ON 

INSERT [dbo].[CATEGORIAS] ([CAT_ID], [CAT_DESCRIPCION]) VALUES (1, N'Agua')
SET IDENTITY_INSERT [dbo].[CATEGORIAS] OFF
SET IDENTITY_INSERT [dbo].[PRODUCTOS] ON 

INSERT [dbo].[PRODUCTOS] ([PRO_ID], [PRO_CODIGO], [PRO_NOMBRE], [PRO_DESCRIPCION], [PRO_ID_CATEGORIA], [PRO_SUB_CATEGORIA], [PRO_ETIQUETAS], [PRO_PRECIO], [PRO_NOTAS], [PRO_ACTIVO], [PRO_FECHA_CREADO], [PRO_IMAGEN]) VALUES (1, N'5454', N'planeta azul', N'', 1, 1, N'', CAST(1500.00 AS Decimal(18, 2)), N'', NULL, CAST(N'2016-03-30T14:46:00' AS SmallDateTime), N'')
INSERT [dbo].[PRODUCTOS] ([PRO_ID], [PRO_CODIGO], [PRO_NOMBRE], [PRO_DESCRIPCION], [PRO_ID_CATEGORIA], [PRO_SUB_CATEGORIA], [PRO_ETIQUETAS], [PRO_PRECIO], [PRO_NOTAS], [PRO_ACTIVO], [PRO_FECHA_CREADO], [PRO_IMAGEN]) VALUES (2, N'asdas', N'Dasani', N'', 1, 2, N'', CAST(150.00 AS Decimal(18, 2)), N'', NULL, CAST(N'2016-03-30T14:47:00' AS SmallDateTime), N'compartirporskype.png')
SET IDENTITY_INSERT [dbo].[PRODUCTOS] OFF
SET IDENTITY_INSERT [dbo].[SUBCATEGORIAS] ON 

INSERT [dbo].[SUBCATEGORIAS] ([SUB_ID], [SUB_CATEGORIA_ID], [SUB_DESCRIPCION]) VALUES (1, 1, N'Botellita')
INSERT [dbo].[SUBCATEGORIAS] ([SUB_ID], [SUB_CATEGORIA_ID], [SUB_DESCRIPCION]) VALUES (2, 1, N'Fundita')
SET IDENTITY_INSERT [dbo].[SUBCATEGORIAS] OFF
SET IDENTITY_INSERT [dbo].[USUARIOS] ON 

INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (3, N'Juan', N'Almonte', NULL, NULL, NULL, N'jalmonte@hotmail.com', NULL, NULL, NULL, 1, N'jalmonte', N'123', NULL)
INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (4, N'Alberto', N'Santiago', NULL, NULL, NULL, N'asantiago@hotmail.com', NULL, NULL, NULL, 1, N'asantiago', N'123', NULL)
INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (5, N'Juan', N'Almonte', NULL, NULL, NULL, N'jalmonte@hotmail.com', NULL, NULL, NULL, 1, N'admin', N'123', 1)
INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (6, N'Alberto', N'Santiago', NULL, NULL, NULL, N'asantiago@hotmail.com', NULL, NULL, NULL, 1, N'user', N'123', NULL)
INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (7, N'juancito', N'vazquez', NULL, N'', N'8492077714', N'elemail@hotmail.com', CAST(N'2016-03-29T15:25:06.940' AS DateTime), NULL, CAST(N'2016-03-29T15:25:06.940' AS DateTime), 1, N'user2', N'123', NULL)
INSERT [dbo].[USUARIOS] ([USU_ID], [SUP_NOMBRE], [SUP_APELLIDO], [SUP_CEDULA], [SUP_PASAPORTE], [SUP_TELEFONO], [SUP_CORREO], [SUP_FECHA_INGRESO], [SUP_FECHA_SALIDA], [SUP_FECHA_REGISTRO], [SUP_ACTIVO], [SUP_LOGIN], [SUP_CLAVE], [SUP_NIVEL]) VALUES (8, N'johnathan', N'aaa', NULL, N'', N'5456465', N'js@hotmail.com', CAST(N'2016-03-29T18:33:54.570' AS DateTime), NULL, CAST(N'2016-03-29T18:33:54.570' AS DateTime), 1, N'js', N'123', NULL)
SET IDENTITY_INSERT [dbo].[USUARIOS] OFF
SET IDENTITY_INSERT [dbo].[VENTAS] ON 

INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (1, N'', 1, CAST(N'2016-03-29T18:38:00' AS SmallDateTime), CAST(N'2016-03-29T18:38:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (2, N'', 1, CAST(N'2016-03-29T20:22:00' AS SmallDateTime), CAST(N'2016-03-29T20:22:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (3, N'', 1, CAST(N'2016-03-30T14:17:00' AS SmallDateTime), CAST(N'2016-03-30T14:17:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (4, N'', 1, CAST(N'2016-03-30T14:22:00' AS SmallDateTime), CAST(N'2016-03-30T14:22:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (5, N'', 1, CAST(N'2016-03-30T14:27:00' AS SmallDateTime), CAST(N'2016-03-30T14:27:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (6, N'', 1, CAST(N'2016-03-30T14:48:00' AS SmallDateTime), CAST(N'2016-03-30T14:48:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (7, N'', 1, CAST(N'2016-03-30T14:51:00' AS SmallDateTime), CAST(N'2016-03-30T14:51:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (8, N'', 1, CAST(N'2016-03-30T14:56:00' AS SmallDateTime), CAST(N'2016-03-30T14:56:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (9, N'', 1, CAST(N'2016-03-30T15:00:00' AS SmallDateTime), CAST(N'2016-03-30T15:00:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (10, N'', 1, CAST(N'2016-03-30T15:02:00' AS SmallDateTime), CAST(N'2016-03-30T15:02:00' AS SmallDateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (11, N'r', 0, CAST(N'2016-03-30T16:02:00' AS SmallDateTime), CAST(N'2016-03-30T16:02:00' AS SmallDateTime), 8, CAST(16020 AS Decimal(18, 0)), CAST(2884 AS Decimal(18, 0)), N'Facturado')
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (12, N'r', 0, CAST(N'2016-03-30T16:05:00' AS SmallDateTime), CAST(N'2016-03-30T16:05:00' AS SmallDateTime), 8, CAST(3560 AS Decimal(18, 0)), CAST(641 AS Decimal(18, 0)), N'Facturado')
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (13, N'r', 0, CAST(N'2016-03-30T16:06:00' AS SmallDateTime), CAST(N'2016-03-30T16:06:00' AS SmallDateTime), 8, CAST(3560 AS Decimal(18, 0)), CAST(641 AS Decimal(18, 0)), N'Facturado')
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (14, N'345345345', 0, CAST(N'2016-03-30T16:12:00' AS SmallDateTime), CAST(N'2016-03-30T16:12:00' AS SmallDateTime), 8, CAST(3560 AS Decimal(18, 0)), CAST(641 AS Decimal(18, 0)), N'Facturado')
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (15, N'XXXX-XXXX-XXXX-4444', 0, CAST(N'2016-03-30T16:17:00' AS SmallDateTime), CAST(N'2016-03-30T16:17:00' AS SmallDateTime), 8, CAST(3560 AS Decimal(18, 0)), CAST(641 AS Decimal(18, 0)), N'Facturado')
INSERT [dbo].[VENTAS] ([VEN_ID], [VEN_NUMERO_DOC], [VEN_TIPO_DOC], [VEN_VENTA_FECHA], [VEN_FECHA_PAGADA], [VEN_ID_CLIENTE], [VEN_SUB_TOTAL], [VEN_TOTAL], [VEN_ESTATUS]) VALUES (16, N'XXXX-XXXX-XXXX-8788', 0, CAST(N'2016-03-30T16:17:00' AS SmallDateTime), CAST(N'2016-03-30T16:17:00' AS SmallDateTime), 8, CAST(3560 AS Decimal(18, 0)), CAST(641 AS Decimal(18, 0)), N'Facturado')
SET IDENTITY_INSERT [dbo].[VENTAS] OFF
SET IDENTITY_INSERT [dbo].[VENTAS_DETALLES] ON 

INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (7, 13, 1, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(1602.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (8, 13, 2, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(1602.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (9, 14, 1, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (10, 14, 2, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (11, 15, 1, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (12, 15, 2, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (13, 16, 1, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
INSERT [dbo].[VENTAS_DETALLES] ([VEN_DET_ID], [VEN_DET_ID_VENTA], [VEN_DET_ID_PRODUCTO], [VEN_DET_CANTIDAD], [VEN_DET_PRECIO_UNITARIO], [VEN_DET_COMENTARIOS], [VEN_DET_SUB_TOTAL], [VEN_DET_TOTAL]) VALUES (14, 16, 2, CAST(5.00 AS Decimal(18, 2)), CAST(580.00 AS Decimal(18, 2)), N'', CAST(1780.00 AS Decimal(18, 2)), CAST(10502.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[VENTAS_DETALLES] OFF
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_CATEGORIAS] FOREIGN KEY([PRO_ID_CATEGORIA])
REFERENCES [dbo].[CATEGORIAS] ([CAT_ID])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_CATEGORIAS]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_SUBCATEGORIAS] FOREIGN KEY([PRO_SUB_CATEGORIA])
REFERENCES [dbo].[SUBCATEGORIAS] ([SUB_ID])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_SUBCATEGORIAS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_USUARIOS] FOREIGN KEY([VEN_ID_CLIENTE])
REFERENCES [dbo].[USUARIOS] ([USU_ID])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_USUARIOS]
GO
ALTER TABLE [dbo].[VENTAS_DETALLES]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_DETALLES_PRODUCTOS] FOREIGN KEY([VEN_DET_ID_PRODUCTO])
REFERENCES [dbo].[PRODUCTOS] ([PRO_ID])
GO
ALTER TABLE [dbo].[VENTAS_DETALLES] CHECK CONSTRAINT [FK_VENTAS_DETALLES_PRODUCTOS]
GO
ALTER TABLE [dbo].[VENTAS_DETALLES]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_DETALLES_VENTAS] FOREIGN KEY([VEN_DET_ID_VENTA])
REFERENCES [dbo].[VENTAS] ([VEN_ID])
GO
ALTER TABLE [dbo].[VENTAS_DETALLES] CHECK CONSTRAINT [FK_VENTAS_DETALLES_VENTAS]
GO
USE [master]
GO
ALTER DATABASE [appAgua] SET  READ_WRITE 
GO
