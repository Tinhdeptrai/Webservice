USE [master]
GO
/****** Object:  Database [NHAHANGKHACHSAN]    Script Date: 29/03/2017 1:10:39 CH ******/
CREATE DATABASE [NHAHANGKHACHSAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NHAHANGKHACHSAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NHAHANGKHACHSAN.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NHAHANGKHACHSAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NHAHANGKHACHSAN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NHAHANGKHACHSAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET RECOVERY FULL 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  MULTI_USER 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NHAHANGKHACHSAN', N'ON'
GO
USE [NHAHANGKHACHSAN]
GO
/****** Object:  User [nguyentinh123]    Script Date: 29/03/2017 1:10:39 CH ******/
CREATE USER [nguyentinh123] FOR LOGIN [nguyentinh123] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nguyentinh]    Script Date: 29/03/2017 1:10:39 CH ******/
CREATE USER [nguyentinh] FOR LOGIN [nguyentinh] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [nguyentinh123]
GO
ALTER ROLE [db_owner] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [nguyentinh]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [nguyentinh]
GO
/****** Object:  Table [dbo].[BOOKING]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datein] [datetime] NOT NULL,
	[room] [int] NOT NULL,
	[detail] [nvarchar](max) NULL,
	[quanlity] [int] NOT NULL,
	[dateout] [datetime] NOT NULL,
	[users] [int] NOT NULL,
 CONSTRAINT [PK_BOOKTING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOD]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FOOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [varchar](1000) NULL,
	[foodname] [varchar](255) NOT NULL,
	[price] [money] NOT NULL,
	[infor] [int] NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK__FOOD__AE55585527CCD71F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IMAGE]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGE](
	[infor] [int] NOT NULL,
	[imageurl] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_IMAGE] PRIMARY KEY CLUSTERED 
(
	[infor] ASC,
	[imageurl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INFORMATION]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotline] [nvarchar](11) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[timeopen] [time](4) NOT NULL,
	[timeclose] [time](4) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[intro] [nvarchar](1000) NOT NULL,
	[number] [nvarchar](10) NOT NULL,
	[ward] [nvarchar](50) NOT NULL,
	[street] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[province] [nvarchar](50) NOT NULL,
	[urlpartner] [nchar](10) NULL,
	[partner] [int] NOT NULL,
 CONSTRAINT [PK_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PARTNER]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTNER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_FLATNAME] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RATING]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RATING](
	[infor] [int] NOT NULL,
	[users] [int] NOT NULL,
 CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED 
(
	[infor] ASC,
	[users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROOM]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[infor] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[detail] [nvarchar](max) NULL,
	[quanlity] [nchar](10) NULL,
	[maxpeople] [int] NOT NULL,
	[price] [money] NOT NULL,
	[image] [nvarchar](500) NULL,
 CONSTRAINT [PK__ROOM__F3249856AFD3DED2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICE]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK__SERVICE__25B469EADB46A87E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICEINFOR]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICEINFOR](
	[information] [int] NOT NULL,
	[service] [int] NOT NULL,
 CONSTRAINT [PK_SERVICE_INFOR] PRIMARY KEY CLUSTERED 
(
	[information] ASC,
	[service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERS]    Script Date: 29/03/2017 1:10:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BOOKING] ON 

INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (1, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 1, N'1', 1, CAST(N'2016-02-28 00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (2, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 2, N'2', 2, CAST(N'2015-08-08 00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[BOOKING] OFF
SET IDENTITY_INSERT [dbo].[FOOD] ON 

INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (8, N'"" ', N'Bánh canh', 500000.0000, 60, N'1')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (10, N'Bánh đa v?i nư?c dùng riêu cua', N'Bánh đa cua', 400000.0000, 61, N'1')
SET IDENTITY_INSERT [dbo].[FOOD] OFF
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/1313545905-001.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/201533016165813.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'http://localhost:8080/SkyService/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'http://localhost:8080/SkyService/image/70132d2ff0fda841abb5f0dde83efe5f.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'http://localhost:8080/SkyService/image/ben-trong-khach-san-7-sao-xa-xi-nhat-the-gioi-o-dubai.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/images.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/Khach-san-3-sao-Danang-Petro.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'http://localhost:8080/SkyService/image/khach-san-hoang-thanh- (10).jpg')
SET IDENTITY_INSERT [dbo].[INFORMATION] ON 

INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (5, N'01654116641', N'Khách sạn City Star', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'13', N'Phường Bến Nghé', N'Đường Bùi Thị Xuân', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (9, N'1900 6978', N'Khách sạn Hương Mai', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'206', N'Phường 9', N'Đường Nguyễn Phúc Nguyên', N'Quận 3', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (13, N'01654116641', N'Khách sạn Vina Terrace', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 3 sao', N'Khách sạn sạch sẽ, sang trọng, gần chợ Bến Thành', N'33', N'Phường Bến Thành', N'Đường Lê Anh Xuân', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (15, N'0909226847', N'Khách sạn Dragon Sea', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 3 sao', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng.', N'82', N'Biển Mỹ Khê', N'Đường Hà Bồng', N'Quận Sơn Trà', N'Tp. Đà Nẵng', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (25, N'01654012356', N'Khách sạn Sea Garden', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'123', N'Phường Phước Ninh', N'Đường Lê Văn Quý', N'Quận Hải Châu', N'Tp. Đà Nẵng', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (38, N'01654012356', N'Khách sạn Diamond Sea ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'32', N'Phường 4', N'Đường Nguyễn Văn Linh', N'Quận 5', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (39, N'01654012356', N'Khách sạn Le House Boutique ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 5', N'Đường Lê Văn Việt', N'Quận 6', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (40, N'01654012356', N'Khách sạn Bắc Cường', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 6', N'Đường Lê Hồng Phong', N'Quận 3', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (41, N'01654012356', N'Khách sạn Mango', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 6', N'Đường Man Thiện', N'Quận 9', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (42, N'01654012356', N'Khách sạn Brown Bean 2 ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'345', N'Phường 7', N'Đường Nguyễn Thị Thập', N'Quận 7', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (43, N'01654012356', N'Khách sạn Golden Crown ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'32', N'Phường 8', N'Đường Nguyễn Văn Linh', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (44, N'01654012356', N'Khách sạn Phụng Hoàng Gold ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 10', N'Đường Lê Văn Việt', N'Quận 2', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (45, N'01654012356', N'Khách sạn Mifuki Inn', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 11', N'Đường Lê Hồng Phong', N'Quận 9', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (46, N'01654012356', N'Khách sạn Bông Sen Sài Gòn', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 2', N'Đường Man Thiện', N'Quận 11', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (47, N'01654012356', N'Khách sạn Thiên Xuân', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 5', N'Đường Lê Văn Việt', N'Quận 12', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (48, N'01654012356', N'Khách sạn Phúc Khánh', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 6', N'Đường Lê Hồng Phong', N'Quận Bình Thạn', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (49, N'01654012356', N'Khách sạn A&EM Corner Sai Gon', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 6', N'Đường Man Thiện', N'Quận Tân Bình', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (50, N'01654012356', N'Khách sạn Nikko Sài Gòn', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'345', N'Phường 7', N'Đường Nguyễn Thị Thập', N'Quận Tân Phú', N'Tp. Hồ Chí Minh', N'""        ', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (60, N'1900 8198', N'Nhà Hàng Thiết Mộc Lan', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'QL 1A', N'Quận Thủ Đức', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (61, N'1900 8198', N'Nhà Hàng Sân Vườn Tư Trì', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Nhậu', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 8', N'Đường Lê Hồng Phong', N'Quận 2', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (62, N'1900 8198', N'Nhà Hàng Balong', CAST(N'10:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Bùi Thị Xuân', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (63, N'1900 8198', N'
Nhà hàng Ajido', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Hội Nghị', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 6', N'Đường Nguyễn Thị Thập', N'Quận Thủ Đức', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (64, N'1900 8198', N'Nhà Hàng Sesan', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Lê Hồng Phong', N'Quận 3', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (65, N'1900 8198', N'Nhà hàng Hoa viên Ao Đôi', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Bùi Thị Xuân', N'Quận 2', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (66, N'1900 8198', N'Nhà Hàng Tiệc Cưới Minh Thùy', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Nguyễn Thị Thập', N'Quận 5', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (67, N'1900 8198', N'Nhà hàng Tiệc cưới Thanh Long', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 10', N'Đường Lê Hồng Phong', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (68, N'1900 8198', N'Nhà hàng tiệc cưới Phố Đôi', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 11', N'Đường Lê Văn Việt', N'Quận 9', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (69, N'1900 8198', N'
Cat Dang Palace', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 4', N'Đường Nguyễn Thị Thập', N'Quận 2', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (70, N'1900 8198', N'Nhà Hàng Tiệc Cưới Phước Xanh', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 3', N'Đường Bùi Thị Xuân', N'Quận 3', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (71, N'1900 8198', N'Nhà Hàng Hội Nghị Rose Palace', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Hội Nghị', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 4', N'Đường Lê Hồng Phong', N'Quận 1', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (72, N'1900 8198', N'Nhà Hàng Tiệc Cưới Thanh Tùng', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Lê Văn Việt', N'Quận 9', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (73, N'1900 8198', N'Nhà hàng tiệc cưới Saphire', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Nguyễn Phúc Nguyên', N'Quận 3', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (74, N'1900 8198', N'Nhà Hàng Món Huế', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Món Huế', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 9', N'Đường Lê Hồng Phong', N'Quận 2', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (75, N'1900 8198', N'Nhà Hàng Bên Sông', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Nguyễn Phúc Nguyên', N'Quận 5', N'Tp. Hồ Chí Minh', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (76, N'1900 8198', N'Nhà Hàng Sân Vườn Tư Trì', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Nhậu', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 8', N'Đường Lê Hồng Phong', N'Quận 2', N'Tp. Đà Nẵng', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (79, N'1900 8198', N'Nhà Hàng Sesan', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Lê Hồng Phong', N'Quận 3', N'Tp. Đà Nẵng', N'""        ', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (82, N'1900 8198', N'Nhà hàng Tiệc cưới Thanh Long', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 10', N'Đường Lê Hồng Phong', N'Quận 1', N'Tp. Đà Nẵng', N'""        ', 2)
SET IDENTITY_INSERT [dbo].[INFORMATION] OFF
SET IDENTITY_INSERT [dbo].[PARTNER] ON 

INSERT [dbo].[PARTNER] ([id], [name]) VALUES (1, N'Khách Sạn')
INSERT [dbo].[PARTNER] ([id], [name]) VALUES (2, N'Nhà Hàng')
SET IDENTITY_INSERT [dbo].[PARTNER] OFF
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (9, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (13, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (25, 5)
SET IDENTITY_INSERT [dbo].[ROOM] ON 

INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image]) VALUES (1, 5, N'5', N'5', N'5         ', 5, 5.0000, N'bac')
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image]) VALUES (2, 13, N'13', N'13', N'13        ', 13, 333.0000, N'abc')
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image]) VALUES (3, 9, N'9', N'9', N'9         ', 9, 9.0000, N'acb')
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image]) VALUES (4, 5, N'5', N'5', N'5         ', 5, 5.0000, N'abc')
SET IDENTITY_INSERT [dbo].[ROOM] OFF
SET IDENTITY_INSERT [dbo].[SERVICE] ON 

INSERT [dbo].[SERVICE] ([id], [name]) VALUES (2, N'Wifi')
INSERT [dbo].[SERVICE] ([id], [name]) VALUES (3, N'Spa')
INSERT [dbo].[SERVICE] ([id], [name]) VALUES (4, N'Pool')
INSERT [dbo].[SERVICE] ([id], [name]) VALUES (5, N'Yoga')
INSERT [dbo].[SERVICE] ([id], [name]) VALUES (6, N'Airport Transportation')
SET IDENTITY_INSERT [dbo].[SERVICE] OFF
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (4, N'ABC', N'123        ', N'123', N'123', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (5, N'111', N'111', N'111', N'111', 111)
SET IDENTITY_INSERT [dbo].[USERS] OFF
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKTING_ROOM] FOREIGN KEY([room])
REFERENCES [dbo].[ROOM] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKTING_ROOM]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKTING_USERS] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKTING_USERS]
GO
ALTER TABLE [dbo].[FOOD]  WITH CHECK ADD  CONSTRAINT [FK_FOOD_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[FOOD] CHECK CONSTRAINT [FK_FOOD_INFORMATION]
GO
ALTER TABLE [dbo].[IMAGE]  WITH CHECK ADD  CONSTRAINT [FK_IMAGE_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[IMAGE] CHECK CONSTRAINT [FK_IMAGE_INFORMATION]
GO
ALTER TABLE [dbo].[INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_INFORMATION_PARTNER1] FOREIGN KEY([partner])
REFERENCES [dbo].[PARTNER] ([id])
GO
ALTER TABLE [dbo].[INFORMATION] CHECK CONSTRAINT [FK_INFORMATION_PARTNER1]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FK_RATING_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FK_RATING_INFORMATION]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FK_RATING_USERS] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FK_RATING_USERS]
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD  CONSTRAINT [FK_ROOM_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[ROOM] CHECK CONSTRAINT [FK_ROOM_INFORMATION]
GO
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FK_SERVICE_INFOR_INFORMATION] FOREIGN KEY([information])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FK_SERVICE_INFOR_INFORMATION]
GO
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FK_SERVICE_INFOR_SERVICE] FOREIGN KEY([service])
REFERENCES [dbo].[SERVICE] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FK_SERVICE_INFOR_SERVICE]
GO
USE [master]
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  READ_WRITE 
GO
