USE [master]
GO
/****** Object:  Database [BD_ANGEL_MAURICIO_MARCOS_DIAZ]    Script Date: 15/08/2023 08:40:45 a. m. ******/
CREATE DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_ANGEL_MAURICIO_MARCOS_DIAZ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_ANGEL_MAURICIO_MARCOS_DIAZ.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_ANGEL_MAURICIO_MARCOS_DIAZ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD_ANGEL_MAURICIO_MARCOS_DIAZ_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_ANGEL_MAURICIO_MARCOS_DIAZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET  MULTI_USER 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_ANGEL_MAURICIO_MARCOS_DIAZ', N'ON'
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET QUERY_STORE = OFF
GO
USE [BD_ANGEL_MAURICIO_MARCOS_DIAZ]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 15/08/2023 08:40:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 15/08/2023 08:40:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [decimal](6, 2) NOT NULL,
	[codigo_fabricante] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (1, N'Asus')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (2, N'Lenovo')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (3, N'Hewlett-Packard')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (4, N'Samsung')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (5, N'Seagate')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (6, N'Crucial')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (7, N'Gigabyte')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (8, N'Huawei')
INSERT [dbo].[Fabricante] ([codigo], [nombre]) VALUES (9, N'Xiaomi')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (1, N'Disco duro SATA3 1TB', CAST(86.99 AS Decimal(6, 2)), 5)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (2, N'Memoria RAM DDR4 8GB', CAST(120.00 AS Decimal(6, 2)), 6)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (3, N'Disco SSD 1 TB', CAST(150.99 AS Decimal(6, 2)), 4)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (4, N'GeForce GTX 1050Ti', CAST(185.00 AS Decimal(6, 2)), 7)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (5, N'GeForce GTX 1080 Xtreme', CAST(755.00 AS Decimal(6, 2)), 6)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (6, N'Monitor 24 LED Full HD', CAST(202.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (7, N'Monitor 27 LED Full HD', CAST(245.99 AS Decimal(6, 2)), 1)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (8, N'Portátil Yoga 520', CAST(559.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (9, N'Portátil Ideapd 320', CAST(444.00 AS Decimal(6, 2)), 2)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (10, N'Impresora HP Deskjet 3720', CAST(59.99 AS Decimal(6, 2)), 3)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (11, N'Impresora HP Laserjet Pro M26nw', CAST(180.00 AS Decimal(6, 2)), 3)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (12, N'Laptop Prueba', CAST(200.00 AS Decimal(6, 2)), 1)
INSERT [dbo].[Producto] ([codigo], [nombre], [precio], [codigo_fabricante]) VALUES (13, N'Laptop Prueba 2', CAST(150.00 AS Decimal(6, 2)), 2)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([codigo_fabricante])
REFERENCES [dbo].[Fabricante] ([codigo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[sp_producto]    Script Date: 15/08/2023 08:40:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_producto]
@nombre_producto VARCHAR(50),
@precio_producto INT,
@codigo_fabricador INT
AS
BEGIN
	IF(SELECT COUNT(*) FROM Fabricante WHERE codigo=@codigo_fabricador) > 0
	BEGIN
		INSERT INTO Producto(nombre, precio, codigo_fabricante) VALUES
					(
					@nombre_producto, 
					@precio_producto, 
					@codigo_fabricador
					);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PRODUCTOS_LISTA]    Script Date: 15/08/2023 08:40:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PRODUCTOS_LISTA]
AS
BEGIN
	SELECT p.codigo 'Codigo', p.nombre 'Producto', p.precio 'Precio', f.nombre 'Fabricante' FROM Producto p
	INNER JOIN Fabricante f ON f.codigo = p.codigo_fabricante;
END
GO
USE [master]
GO
ALTER DATABASE [BD_ANGEL_MAURICIO_MARCOS_DIAZ] SET  READ_WRITE 
GO
