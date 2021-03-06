USE [master]
GO
/****** Object:  Database [NHAHANGKHACHSAN]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  User [nguyentinh123]    Script Date: 13/04/2017 9:12:56 CH ******/
CREATE USER [nguyentinh123] FOR LOGIN [nguyentinh123] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nguyentinh]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  Table [dbo].[BOOKING]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datein] [date] NOT NULL,
	[room] [int] NOT NULL,
	[detail] [nvarchar](max) NULL,
	[quanlity] [int] NOT NULL,
	[dateout] [date] NOT NULL,
	[users] [int] NOT NULL,
 CONSTRAINT [PK_BOOKTING] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOD]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [nvarchar](1000) NULL,
	[foodname] [nvarchar](255) NOT NULL,
	[price] [money] NOT NULL,
	[infor] [int] NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK__FOOD__AE55585527CCD71F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IMAGE]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  Table [dbo].[INFORMATION]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFORMATION](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotline] [nvarchar](11) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[timeopen] [time](0) NULL,
	[timeclose] [time](0) NULL,
	[type] [nvarchar](100) NOT NULL,
	[intro] [nvarchar](1000) NOT NULL,
	[number] [nvarchar](10) NOT NULL,
	[ward] [nvarchar](100) NOT NULL,
	[street] [nvarchar](100) NOT NULL,
	[district] [nvarchar](100) NOT NULL,
	[province] [nvarchar](100) NOT NULL,
	[urlpartner] [nvarchar](500) NULL,
	[partner] [int] NULL,
 CONSTRAINT [PK_INFORMATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PARTNER]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  Table [dbo].[RATING]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  Table [dbo].[ROOM]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[infor] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[detail] [nvarchar](1000) NULL,
	[quanlity] [int] NULL,
	[maxpeople] [int] NOT NULL,
	[price] [money] NOT NULL,
	[image] [nvarchar](500) NULL,
	[district] [nvarchar](255) NULL,
	[hotline] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[province] [nvarchar](255) NULL,
	[street] [nvarchar](255) NULL,
	[ward] [nvarchar](255) NULL,
 CONSTRAINT [PK__ROOM__F3249856AFD3DED2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICE]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[icon] [nvarchar](500) NULL,
 CONSTRAINT [PK__SERVICE__25B469EADB46A87E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICEINFOR]    Script Date: 13/04/2017 9:12:56 CH ******/
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
/****** Object:  Table [dbo].[USERS]    Script Date: 13/04/2017 9:12:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BOOKING] ON 

INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (2, CAST(N'2017-03-03' AS Date), 8, N'1234412321', 1, CAST(N'2017-03-03' AS Date), 4)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (3, CAST(N'2017-03-03' AS Date), 9, N'1234412321', 1, CAST(N'2017-03-03' AS Date), 4)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (4, CAST(N'2017-12-15' AS Date), 8, N'1234412321', 1, CAST(N'2017-03-03' AS Date), 4)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (5, CAST(N'2017-07-04' AS Date), 73, N'11', 2, CAST(N'2017-07-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (18, CAST(N'2017-10-04' AS Date), 79, N'null0', 1, CAST(N'2017-10-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (19, CAST(N'2017-10-04' AS Date), 79, N'null0', 2, CAST(N'2017-10-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (20, CAST(N'2017-10-04' AS Date), 78, N'null0', 3, CAST(N'2017-10-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (21, CAST(N'2017-11-04' AS Date), 77, N'null0', 3, CAST(N'2017-11-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (22, CAST(N'2017-11-04' AS Date), 78, N'null0', 5, CAST(N'2017-11-04' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (31, CAST(N'2017-02-09' AS Date), 78, N'abc0', 1, CAST(N'2017-02-11' AS Date), 7)
INSERT [dbo].[BOOKING] ([id], [datein], [room], [detail], [quanlity], [dateout], [users]) VALUES (32, CAST(N'2017-02-09' AS Date), 78, N'abc0', 1, CAST(N'2017-02-11' AS Date), 7)
SET IDENTITY_INSERT [dbo].[BOOKING] OFF
SET IDENTITY_INSERT [dbo].[FOOD] ON 

INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (8, N'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại', N'Bánh canh', 50000.0000, 60, N'/image/restau/food/Banh-Canh-Noodle-Soup.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (10, N'Được làm từ gạo nếp cùng một số nguyên liệu khác, cho vào ống tre, giang, nứa và nướng chín trên lửa', N'Cơm lam', 40000.0000, 61, N'/image/restau/food/Comlam.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1011, N'Cơm tẻ chín tới ăn với gà luộc rưới nước dùng gà', N'Cơm gà Quảng Nam', 89000.0000, 62, N'/image/restau/food/comga.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1012, N'Cơm tấm có thể gồm cả sườn, bì, chả, trứng hoặc không gồm đầy đủ các món trên nhưng phải có nước mắm ngọt', N'Cơm tấm', 20000.0000, 63, N'/image/restau/food/Com_Chien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1014, N'Rau muống luộc qua hoặc không xào trên lửa to với dầu (mỡ) và tỏi đập dập', N'Rau muống xào tỏi', 60000.0000, 64, N'/image/restau/food/raumuon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1015, N'Các loại rau củ quả nấu với các loại thịt hay thủy sản khác nhau, trong đó dùng một gia vị chua để tạo vị chua thơm ngon cho nước canh', N'Riêu
Canh chua', 100000.0000, 65, N'/image/restau/food/Banh-Canh-Noodle-Soup.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1016, N'Thịt lợn (luôn phải có mỡ, nếu không phải thêm mỡ hoặc dầu ăn) vào nồi đun cho tới chín, cho thêm nước mắm để có vị mặn nhạt theo sở thích', N'Thịt kho', 600000.0000, 66, N'/image/restau/food/Thit-kho-tieu-1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1017, N'Bánh đa với nước dùng riêu cua', N'Bánh đa cua', 30000.0000, 67, N'/image/restau/food/BANH_DA_CUA_1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1019, N'Bún ăn với đậu rán và mắm tôm', N'Bún đậu mắm tôm', 80000.0000, 68, N'/image/restau/food/Bun_Dau.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1020, N'7 món nấu từ thịt bò:Gỏi bò, Bò chả đùm, Bò nhúng dấm, Bò nướng mỡ chài, Bò lá lốt, Bò nướng hành, Cháo Bò', N'Bò 7 món', 120000.0000, 69, N'/image/restau/food/bo_7_mon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1021, N'cá không cần sơ chế (không đánh vảy, cạo nhớt, mổ bụng, tẩm ướp gia vị) vừa bắt dưới sông lên, rửa sạch, được xuyên bằng một que dài từ miệng đến đuôi, vùi cá vào đống rơm khô rồi châm lửa đốt.', N'Cá lóc nướng trui', 160000.0000, 70, N'/image/restau/food/ca_loc.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1023, N'Làm từ thịt của cá thát lát, thường là lóc thịt, bỏ da và xương rồi giã hay xay nhuyễn thành chả viên, rồi đem xào, chiên hay làm lẩu.', N'Chả cá thát lát', 200000.0000, 71, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1024, N'Món nộm sử dụng nguyên liệu chính là sứa đã được sơ chế, trộn chua ngọt với các loại rau, thịt động vật và gia vị.', N'Nộm sứa', 120000.0000, 72, N'/image/restau/food/suanom.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1026, N'Món cá tẩm ướp, nướng trên than rồi rán lại trong chảo mỡ, do gia đình họ Đoàn ở phố Chả Cá trong khu phố cổ Hà Nội giữ bí quyết kinh doanh và đặt tên', N'Chả cá Lã Vọng', 150000.0000, 73, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1027, N'Bông điên điển là loại rau đặc trưng Nam Bộ được dùng làm dưa chua, nấu canh, ăn lẩu hay làm gỏi trộn thịt gà.', N'Bông điên điển', 90000.0000, 74, N'/image/restau/food/goibongdiendien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1028, N'Chè đậu (đỗ) xanh nấu với đường và bột năng (hoặc bột sắn dây), có thể cho thêm dừa nạo và nước cốt dừa.', N'Chè đậu xanh', 20000.0000, 75, N'/image/restau/food/chedauxanh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1032, N'Loại chả đặc sản của Hạ Long được làm rất cầu kỳ từ mực giã nhuyễn, thì là, hành hoa... nặn thành miếng và chiên ngập dầu', N'Chả mực', 200000.0000, 76, N'/image/restau/food/chamuc.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1033, N'Thịt cá nhệch sống được bóp thính gạo cùng một số loại gia vị rồi được dùng với nhiều loại rau ăn kèm và nước chấm gỏi.', N'Gỏi nhệch', 220000.0000, 79, N'/image/restau/food/goinhenh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1034, N'Chè khoai lang với đậu xanh cà và nước cốt dừa.', N'Chè bà ba', 20000.0000, 82, N'/image/restau/food/chebaba.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1035, N'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại', N'Bánh canh', 50000.0000, 82, N'/image/restau/food/Banh-Canh-Noodle-Soup.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1036, N'Được làm từ gạo nếp cùng một số nguyên liệu khác, cho vào ống tre, giang, nứa và nướng chín trên lửa', N'Cơm lam', 40000.0000, 79, N'/image/restau/food/Comlam.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1037, N'Cơm tẻ chín tới ăn với gà luộc rưới nước dùng gà', N'Cơm gà Quảng Nam', 89000.0000, 76, N'/image/restau/food/comga.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1038, N'Cơm tấm có thể gồm cả sườn, bì, chả, trứng hoặc không gồm đầy đủ các món trên nhưng phải có nước mắm ngọt', N'Cơm tấm', 20000.0000, 75, N'/image/restau/food/Com_Chien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1039, N'Rau muống luộc qua hoặc không xào trên lửa to với dầu (mỡ) và tỏi đập dập', N'Rau muống xào tỏi', 60000.0000, 74, N'/image/restau/food/raumuon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1042, N'Thịt lợn (luôn phải có mỡ, nếu không phải thêm mỡ hoặc dầu ăn) vào nồi đun cho tới chín, cho thêm nước mắm để có vị mặn nhạt theo sở thích', N'Thịt kho', 600000.0000, 73, N'/image/restau/food/Thit-kho-tieu-1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1043, N'Bánh đa với nước dùng riêu cua', N'Bánh đa cua', 30000.0000, 72, N'/image/restau/food/BANH_DA_CUA_1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1044, N'Bún ăn với đậu rán và mắm tôm', N'Bún đậu mắm tôm', 80000.0000, 71, N'/image/restau/food/Bun_Dau.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1045, N'7 món nấu từ thịt bò:Gỏi bò, Bò chả đùm, Bò nhúng dấm, Bò nướng mỡ chài, Bò lá lốt, Bò nướng hành, Cháo Bò', N'Bò 7 món', 120000.0000, 70, N'/image/restau/food/bo_7_mon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1046, N'cá không cần sơ chế (không đánh vảy, cạo nhớt, mổ bụng, tẩm ướp gia vị) vừa bắt dưới sông lên, rửa sạch, được xuyên bằng một que dài từ miệng đến đuôi, vùi cá vào đống rơm khô rồi châm lửa đốt.', N'Cá lóc nướng trui', 160000.0000, 69, N'/image/restau/food/ca_loc.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1047, N'Làm từ thịt của cá thát lát, thường là lóc thịt, bỏ da và xương rồi giã hay xay nhuyễn thành chả viên, rồi đem xào, chiên hay làm lẩu.', N'Chả cá thát lát', 200000.0000, 68, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1048, N'Món nộm sử dụng nguyên liệu chính là sứa đã được sơ chế, trộn chua ngọt với các loại rau, thịt động vật và gia vị.', N'Nộm sứa', 120000.0000, 67, N'/image/restau/food/suanom.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1049, N'Món cá tẩm ướp, nướng trên than rồi rán lại trong chảo mỡ, do gia đình họ Đoàn ở phố Chả Cá trong khu phố cổ Hà Nội giữ bí quyết kinh doanh và đặt tên', N'Chả cá Lã Vọng', 150000.0000, 66, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1050, N'Bông điên điển là loại rau đặc trưng Nam Bộ được dùng làm dưa chua, nấu canh, ăn lẩu hay làm gỏi trộn thịt gà.', N'Bông điên điển', 90000.0000, 65, N'/image/restau/food/goibongdiendien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1051, N'Chè đậu (đỗ) xanh nấu với đường và bột năng (hoặc bột sắn dây), có thể cho thêm dừa nạo và nước cốt dừa.', N'Chè đậu xanh', 20000.0000, 64, N'/image/restau/food/chedauxanh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1052, N'Loại chả đặc sản của Hạ Long được làm rất cầu kỳ từ mực giã nhuyễn, thì là, hành hoa... nặn thành miếng và chiên ngập dầu', N'Chả mực', 200000.0000, 63, N'/image/restau/food/chamuc.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1053, N'Thịt cá nhệch sống được bóp thính gạo cùng một số loại gia vị rồi được dùng với nhiều loại rau ăn kèm và nước chấm gỏi.', N'Gỏi nhệch', 220000.0000, 62, N'/image/restau/food/goinhenh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1054, N'Chè khoai lang với đậu xanh cà và nước cốt dừa.', N'Chè bà ba', 20000.0000, 61, N'/image/restau/food/chebaba.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1055, N'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại', N'Bánh canh', 50000.0000, 63, N'/image/restau/food/Banh-Canh-Noodle-Soup.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1056, N'Được làm từ gạo nếp cùng một số nguyên liệu khác, cho vào ống tre, giang, nứa và nướng chín trên lửa', N'Cơm lam', 40000.0000, 64, N'/image/restau/food/Comlam.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1057, N'Cơm tẻ chín tới ăn với gà luộc rưới nước dùng gà', N'Cơm gà Quảng Nam', 89000.0000, 67, N'/image/restau/food/comga.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1058, N'Cơm tấm có thể gồm cả sườn, bì, chả, trứng hoặc không gồm đầy đủ các món trên nhưng phải có nước mắm ngọt', N'Cơm tấm', 20000.0000, 79, N'/image/restau/food/Com_Chien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1059, N'Rau muống luộc qua hoặc không xào trên lửa to với dầu (mỡ) và tỏi đập dập', N'Rau muống xào tỏi', 60000.0000, 65, N'/image/restau/food/raumuon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1062, N'Thịt lợn (luôn phải có mỡ, nếu không phải thêm mỡ hoặc dầu ăn) vào nồi đun cho tới chín, cho thêm nước mắm để có vị mặn nhạt theo sở thích', N'Thịt kho', 600000.0000, 71, N'/image/restau/food/Thit-kho-tieu-1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1063, N'Bánh đa với nước dùng riêu cua', N'Bánh đa cua', 30000.0000, 76, N'/image/restau/food/BANH_DA_CUA_1.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1064, N'Bún ăn với đậu rán và mắm tôm', N'Bún đậu mắm tôm', 80000.0000, 75, N'/image/restau/food/Bun_Dau.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1065, N'7 món nấu từ thịt bò:Gỏi bò, Bò chả đùm, Bò nhúng dấm, Bò nướng mỡ chài, Bò lá lốt, Bò nướng hành, Cháo Bò', N'Bò 7 món', 120000.0000, 67, N'/image/restau/food/bo_7_mon.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1066, N'cá không cần sơ chế (không đánh vảy, cạo nhớt, mổ bụng, tẩm ướp gia vị) vừa bắt dưới sông lên, rửa sạch, được xuyên bằng một que dài từ miệng đến đuôi, vùi cá vào đống rơm khô rồi châm lửa đốt.', N'Cá lóc nướng trui', 160000.0000, 68, N'/image/restau/food/ca_loc.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1067, N'Làm từ thịt của cá thát lát, thường là lóc thịt, bỏ da và xương rồi giã hay xay nhuyễn thành chả viên, rồi đem xào, chiên hay làm lẩu.', N'Chả cá thát lát', 200000.0000, 69, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1068, N'Món nộm sử dụng nguyên liệu chính là sứa đã được sơ chế, trộn chua ngọt với các loại rau, thịt động vật và gia vị.', N'Nộm sứa', 120000.0000, 70, N'/image/restau/food/suanom.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1069, N'Món cá tẩm ướp, nướng trên than rồi rán lại trong chảo mỡ, do gia đình họ Đoàn ở phố Chả Cá trong khu phố cổ Hà Nội giữ bí quyết kinh doanh và đặt tên', N'Chả cá Lã Vọng', 150000.0000, 79, N'/image/restau/food/chaca.JPG')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1070, N'Bông điên điển là loại rau đặc trưng Nam Bộ được dùng làm dưa chua, nấu canh, ăn lẩu hay làm gỏi trộn thịt gà.', N'Bông điên điển', 90000.0000, 82, N'/image/restau/food/goibongdiendien.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1071, N'Chè đậu (đỗ) xanh nấu với đường và bột năng (hoặc bột sắn dây), có thể cho thêm dừa nạo và nước cốt dừa.', N'Chè đậu xanh', 20000.0000, 71, N'/image/restau/food/chedauxanh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1072, N'Loại chả đặc sản của Hạ Long được làm rất cầu kỳ từ mực giã nhuyễn, thì là, hành hoa... nặn thành miếng và chiên ngập dầu', N'Chả mực', 200000.0000, 63, N'/image/restau/food/chamuc.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1073, N'Thịt cá nhệch sống được bóp thính gạo cùng một số loại gia vị rồi được dùng với nhiều loại rau ăn kèm và nước chấm gỏi.', N'Gỏi nhệch', 220000.0000, 62, N'/image/restau/food/goinhenh.jpg')
INSERT [dbo].[FOOD] ([id], [detail], [foodname], [price], [infor], [image]) VALUES (1074, N'Chè khoai lang với đậu xanh cà và nước cốt dừa.', N'Chè bà ba', 20000.0000, 67, N'/image/restau/food/chebaba.jpg')
SET IDENTITY_INSERT [dbo].[FOOD] OFF
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'/image/1313545905-001.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'/image/201533016165813.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (5, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'/image/70132d2ff0fda841abb5f0dde83efe5f.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (9, N'/image/ben-trong-khach-san-7-sao-xa-xi-nhat-the-gioi-o-dubai.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'/image/ben-trong-khach-san-7-sao-xa-xi-nhat-the-gioi-o-dubai.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'/image/images.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (13, N'/image/Khach-san-3-sao-Danang-Petro.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (15, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (15, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (25, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (25, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (38, N'/image/ben-trong-khach-san-7-sao-xa-xi-nhat-the-gioi-o-dubai.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (38, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (39, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (39, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (40, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (40, N'/image/xin-giay-chung-nhan-an-ninh-trat-tu-cho-khach-san-nha-nghi.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (41, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (41, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (42, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (42, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (43, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (43, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (44, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (44, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (45, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (45, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (46, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (46, N'/image/xin-giay-chung-nhan-an-ninh-trat-tu-cho-khach-san-nha-nghi.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (47, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (47, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (48, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (48, N'/image/xin-giay-chung-nhan-an-ninh-trat-tu-cho-khach-san-nha-nghi.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (49, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (49, N'/image/skytour_khach_san.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (50, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (50, N'/image/hotel.gif')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (60, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (60, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (61, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (61, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (62, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (62, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (62, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (63, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (63, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (63, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (64, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (64, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (65, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (65, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (66, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (66, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (67, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (67, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (68, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (68, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (69, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (69, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (70, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (70, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (71, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (71, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (72, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (72, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (73, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (73, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (74, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (74, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (75, N'/image/restau/hvg_635931211077205337.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (75, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (76, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (76, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (79, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (79, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (82, N'/image/restau/download.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (82, N'/image/restau/image.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (82, N'/image/restau/img20160129173039454.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (97, N'/image/29221143343_e11e599ac1_o.jpg')
INSERT [dbo].[IMAGE] ([infor], [imageurl]) VALUES (97, N'/image/skytour_khach_san.jpg')
SET IDENTITY_INSERT [dbo].[INFORMATION] ON 

INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (5, N'01654116641', N'Khách sạn City Star Luxury', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'13', N'Phường Bến Nghé', N'Đường Bùi Thị Xuân', N'Quận 1', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (9, N'01693530286', N'Khách sạn Hương Mai', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'206', N'Phường 9', N'Đường Nguyễn Phúc Nguyên', N'Quận 3', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (13, N'01654116641', N'Khách sạn Vina Terrace', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 3 sao', N'Khách sạn sạch sẽ, sang trọng, gần chợ Bến Thành', N'33', N'Phường Bến Thành', N'Đường Lê Anh Xuân', N'Quận 1', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (15, N'0909226847', N'Khách sạn Dragon Sea', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 3 sao', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng.', N'82', N'Biển Mỹ Khê', N'Đường Hà Bồng', N'Quận Sơn Trà', N'Đà Nẵng', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (25, N'01654012356', N'Khách sạn Sea Garden', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'123', N'Phường Phước Ninh', N'Đường Lê Văn Quý', N'Quận Hải Châu', N'Đà Nẵng', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (38, N'01654012356', N'Khách sạn Diamond Sea', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'32', N'Phường 4', N'Đường Nguyễn Trãi', N'Quận 5', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (39, N'01654012356', N'Khách sạn Le House Boutique', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 5', N'Đường Võ Văn Kiệt', N'Quận 6', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (40, N'01654012356', N'Khách sạn Bắc Cường', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 6', N'Đường Võ Văn Tần', N'Quận 3', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (41, N'01654012356', N'Khách sạn Mango Banana', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 6', N'Đường Man Thiện', N'Quận 9', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (42, N'01654012356', N'Khách sạn Brown Bean 2 ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'345', N'Phường 7', N'Đường Nguyễn Thị Thập', N'Quận 7', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (43, N'01654012356', N'Khách sạn Golden Crown ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'32', N'Phường 8', N'Đường Nguyễn Văn Linh', N'Quận 7', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (44, N'01654012356', N'Khách sạn Phụng Hoàng Gold ', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 10', N'Đường Lê Văn Việt', N'Quận 9', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (45, N'01654012356', N'Khách sạn Mifuki Inn plus', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 11', N'Đường Lê Hồng Phong', N'Quận 5', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (46, N'01654012356', N'Khách sạn Bông Sen Sài Gòn', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 2', N'Đường Lý Thường kiệt', N'Quận 11', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (47, N'01654012356', N'Khách sạn Thiên Xuân', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'123', N'Phường 5', N'Đường Nguyễn Ảnh Thủ', N'Quận 12', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (48, N'01654012356', N'Khách sạn Phúc Khánh', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 2 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'43', N'Phường 6', N'Đường Phạm Văn Đồng', N'Quận Bình Thạnh', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (49, N'01654012356', N'Khách sạn A&EM Corner Sai Gon', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 1 sao', N'Giá tốt. Vị trí trung tâm. Ăn sáng ngon.', N'2', N'Phường 6', N'Đường Lê Văn Sỹ', N'Quận Tân Bình', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (50, N'01654012356', N'Khách sạn Nikko Sài Gòn', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 4 sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'345', N'Phường 7', N'Đường Tân Kỳ Tân Quý', N'Quận Tân Phú', N'TP Hồ Chí Minh', N'""', 1)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (60, N'01693530286', N'Nhà Hàng Thiết Mộc Lan', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường Linh Trung', N'Đường Võ Văn Ngân', N'Quận Thủ Đức', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (61, N'01654116641', N'Nhà Hàng Sân Vườn Tư Trì', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Nhậu', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 8', N'Đường Mai Chí Thọ', N'Quận 2', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (62, N'01654116641', N'Nhà Hàng Balong plus', CAST(N'10:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Hàm Nghi', N'Quận 1', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (63, N'01699889480', N'Nhà Hàng Ajido plus', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Hội Nghị', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 6', N'Đường Thống Nhất', N'Quận Thủ Đức', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (64, N'01693530286', N'Nhà Hàng Sesan plus', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Trần Quốc Thảo', N'Quận 3', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (65, N'01699889480', N'Nhà Hàng Hoa viên Ao Đôi', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Trần Nảo', N'Quận 2', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (66, N'01654116641', N'Nhà Hàng Tiệc Cưới Minh Thùy', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Lê Hồng Phong', N'Quận 5', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (67, N'01693530286', N'Nhà Hàng Tiệc cưới Thanh Long', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 10', N'Đường Nguyễn Huệ', N'Quận 1', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (68, N'01699889480', N'Nhà Hàng tiệc cưới Phố Đôi', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 11', N'Đường Đình Phong Phú', N'Quận 9', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (69, N'01693530286', N'Nhà Hàng Cat Dang Palace', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 4', N'Đường Lương Định Của', N'Quận 2', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (70, N'01699889480', N'Nhà Hàng Tiệc Cưới Phước Xanh', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 3', N'Đường Nam Kỳ Khởi Nghĩa', N'Quận 3', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (71, N'01654116641', N'Nhà Hàng Hội Nghị Rose Palace', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Hội Nghị', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 4', N'Đường Nguyễn Du', N'Quận 1', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (72, N'01654116641', N'Nhà Hàng Tiệc Cưới Thanh Tùng', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 7', N'Đường Lê Văn Việt', N'Quận 9', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (73, N'01693530286', N'Nhà hàng tiệc cưới Saphire', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Hoàng Sa', N'Quận 3', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (74, N'01699889480', N'Nhà Hàng Món Huế Mộng Mơ', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 9', N'Đường Trần Lựu', N'Quận 2', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (75, N'01654116641', N'Nhà Hàng Bên Sông plus', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Quán Ăn', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Lê Hồng Phong', N'Quận 5', N'TP Hồ Chí Minh', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (76, N'01699889480', N'Nhà Hàng Sân Vườn Tư Trì', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Quán Nhậu', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 8', N'Đường Nguyễn Duy Trinh', N'Quận 2', N'Đà Nẵng', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (79, N'01693530286', N'Nhà Hàng Sesan plus', CAST(N'09:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 2', N'Đường Trường Sa', N'Quận 3', N'Đà Nẵng', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (82, N'01693530286', N'Nhà hàng Tiệc cưới Thanh Long', CAST(N'09:00:00' AS Time), CAST(N'21:00:00' AS Time), N'Tiệc Cưới', N'Sang trọng, vườn cây thoáng mát. Chấp nhận Credit Card (VISA, MASTER CARD), nhân viên giao tiếp được nhiều ngôn ngữ (Anh, Hoa...) xuất hóa đơn tại chỗ nhanh', N'13', N'Phường 10', N'Đường Lê Lai', N'Quận 1', N'Đà Nẵng', N'""', 2)
INSERT [dbo].[INFORMATION] ([id], [hotline], [name], [timeopen], [timeclose], [type], [intro], [number], [ward], [street], [district], [province], [urlpartner], [partner]) VALUES (97, N'01654116641', N'Khách sạn Sky PlusPlus', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'Khách sạn 5 Sao', N'Cảm thấy hài lòng khi ở đây! Sạch sẽ và thoải mái', N'50', N'Phường 3', N'Đường Huyền Trân Công Chúa', N'Quận 1', N'TP Hồ Chí Minh', N'http://skyplushotelservice.somee.com/WebService.asmx?wsdl                                           ', 1)
SET IDENTITY_INSERT [dbo].[INFORMATION] OFF
SET IDENTITY_INSERT [dbo].[PARTNER] ON 

INSERT [dbo].[PARTNER] ([id], [name]) VALUES (1, N'Khách Sạn')
INSERT [dbo].[PARTNER] ([id], [name]) VALUES (2, N'Nhà Hàng')
SET IDENTITY_INSERT [dbo].[PARTNER] OFF
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (5, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (9, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (13, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (15, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (25, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (25, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (38, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (39, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (40, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (42, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (43, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (44, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (46, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (49, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (50, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (60, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (60, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (60, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (61, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (62, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (62, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (62, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (63, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (63, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (64, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (66, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (67, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (67, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (69, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (70, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (71, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (72, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (73, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (74, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (74, 6)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (75, 8)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (76, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (79, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (82, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (97, 4)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (97, 5)
INSERT [dbo].[RATING] ([infor], [users]) VALUES (97, 6)
SET IDENTITY_INSERT [dbo].[ROOM] ON 

INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (7, 25, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (8, 25, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (9, 39, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (10, 40, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (11, 40, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (12, 41, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (13, 45, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (14, 46, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (15, 47, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (16, 47, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (17, 45, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (18, 45, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (19, 48, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (20, 47, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (21, 41, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (22, 41, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 120000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (42, 5, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (43, 9, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (44, 13, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (45, 13, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (48, 25, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (49, 25, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (50, 39, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (51, 38, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (52, 39, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (53, 25, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (54, 25, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (55, 39, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (56, 40, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (57, 41, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (58, 25, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (59, 25, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (60, 39, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (61, 40, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (62, 42, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (63, 43, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (64, 44, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (65, 45, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (66, 46, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (67, 47, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (68, 48, N'Phòng đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (69, 49, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (70, 50, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (71, 47, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (72, 40, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (73, 15, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (74, 47, N'Phòng đơn', N'Khách sạn đẹp gần biển. Giá phòng rẻ. Rất thân thiện với khách hàng', 5, 2, 500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (75, 40, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 1500000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (76, 15, N'Phòng đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (77, 97, N'Phòng Đơn', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 1, 200000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (78, 97, N'Phòng Đôi', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 2, 300000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ROOM] ([id], [infor], [type], [detail], [quanlity], [maxpeople], [price], [image], [district], [hotline], [name], [number], [province], [street], [ward]) VALUES (79, 97, N'Phòng Tập Thể', N'Phòng Dành Cho Gia Đình, 2 Giường Đôi', 5, 4, 400000.0000, N'/image/phong_khach_san.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ROOM] OFF
SET IDENTITY_INSERT [dbo].[SERVICE] ON 

INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (2, N'Wifi', N'/image/icon/wifi-icon-800px.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (3, N'Spa', N'/image/icon/spa.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (4, N'Hồ Bơi', N'/image/icon/swimming-icon-png-3753.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (5, N'Yoga', N'/image/icon/yoga.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (6, N'Bãi đỗ xe hơi', N'/image/icon/carparking.jpeg')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (17, N'Miễn phí bữa sáng', N'/image/icon/breakfast2-512.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (18, N'Đưa rước đến san bay', N'/image/icon/ncEKgjLcA.jpeg')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (19, N'Miễn phí nước uống', N'/image/icon/water-services-icon-27546.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (20, N'Máy tắm nước nóng', N'/image/icon/Hot shower.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (21, N'Máy lạnh', N'/image/icon/air-condition-icon-15190.png')
INSERT [dbo].[SERVICE] ([id], [name], [icon]) VALUES (22, N'Giặt ủi', N'/image/icon/washing-machine_318-63182.jpg')
SET IDENTITY_INSERT [dbo].[SERVICE] OFF
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 2)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 4)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 5)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 17)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 18)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (25, 21)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (39, 2)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (39, 5)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (39, 6)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (39, 17)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (39, 22)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (42, 2)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (42, 3)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (42, 19)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 2)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 6)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 18)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 19)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 20)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (50, 22)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (97, 2)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (97, 4)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (97, 5)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (97, 17)
INSERT [dbo].[SERVICEINFOR] ([information], [service]) VALUES (97, 22)
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (4, N'Nguyễn Văn Tính', N'01654116641', N'nguyentinh0410@gmail.com', N'73c18c59a39b18382081ec00bb456d43', 20)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (5, N'Nguyễn Nhựt Trường', N'01654116641', N'nnt@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 13)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (6, N'Trần Thục Uyên', N'01654116641', N'thucuyen@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 20)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (7, N'tâm thy', N'01693530286', N'tamthy@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 25)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (8, N'Nguyễn Võ Thùy Trang', N'01654116641', N'thuytrang@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 20)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1013, N'nvtt', N'01111111111', N'nguyenit95@gmail.com', N'73c18c59a39b18382081ec00bb456d43', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1021, N'nguyen van tinh', N'01654116641', N'nguyenvantinh@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1032, N'Tinh Nguyen', N'01654116641', N'NguyenVanTinhDepTRai@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1045, N'Trang Nguyen Vo Thuy', N'01654116641', N'n13dccn204@student.ptithcm.edu.vn', N'e10adc3949ba59abbe56e057f20f883e', 10)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1046, N'Shino Akuma', N'01654116641', N'kyoyuki05@gmail.com', N'73c18c59a39b18382081ec00bb456d43', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1047, N'Tráº§n Thá»¥c UyÃªn', N'01654116641', N'thucuyen.tran.0508@gmail.com', N'73c18c59a39b18382081ec00bb456d43', 1)
INSERT [dbo].[USERS] ([id], [fullname], [phone], [email], [password], [point]) VALUES (1049, N'Nguyễn Nguyễn', N'01654116641', N'nguyenguyen2635@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', 10)
SET IDENTITY_INSERT [dbo].[USERS] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_USERS]    Script Date: 13/04/2017 9:12:56 CH ******/
ALTER TABLE [dbo].[USERS] ADD  CONSTRAINT [IX_USERS] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKING_USERS] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKING_USERS]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_BOOKTING_ROOM] FOREIGN KEY([room])
REFERENCES [dbo].[ROOM] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_BOOKTING_ROOM]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK9h0cigmxhunno57dcej9sgfrg] FOREIGN KEY([room])
REFERENCES [dbo].[ROOM] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK9h0cigmxhunno57dcej9sgfrg]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FKkmjwfrf5gwl4ud99w522p39ir] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FKkmjwfrf5gwl4ud99w522p39ir]
GO
ALTER TABLE [dbo].[FOOD]  WITH CHECK ADD  CONSTRAINT [FK_FOOD_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[FOOD] CHECK CONSTRAINT [FK_FOOD_INFORMATION]
GO
ALTER TABLE [dbo].[FOOD]  WITH CHECK ADD  CONSTRAINT [FKl8k9ppwph7lrje1gad77xlo6c] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[FOOD] CHECK CONSTRAINT [FKl8k9ppwph7lrje1gad77xlo6c]
GO
ALTER TABLE [dbo].[IMAGE]  WITH CHECK ADD  CONSTRAINT [FK_IMAGE_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[IMAGE] CHECK CONSTRAINT [FK_IMAGE_INFORMATION]
GO
ALTER TABLE [dbo].[IMAGE]  WITH CHECK ADD  CONSTRAINT [FKcl6ve8e0j6vb08kc9ev4vaalx] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[IMAGE] CHECK CONSTRAINT [FKcl6ve8e0j6vb08kc9ev4vaalx]
GO
ALTER TABLE [dbo].[INFORMATION]  WITH CHECK ADD  CONSTRAINT [FK_INFORMATION_PARTNER1] FOREIGN KEY([partner])
REFERENCES [dbo].[PARTNER] ([id])
GO
ALTER TABLE [dbo].[INFORMATION] CHECK CONSTRAINT [FK_INFORMATION_PARTNER1]
GO
ALTER TABLE [dbo].[INFORMATION]  WITH CHECK ADD  CONSTRAINT [FKn7b2vhfqfa54xcdduwdrww7fk] FOREIGN KEY([partner])
REFERENCES [dbo].[PARTNER] ([id])
GO
ALTER TABLE [dbo].[INFORMATION] CHECK CONSTRAINT [FKn7b2vhfqfa54xcdduwdrww7fk]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FK_RATING_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FK_RATING_INFORMATION]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FKn0gilu3q612it65jqnatm3d36] FOREIGN KEY([users])
REFERENCES [dbo].[USERS] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FKn0gilu3q612it65jqnatm3d36]
GO
ALTER TABLE [dbo].[RATING]  WITH CHECK ADD  CONSTRAINT [FKons69x1nodq42ev7r4qhe76sw] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[RATING] CHECK CONSTRAINT [FKons69x1nodq42ev7r4qhe76sw]
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD  CONSTRAINT [FK_ROOM_INFORMATION] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[ROOM] CHECK CONSTRAINT [FK_ROOM_INFORMATION]
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD  CONSTRAINT [FK2agb6b3ww2msd8f0hx3hn4q0q] FOREIGN KEY([infor])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[ROOM] CHECK CONSTRAINT [FK2agb6b3ww2msd8f0hx3hn4q0q]
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
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FK5hi9whxsrjpv8cw9gugd2v2cj] FOREIGN KEY([service])
REFERENCES [dbo].[SERVICE] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FK5hi9whxsrjpv8cw9gugd2v2cj]
GO
ALTER TABLE [dbo].[SERVICEINFOR]  WITH CHECK ADD  CONSTRAINT [FKoq7kgmw31gjgacbkshwgmvg0w] FOREIGN KEY([information])
REFERENCES [dbo].[INFORMATION] ([id])
GO
ALTER TABLE [dbo].[SERVICEINFOR] CHECK CONSTRAINT [FKoq7kgmw31gjgacbkshwgmvg0w]
GO
USE [master]
GO
ALTER DATABASE [NHAHANGKHACHSAN] SET  READ_WRITE 
GO
