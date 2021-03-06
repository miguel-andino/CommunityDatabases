USE [master]
GO
/****** Object:  Database [SAICUDB]    Script Date: 04/04/2018 9:02:44 p. m. ******/
CREATE DATABASE [SAICUDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SAICUDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\SAICUDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SAICUDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\SAICUDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SAICUDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SAICUDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SAICUDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SAICUDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SAICUDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SAICUDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SAICUDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SAICUDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SAICUDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SAICUDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SAICUDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SAICUDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SAICUDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SAICUDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SAICUDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SAICUDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SAICUDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SAICUDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SAICUDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SAICUDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SAICUDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SAICUDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SAICUDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SAICUDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SAICUDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SAICUDB] SET  MULTI_USER 
GO
ALTER DATABASE [SAICUDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SAICUDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SAICUDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SAICUDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SAICUDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SAICUDB', N'ON'
GO
ALTER DATABASE [SAICUDB] SET QUERY_STORE = OFF
GO
USE [SAICUDB]
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
USE [SAICUDB]
GO
/****** Object:  Table [dbo].[tblEmp_Attendace]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmp_Attendace](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [varchar](25) NULL,
	[Status] [varchar](1) NULL,
	[Dated] [varchar](12) NULL,
	[txtTime] [datetime] NULL,
	[Remarks] [varchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](10) NULL,
	[EmployeeName] [varchar](20) NULL,
	[Age] [numeric](18, 0) NULL,
	[Address] [varchar](50) NULL,
	[NICNo] [varchar](15) NULL,
	[Qualification] [varchar](25) NULL,
	[PYear] [numeric](18, 0) NULL,
	[College] [varchar](25) NULL,
	[ContactNo] [varchar](15) NULL,
	[HireDate] [varchar](15) NULL,
	[Salery] [numeric](18, 0) NULL,
	[Comment] [varchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblExamDetail]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExamDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [varchar](3) NULL,
	[ExamName] [varchar](30) NULL,
	[Str_Date] [varchar](15) NULL,
	[End_Date] [varchar](15) NULL,
	[Description] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblExamSetup]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExamSetup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [varchar](3) NULL,
	[ExamName] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblExpenseAdd]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExpenseAdd](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseID] [varchar](50) NULL,
	[ExpenseName] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblExpenseDetail]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblExpenseDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Exp_ID] [varchar](3) NULL,
	[ExpenseName] [varchar](20) NULL,
	[Exp_Date] [varchar](12) NULL,
	[AmountPaid] [numeric](18, 0) NULL,
	[Description] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFee]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](15) NULL,
	[StudentName] [varchar](30) NULL,
	[Dated] [datetime] NULL,
	[Monthlyfee] [numeric](18, 0) NULL,
	[Libraryfee] [numeric](18, 0) NULL,
	[Totalfee] [numeric](18, 0) NULL,
	[Remarks] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStu_Attendace]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStu_Attendace](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Class] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Dated] [varchar](50) NULL,
	[Att_Time] [datetime] NULL,
	[Remarks] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStudents]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NULL,
	[Session] [varchar](50) NULL,
	[StudentName] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[FatherNIC] [varchar](50) NULL,
	[FatherOccuption] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [numeric](18, 0) NULL,
	[DateofBrith] [datetime] NULL,
	[Religion] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[TelNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[DateofAdmin] [datetime] NULL,
	[Adminfee] [numeric](18, 0) NULL,
	[MonthlyFee] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[Password] [varchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transacciones]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transacciones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MotivoOrigen] [int] NULL,
	[MotivoDestino] [int] NULL,
	[Descripcion] [varchar](250) NULL,
	[BalAnt] [decimal](18, 2) NULL,
	[BalTrans] [decimal](18, 2) NULL,
	[fecha] [datetime] NULL,
	[autor] [varchar](50) NULL,
	[tipo] [int] NULL,
	[marca] [bit] NULL,
	[BalAntProcedencia] [decimal](18, 2) NULL,
 CONSTRAINT [PK_transacciones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblEmp_Attendace] ON 

INSERT [dbo].[tblEmp_Attendace] ([ID], [TeacherName], [Status], [Dated], [txtTime], [Remarks]) VALUES (1, N'Khalil Ahmed', N'P', N'2/1/2011', CAST(N'1900-01-01T00:48:36.000' AS DateTime), N'')
INSERT [dbo].[tblEmp_Attendace] ([ID], [TeacherName], [Status], [Dated], [txtTime], [Remarks]) VALUES (2, N'Khalil Ahmed', N'P', N'2/1/2011', CAST(N'1900-01-01T00:48:45.000' AS DateTime), N'no')
INSERT [dbo].[tblEmp_Attendace] ([ID], [TeacherName], [Status], [Dated], [txtTime], [Remarks]) VALUES (3, N'Amin Khalid', N'P', N'01/03/2011', CAST(N'1900-01-01T21:36:39.000' AS DateTime), N'Ok')
INSERT [dbo].[tblEmp_Attendace] ([ID], [TeacherName], [Status], [Dated], [txtTime], [Remarks]) VALUES (4, N'Sir Ali', N'L', N'01/03/2011', CAST(N'1900-01-01T22:23:35.000' AS DateTime), N'ill')
INSERT [dbo].[tblEmp_Attendace] ([ID], [TeacherName], [Status], [Dated], [txtTime], [Remarks]) VALUES (5, N'Eshwar Das', N'P', N'01/03/2011', CAST(N'1900-01-01T22:23:48.000' AS DateTime), N'no')
SET IDENTITY_INSERT [dbo].[tblEmp_Attendace] OFF
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([ID], [ClassName], [EmployeeName], [Age], [Address], [NICNo], [Qualification], [PYear], [College], [ContactNo], [HireDate], [Salery], [Comment]) VALUES (1, N'KG1', N'Khalil Ahmed', CAST(32 AS Numeric(18, 0)), N'Garden East Karachi', N'13565-5215454-3', N'MBA', CAST(2009 AS Numeric(18, 0)), N'KU', N'032111255', N'1/26/2011', CAST(5000 AS Numeric(18, 0)), N'Good')
INSERT [dbo].[tblEmployee] ([ID], [ClassName], [EmployeeName], [Age], [Address], [NICNo], [Qualification], [PYear], [College], [ContactNo], [HireDate], [Salery], [Comment]) VALUES (2, N'KG1', N'sd', CAST(32 AS Numeric(18, 0)), N'sd', N'12513-2222222-2', N'ds', CAST(620 AS Numeric(18, 0)), N'ds', N'12231', N'1/27/2011', CAST(5000 AS Numeric(18, 0)), N'sdsd')
INSERT [dbo].[tblEmployee] ([ID], [ClassName], [EmployeeName], [Age], [Address], [NICNo], [Qualification], [PYear], [College], [ContactNo], [HireDate], [Salery], [Comment]) VALUES (3, N'Eight', N'Sir Ali', CAST(25 AS Numeric(18, 0)), N'Karachi', N'42013-2232656-5', N'M.A', CAST(2003 AS Numeric(18, 0)), N'Karachi University', N'0321-2154545', N'2/2/2011', CAST(10000 AS Numeric(18, 0)), N'No')
INSERT [dbo].[tblEmployee] ([ID], [ClassName], [EmployeeName], [Age], [Address], [NICNo], [Qualification], [PYear], [College], [ContactNo], [HireDate], [Salery], [Comment]) VALUES (4, N'Five', N'Amin Khalid', CAST(25 AS Numeric(18, 0)), N'Karachi', N'42536-5545866-1', N'B.Com', CAST(2003 AS Numeric(18, 0)), N'S.M College', N'0314-5121121', N'3/1/2010', CAST(5000 AS Numeric(18, 0)), N'Good Teacher')
INSERT [dbo].[tblEmployee] ([ID], [ClassName], [EmployeeName], [Age], [Address], [NICNo], [Qualification], [PYear], [College], [ContactNo], [HireDate], [Salery], [Comment]) VALUES (5, N'Nursery ', N'Eshwar Das', CAST(18 AS Numeric(18, 0)), N'Garden West Karachi', N'42154-5545655-1', N'B.com', CAST(2009 AS Numeric(18, 0)), N'KU', N'0322-2954794', N'3/1/2011', CAST(10000 AS Numeric(18, 0)), N'Good')
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
SET IDENTITY_INSERT [dbo].[tblExamDetail] ON 

INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (1, N'ANL', N'ANUAL', N'1/29/2011', N'2/16/2011', N'NO')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (6, N'NME', N'NINE MONTH EXAM', N'2/2/2011', N'2/2/2011', N'YES')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (7, N'ANL', N'ANUAL', N'2/2/2011', N'2/2/2011', N'NO')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (9, N'ANL', N'ANUAL', N'2/2/2011', N'2/2/2011', N'')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (10, N'NME', N'NINE MONTH EXAM', N'2/2/2011', N'2/2/2011', N'')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (11, N'MID', N'MIDDLE ANUAL', N'2/2/2011', N'2/2/2011', N'')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (12, N'NME', N'NINE MONTH EXAM', N'2/2/2011', N'2/2/2011', N'')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (13, N'ANL', N'ANUAL', N'2/2/2011', N'2/2/2011', N'')
INSERT [dbo].[tblExamDetail] ([ID], [ExamID], [ExamName], [Str_Date], [End_Date], [Description]) VALUES (14, N'NME', N'NINE MONTH EXAM', N'2/2/2011', N'2/2/2011', N'')
SET IDENTITY_INSERT [dbo].[tblExamDetail] OFF
SET IDENTITY_INSERT [dbo].[tblExamSetup] ON 

INSERT [dbo].[tblExamSetup] ([ID], [ExamID], [ExamName]) VALUES (1, N'MID', N'MIDDLE ANUAL')
INSERT [dbo].[tblExamSetup] ([ID], [ExamID], [ExamName]) VALUES (2, N'ANL', N'ANUAL')
INSERT [dbo].[tblExamSetup] ([ID], [ExamID], [ExamName]) VALUES (3, N'NME', N'NINE MONTH EXAM')
SET IDENTITY_INSERT [dbo].[tblExamSetup] OFF
SET IDENTITY_INSERT [dbo].[tblExpenseAdd] ON 

INSERT [dbo].[tblExpenseAdd] ([ID], [ExpenseID], [ExpenseName]) VALUES (1, N'ELC', N'ELETRICTY BILL')
INSERT [dbo].[tblExpenseAdd] ([ID], [ExpenseID], [ExpenseName]) VALUES (2, N'SAL', N'SALERY')
INSERT [dbo].[tblExpenseAdd] ([ID], [ExpenseID], [ExpenseName]) VALUES (3, N'REP', N'REPAIR')
INSERT [dbo].[tblExpenseAdd] ([ID], [ExpenseID], [ExpenseName]) VALUES (4, N'SAT', N'SATIONARY')
INSERT [dbo].[tblExpenseAdd] ([ID], [ExpenseID], [ExpenseName]) VALUES (5, N'SAF', N'SAFTY')
SET IDENTITY_INSERT [dbo].[tblExpenseAdd] OFF
SET IDENTITY_INSERT [dbo].[tblExpenseDetail] ON 

INSERT [dbo].[tblExpenseDetail] ([ID], [Exp_ID], [ExpenseName], [Exp_Date], [AmountPaid], [Description]) VALUES (1, N'ELC', N'ELETRICTY BILL', N'1/29/2011', CAST(2000 AS Numeric(18, 0)), N'PAID ELE BILL TO AMIR (TEACHER)')
INSERT [dbo].[tblExpenseDetail] ([ID], [Exp_ID], [ExpenseName], [Exp_Date], [AmountPaid], [Description]) VALUES (2, N'REP', N'REPAIR', N'1/30/2011', CAST(1500 AS Numeric(18, 0)), N'REPAIR FOR CHAIRS')
SET IDENTITY_INSERT [dbo].[tblExpenseDetail] OFF
SET IDENTITY_INSERT [dbo].[tblFee] ON 

INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (1, N'KG1', N'Eshwar Das', CAST(N'2011-02-01T00:00:00.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(800 AS Numeric(18, 0)), N'no')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (2, N'KG1', N'Ather ', CAST(N'2011-02-03T00:00:00.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(700 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (3, N'KG1', N'Heera', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), CAST(525 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (4, N'Eight', N'Fahad', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(900 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), CAST(1100 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (5, N'Five', N'Watwani', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(650 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)), CAST(750 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (6, N'KG2', N'Amin', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(450 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (7, N'Nursery ', N'Akram', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(350 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(370 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (8, N'Six', N'Zahid', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(700 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), CAST(750 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (9, N'Seven', N'Akram', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(750 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), CAST(800 AS Numeric(18, 0)), N'')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (10, N'One', N'Amin', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(600 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), CAST(650 AS Numeric(18, 0)), N'Good')
INSERT [dbo].[tblFee] ([ID], [ClassName], [StudentName], [Dated], [Monthlyfee], [Libraryfee], [Totalfee], [Remarks]) VALUES (11, N'Five', N'Watwani', CAST(N'2011-01-03T00:00:00.000' AS DateTime), CAST(1500 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(1515 AS Numeric(18, 0)), N'5555')
SET IDENTITY_INSERT [dbo].[tblFee] OFF
SET IDENTITY_INSERT [dbo].[tblStu_Attendace] ON 

INSERT [dbo].[tblStu_Attendace] ([ID], [Class], [StudentName], [Status], [Dated], [Att_Time], [Remarks]) VALUES (1, N'KG1', N'Eshwar Das', N'A', N'1/30/2011', CAST(N'1900-01-01T01:15:00.000' AS DateTime), N'Yes')
INSERT [dbo].[tblStu_Attendace] ([ID], [Class], [StudentName], [Status], [Dated], [Att_Time], [Remarks]) VALUES (2, N'Five', N'Watwani', N'P', N'30/01/2011', CAST(N'1900-01-01T21:57:21.000' AS DateTime), N'no')
INSERT [dbo].[tblStu_Attendace] ([ID], [Class], [StudentName], [Status], [Dated], [Att_Time], [Remarks]) VALUES (3, N'KG1', N'Heera', N'P', N'2/1/2011', CAST(N'1900-01-01T09:28:50.000' AS DateTime), N'no')
INSERT [dbo].[tblStu_Attendace] ([ID], [Class], [StudentName], [Status], [Dated], [Att_Time], [Remarks]) VALUES (4, N'One', N'Eshwar Das', N'A', N'2/3/2011', CAST(N'1900-01-01T00:36:39.000' AS DateTime), N'no')
INSERT [dbo].[tblStu_Attendace] ([ID], [Class], [StudentName], [Status], [Dated], [Att_Time], [Remarks]) VALUES (5, N'Eight', N'Eshwar Das', N'P', N'01/03/2011', CAST(N'1900-01-01T22:04:59.000' AS DateTime), N'no')
SET IDENTITY_INSERT [dbo].[tblStu_Attendace] OFF
SET IDENTITY_INSERT [dbo].[tblStudents] ON 

INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (23, N'Eight', N'2011 - 2012', N'Eshwar Das', N'Gopal Mal', N'42015-2125554-1', N'Shopkeeper', N'Male', CAST(13 AS Numeric(18, 0)), CAST(N'1992-11-05T23:08:46.000' AS DateTime), N'Hindu', N'Pakistani', N'0322-2954794', N'021-32259920', N'eshwardas707@yahoo.com', N'Garden West Karachi', CAST(N'2011-01-25T23:08:45.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (25, N'KG1', N'2009 - 2010', N'Heera', N'Lal', N'55555-5555421-1', N'nb', N'Male', CAST(11 AS Numeric(18, 0)), CAST(N'2011-01-26T00:01:31.000' AS DateTime), N'Muslim', N'Pakistani', N'0321-4444444', N'021-22222222', N'nbbnv', N'bvn', CAST(N'2011-01-26T00:01:31.000' AS DateTime), CAST(54 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (26, N'KG1', N'2009 - 2010', N'Parkash', N'Mal', N'     -       -', N'', N'Male', CAST(0 AS Numeric(18, 0)), CAST(N'2011-01-26T00:03:46.000' AS DateTime), N'Hindu', N'Pakistani', N'    -', N'   -', N'', N'', CAST(N'2011-01-26T00:03:46.000' AS DateTime), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (32, N'KG1', N'2009 - 2010', N'Ather ', N'Ali', N'     -       -', N'Manager', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'1990-09-28T00:00:00.000' AS DateTime), N'Muslim', N'Pakistani', N'0333-3254545', N'021-35665456', N'atherali@yahoo.com', N'Karachi', CAST(N'2011-02-02T00:00:00.000' AS DateTime), CAST(1000 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (33, N'Nursery ', N'2011 - 2012', N'Zahid', N'Nasir', N'     -       -', N'Employee', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'2001-01-12T23:40:37.000' AS DateTime), N'Muslim', N'Pakistani', N'0321-4546546', N'021-35454545', N'zahidnasir@hotmail.com', N'lyari karachi', CAST(N'2011-01-31T23:40:37.000' AS DateTime), CAST(1000 AS Numeric(18, 0)), CAST(1500 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (35, N'Eight', N'2011 - 2012', N'Fahad', N'Shbir', N'     -       -', N'', N'Male', CAST(0 AS Numeric(18, 0)), CAST(N'2011-02-07T00:00:00.000' AS DateTime), N'Muslim', N'Pakistani', N'    -', N'   -', N'', N'', CAST(N'2011-02-07T00:00:00.000' AS DateTime), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (36, N'Eight', N'2011 - 2012', N'Eshwar', N'Watwani', N'     -       -', N'Businessman', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'1992-11-05T00:00:00.000' AS DateTime), N'Hindu', N'Pakistani', N'0321-2215454', N'021-32565454', N'eshwar@yahoo.com', N'Karachi', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (37, N'KG1', N'2011 - 2012', N'Amin', N'Khalid', N'45246-4646564-4', N'', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'1950-12-12T00:00:00.000' AS DateTime), N'Muslim', N'Indain', N'0354-2313132', N'031-23232132', N'', N'', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(200 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (38, N'Nursery ', N'2010 - 2011', N'Akram', N'Meer', N'42545-5415454-1', N'Bsinessman', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'2005-02-28T00:00:00.000' AS DateTime), N'Muslim', N'Indain', N'0321-5455454', N'021-35656545', N'123@hotmail.com', N'Karachi', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(200 AS Numeric(18, 0)), CAST(1600 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (39, N'Six', N'2011 - 2012', N'Zahid', N'Nasir', N'     -       -', N'Employee', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'2001-01-12T23:40:37.000' AS DateTime), N'Muslim', N'Pakistani', N'0321-4546546', N'021-35454545', N'zahidnasir@hotmail.com', N'lyari karachi', CAST(N'2011-01-31T23:40:37.000' AS DateTime), CAST(1000 AS Numeric(18, 0)), CAST(1500 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (40, N'KG2', N'2011 - 2012', N'Amin', N'Khalid', N'45246-4646564-4', N'', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'1950-12-12T00:00:00.000' AS DateTime), N'Muslim', N'Indain', N'0354-2313132', N'031-23232132', N'', N'', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(200 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (41, N'Seven', N'2010 - 2011', N'Akram', N'Meer', N'42545-5415454-1', N'Bsinessman', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'2005-02-28T00:00:00.000' AS DateTime), N'Muslim', N'Indain', N'0321-5455454', N'021-35656545', N'123@hotmail.com', N'Karachi', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(200 AS Numeric(18, 0)), CAST(1600 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (42, N'Five', N'2011 - 2012', N'Watwani', N'Gopal Mal', N'42015-2125554-1', N'Shopkeeper', N'Male', CAST(12 AS Numeric(18, 0)), CAST(N'1992-11-05T23:08:46.000' AS DateTime), N'Hindu', N'Pakistani', N'0322-2954794', N'021-32259920', N'eshwardas707@yahoo.com', N'Garden West Karachi', CAST(N'2011-01-25T23:08:45.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (43, N'One', N'2011 - 2012', N'Amin', N'Khalid', N'45246-4646564-4', N'', N'Male', CAST(6 AS Numeric(18, 0)), CAST(N'1950-12-12T00:00:00.000' AS DateTime), N'Muslim', N'Indain', N'0354-2313132', N'031-23232132', N'', N'', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(200 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (44, N'Two', N'2011 - 2012', N'Eshwar', N'Watwani', N'     -       -', N'Businessman', N'Male', CAST(8 AS Numeric(18, 0)), CAST(N'1992-11-05T00:00:00.000' AS DateTime), N'Hindu', N'Pakistani', N'0321-2215454', N'021-32565454', N'eshwar@yahoo.com', N'Karachi', CAST(N'2011-02-28T00:00:00.000' AS DateTime), CAST(500 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (45, N'Three', N'2011 - 2012', N'Zahid', N'Nasir', N'     -       -', N'Employee', N'Male', CAST(5 AS Numeric(18, 0)), CAST(N'2001-01-12T23:40:37.000' AS DateTime), N'Muslim', N'Pakistani', N'0321-4546546', N'021-35454545', N'zahidnasir@hotmail.com', N'lyari karachi', CAST(N'2011-01-31T23:40:37.000' AS DateTime), CAST(1000 AS Numeric(18, 0)), CAST(1500 AS Numeric(18, 0)))
INSERT [dbo].[tblStudents] ([ID], [ClassName], [Session], [StudentName], [FatherName], [FatherNIC], [FatherOccuption], [Gender], [Age], [DateofBrith], [Religion], [Nationality], [Mobile], [TelNo], [Email], [Address], [DateofAdmin], [Adminfee], [MonthlyFee]) VALUES (46, N'Four', N'2009 - 2010', N'Parkash', N'Mal', N'     -       -', N'', N'Male', CAST(0 AS Numeric(18, 0)), CAST(N'2011-01-26T00:03:46.000' AS DateTime), N'Hindu', N'Pakistani', N'    -', N'   -', N'', N'', CAST(N'2011-01-26T00:03:46.000' AS DateTime), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[tblStudents] OFF
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([ID], [UserName], [Password]) VALUES (1, N'EshwarDas', N'Watwani')
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password]) VALUES (2, N'123', N'123')
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password]) VALUES (4, N'707', N'707')
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password]) VALUES (6, N'456', N'456')
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
/****** Object:  StoredProcedure [dbo].[GetOpcionesRol]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 

CREATE procedure [dbo].[GetOpcionesRol]
(@RolID int,
@autor varchar(25))
as

select o.nombre , o.descripcion, o.link from opcionesrol ro,   opciones o where o.id = ro.opcionid and o.autor=@autor
and ro.Rolid =@RolID
order by o.orden






GO
/****** Object:  StoredProcedure [dbo].[ListCursos]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 

CREATE procedure [dbo].[ListCursos]
(@autor varchar(20),
@status int)
as

  select  *    from CURSOS c where c.autor=@autor and  c.status=@status








GO
/****** Object:  StoredProcedure [dbo].[ListOpciones]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 

CREATE procedure [dbo].[ListOpciones]
(@autor varchar(20),
@status int)
as

  select  *    from OPCIONES op where op.autor=@autor and  op.status=@status









GO
/****** Object:  StoredProcedure [dbo].[ListOpcionesRol]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 

CREATE procedure [dbo].[ListOpcionesRol]
(@rolId int
)
as

select op.OPCIONID as OPCIONID,op.ROLID as ROLID, op.DESDE as DESDE, op.HASTA as HASTA,
 op.ID as ID, op.STATUS as STATUS, op.INDEFINIDO as INDEFINIDO, r.NOMBRE as NombreRol,
  o.NOMBRE as NombreOpcion, o.LINK as LINK
 from OPCIONESROL op, ROLES r, OPCIONES o  where r.ID=op.ROLID  and o.ID= op.OPCIONID  and  op.ROLID = @rolId
 
  
 




GO
/****** Object:  StoredProcedure [dbo].[ListRoles]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
 

CREATE procedure [dbo].[ListRoles]
(@autor varchar(20),
@status int)
as

  select  *    from ROLES r where r.autor=@autor and  r.status=@status








GO
/****** Object:  StoredProcedure [dbo].[ListRolesUsuarios]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 

CREATE procedure [dbo].[ListRolesUsuarios]
(@userId int
)
as

select ru.ROLID as ROLID,ru.DEFAULTPAGE as DEFAULTPAGE,ru.ID as ID,ru.DESDE as DESDE,ru.HASTA,ru.STATUS as  STATUS,ru.INDEFINIDO as INDEFINIDO,r.NOMBRE as NOMBRE from ROLESUSUARIO ru,ROLES r  where ru.userID = @userId  and r.ID=ru.ROLID
 
 



GO
/****** Object:  StoredProcedure [dbo].[ListUsuario]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
 

create procedure [dbo].[ListUsuario]
(@autor varchar(20),
@status int)
as

  select  *    from USUARIOSSEC u where u.autor=@autor and  u.ESTATUS=@status










GO
/****** Object:  StoredProcedure [dbo].[ListUsuarios]    Script Date: 04/04/2018 9:02:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
 

CREATE procedure [dbo].[ListUsuarios]
(@autor varchar(20),
@status int)
as

  select  *    from USUARIOSSEC u where u.autor=@autor and  u.ESTATUS=@status










GO
USE [master]
GO
ALTER DATABASE [SAICUDB] SET  READ_WRITE 
GO
