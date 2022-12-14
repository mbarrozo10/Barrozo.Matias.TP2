USE [master]
GO
/****** Object:  Database [generalaDb]    Script Date: 20/11/2022 18:17:51 ******/
CREATE DATABASE [generalaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'generalaDb', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\generalaDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'generalaDb_log', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\generalaDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [generalaDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [generalaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [generalaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [generalaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [generalaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [generalaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [generalaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [generalaDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [generalaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [generalaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [generalaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [generalaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [generalaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [generalaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [generalaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [generalaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [generalaDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [generalaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [generalaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [generalaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [generalaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [generalaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [generalaDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [generalaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [generalaDb] SET RECOVERY FULL 
GO
ALTER DATABASE [generalaDb] SET  MULTI_USER 
GO
ALTER DATABASE [generalaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [generalaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [generalaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [generalaDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [generalaDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [generalaDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'generalaDb', N'ON'
GO
ALTER DATABASE [generalaDb] SET QUERY_STORE = OFF
GO
USE [generalaDb]
GO
/****** Object:  User [prueba]    Script Date: 20/11/2022 18:17:51 ******/
CREATE USER [prueba] FOR LOGIN [prueba] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[partidas_test]    Script Date: 20/11/2022 18:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partidas_test](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[Ganador] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaJugada] [datetime] NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_test]    Script Date: 20/11/2022 18:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[PartidasGanadas] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[partidas_test] ON 

INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1094, N'matias', 2, CAST(N'2022-11-04T00:41:28.060' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1095, N'pepe', 2, CAST(N'2022-11-04T00:58:00.867' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1098, N'matias', 2, CAST(N'2022-11-08T02:25:44.580' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1100, N'pepe', 2, CAST(N'2022-11-09T01:02:51.287' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1101, N'matias', 2, CAST(N'2022-11-09T01:09:16.977' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1103, N'morena', 2, CAST(N'2022-11-10T01:07:07.443' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1104, N'pepe', 2, CAST(N'2022-11-11T16:15:00.793' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1105, N'matias', 2, CAST(N'2022-11-11T16:17:40.040' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1110, N'nicolas', 2, CAST(N'2022-11-15T16:43:04.453' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1111, N'empate', 2, CAST(N'2022-11-15T18:06:00.000' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1112, N'', 2, CAST(N'2022-11-15T19:27:03.090' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1117, N'', 2, CAST(N'2022-11-15T22:39:10.903' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1118, N'', 2, CAST(N'2022-11-15T22:39:10.903' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1119, N'', 2, CAST(N'2022-11-15T22:39:10.903' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1120, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1121, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1122, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1123, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1124, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1125, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1126, N'matias', 2, CAST(N'2022-11-15T22:40:38.850' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2112, N'matias', 2, CAST(N'2022-11-19T12:58:13.437' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2113, N'matias', 2, CAST(N'2022-11-19T12:58:13.437' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2114, N'nicolas', 2, CAST(N'2022-11-19T13:05:06.247' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2115, N'nicolas', 2, CAST(N'2022-11-19T13:05:06.247' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2116, N'matias', 2, CAST(N'2022-11-19T13:17:31.657' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2117, N'matias', 2, CAST(N'2022-11-19T13:17:59.497' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2118, N'matias', 2, CAST(N'2022-11-19T13:17:59.497' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2119, N'matias', 2, CAST(N'2022-11-19T13:19:38.683' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2120, N'matias', 2, CAST(N'2022-11-19T13:19:38.683' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2132, N'nicolas', 2, CAST(N'2022-11-19T14:05:18.417' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2133, N'nicolas', 2, CAST(N'2022-11-19T14:05:18.417' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2149, N'', 2, CAST(N'2022-11-20T17:56:26.003' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2150, N'matias', 2, CAST(N'2022-11-20T17:56:23.517' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2151, N'', 2, CAST(N'2022-11-20T18:03:12.983' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2152, N'', 2, CAST(N'2022-11-20T18:06:34.787' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2153, N'Cancelada', 2, CAST(N'2022-11-20T18:06:34.787' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2154, N'nicolas', 2, CAST(N'2022-11-20T18:06:56.163' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2155, N'', 2, CAST(N'2022-11-20T18:07:35.333' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2156, N'', 2, CAST(N'2022-11-20T18:08:42.573' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2157, N'', 2, CAST(N'2022-11-20T18:08:35.940' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2158, N'pepe', 2, CAST(N'2022-11-20T18:08:35.940' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2159, N'pepe', 2, CAST(N'2022-11-20T18:08:35.940' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2160, N'morena', 2, CAST(N'2022-11-20T18:08:56.530' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1106, N'morena', 2, CAST(N'2022-11-11T16:21:32.090' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1107, N'matias', 2, CAST(N'2022-11-11T16:26:06.047' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2125, N'morena', 2, CAST(N'2022-11-19T13:44:33.623' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2126, N'morena', 2, CAST(N'2022-11-19T13:44:33.623' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1114, N'pepe', 2, CAST(N'2022-11-15T21:38:58.113' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1127, N'matias', 2, CAST(N'2022-11-15T22:44:07.420' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1128, N'matias', 2, CAST(N'2022-11-15T22:44:07.420' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2127, N'morena', 2, CAST(N'2022-11-19T13:53:50.513' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2128, N'morena', 2, CAST(N'2022-11-19T13:53:50.513' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2121, N'pepe', 2, CAST(N'2022-11-19T13:26:02.207' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1099, N'matias', 2, CAST(N'2022-11-09T00:55:54.973' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1113, N'', 2, CAST(N'2022-11-15T21:32:53.513' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1115, N'', 2, CAST(N'2022-11-15T22:03:13.957' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2129, N'lucas', 2, CAST(N'2022-11-19T13:56:56.453' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2130, N'lucas', 2, CAST(N'2022-11-19T13:56:56.453' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2131, N'pepe', 2, CAST(N'2022-11-19T13:57:01.013' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2134, N'pepe3', 2, CAST(N'2022-11-19T14:16:58.360' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2135, N'pepe3', 2, CAST(N'2022-11-19T14:16:58.360' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2136, N'jazmin', 2, CAST(N'2022-11-19T14:18:32.237' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2137, N'jazmin', 2, CAST(N'2022-11-19T14:18:32.237' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2138, N'morena', 4, CAST(N'2022-11-19T14:18:28.130' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2139, N'morena', 4, CAST(N'2022-11-19T14:18:28.130' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2143, N'', 2, CAST(N'2022-11-20T05:16:14.443' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1108, N'nicolas', 2, CAST(N'2022-11-11T16:30:41.993' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1129, N'matias', 2, CAST(N'2022-11-15T22:59:46.523' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1130, N'matias', 2, CAST(N'2022-11-15T22:59:46.523' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1096, N'nicolas', 2, CAST(N'2022-11-07T22:16:43.620' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1097, N'pepe', 2, CAST(N'2022-11-07T22:16:35.833' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1102, N'nicolas', 2, CAST(N'2022-11-09T01:46:06.177' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1109, N'matias', 2, CAST(N'2022-11-11T19:45:27.790' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (1116, N'matias', 2, CAST(N'2022-11-15T22:18:40.573' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2123, N'nicolas', 2, CAST(N'2022-11-19T13:28:19.193' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2124, N'nicolas', 2, CAST(N'2022-11-19T13:28:19.193' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2142, N'', 2, CAST(N'2022-11-20T02:42:41.207' AS DateTime), N'Cancelada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2122, N'pepe', 2, CAST(N'2022-11-19T13:26:02.207' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2147, N'matias', 2, CAST(N'2022-11-20T14:41:27.477' AS DateTime), N'Finalizada')
INSERT [dbo].[partidas_test] ([id], [Ganador], [Cantidad], [FechaJugada], [Estado]) VALUES (2148, N'matias', 2, CAST(N'2022-11-20T14:41:27.477' AS DateTime), N'Finalizada')
SET IDENTITY_INSERT [dbo].[partidas_test] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario_test] ON 

INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (2, N'matias', N'barrozo', N'addq', N'123456', 20)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (3, N'pepe', N'pepe', N'pepe', N'pepe', 10)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (4, N'nicolas', N'gill', N'lachancha', N'123456', 8)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (5, N'morena', N'escudero', N'more', N'123456', 6)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (6, N'lucas', N'gaggino', N'luki', N'123456', 1)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (8, N'oriana', N'calveira', N'ori', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (9, N'jazmin', N'lopez', N'jaz', N'123456', 1)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (23, N'pepe3', N'pepe3', N'pepe3', N'pepe3', 1)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (10, N'gonzalo', N'guerrieri', N'gonza', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (11, N'martin', N'dauria', N'tincho', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (12, N'camila', N'jurado', N'cami', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (13, N'federico', N'lisi', N'fede', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (14, N'lucas', N'lioi', N'lucas', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (15, N'julian', N'schmidt', N'juli', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (16, N'leandro', N'diaz', N'leo', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (17, N'florencia', N'ayala', N'flor', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (21, N'pepe2', N'pepe2', N'pepe2', N'123456', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (22, N'pepe3', N'pepe3', N'pepe3', N'pepe3', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (24, N'pepe4', N'pepe4', N'pepe4', N'pepe4', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (25, N'asd', N'asd', N'asd', N'asd', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (26, N'asd', N'asd', N'asd', N'asd', 0)
INSERT [dbo].[usuario_test] ([id], [Nombre], [Apellido], [Usuario], [Contraseña], [PartidasGanadas]) VALUES (27, N'asd3', N'asdas', N'asdad', N'asdasd', 0)
SET IDENTITY_INSERT [dbo].[usuario_test] OFF
GO
USE [master]
GO
ALTER DATABASE [generalaDb] SET  READ_WRITE 
GO
