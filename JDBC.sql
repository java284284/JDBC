USE [master]
GO
/****** Object:  Database [JDBCDemoDB]    Script Date: 2022/9/6 下午 05:58:59 ******/
CREATE DATABASE [JDBCDemoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JDBCDemoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\JDBCDemoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JDBCDemoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\JDBCDemoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JDBCDemoDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JDBCDemoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JDBCDemoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JDBCDemoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JDBCDemoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JDBCDemoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JDBCDemoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET RECOVERY FULL 
GO
ALTER DATABASE [JDBCDemoDB] SET  MULTI_USER 
GO
ALTER DATABASE [JDBCDemoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JDBCDemoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JDBCDemoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JDBCDemoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JDBCDemoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JDBCDemoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'JDBCDemoDB', N'ON'
GO
ALTER DATABASE [JDBCDemoDB] SET QUERY_STORE = OFF
GO
USE [JDBCDemoDB]
GO
/****** Object:  Table [dbo].[coupon]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userEmail] [varchar](100) NULL,
	[couponCode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eeit47_user]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eeit47_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[photo] [image] NULL,
	[photo_base64] [nvarchar](max) NULL,
	[VALUE] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gallery]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image_name] [nvarchar](50) NULL,
	[image_file] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](100) NULL,
	[phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productid] [int] NOT NULL,
	[productname] [nvarchar](50) NOT NULL,
	[productprice] [int] NULL,
	[productdate] [date] NULL,
	[remark] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[coupon] ON 

INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1, N'jerry@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (2, N'amy@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (3, N'onion@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (4, N'jerry@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (5, N'amy@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (6, N'onion@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1002, N'jerry@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1003, N'amy@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1004, N'onion@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1005, N'jerry@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1006, N'amy@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1007, N'onion@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1008, N'jerry@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1009, N'amy@gmail', N'9527777')
INSERT [dbo].[coupon] ([id], [userEmail], [couponCode]) VALUES (1010, N'onion@gmail', N'9527777')
SET IDENTITY_INSERT [dbo].[coupon] OFF
GO
INSERT [dbo].[product] ([productid], [productname], [productprice], [productdate], [remark]) VALUES (1001, N'notebook', 20, CAST(N'2021-05-31' AS Date), N'discount')
INSERT [dbo].[product] ([productid], [productname], [productprice], [productdate], [remark]) VALUES (1002, N'Tesla', 1600000, CAST(N'2020-11-28' AS Date), N'因疫情關係，不在 24H 保證內')
INSERT [dbo].[product] ([productid], [productname], [productprice], [productdate], [remark]) VALUES (1003, N'iPhone', 20000, CAST(N'2021-05-29' AS Date), N'因疫情關係，不在 24H 保證內')
INSERT [dbo].[product] ([productid], [productname], [productprice], [productdate], [remark]) VALUES (1004, N'mask', 20, CAST(N'2021-05-21' AS Date), N'一包')
GO
SET IDENTITY_INSERT [dbo].[profiles] ON 

INSERT [dbo].[profiles] ([id], [name], [address], [phone]) VALUES (1, N'賭聖', N'香港', N'666666')
SET IDENTITY_INSERT [dbo].[profiles] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [pwd]) VALUES (1, N'abc', N'123')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  StoredProcedure [dbo].[productProc]    Script Date: 2022/9/6 下午 05:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[productProc](@proId int, @proName varchar(50) out)
as
select @proName = productname from product where productid = @proId

GO
USE [master]
GO
ALTER DATABASE [JDBCDemoDB] SET  READ_WRITE 
GO
