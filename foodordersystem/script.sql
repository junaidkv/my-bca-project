USE [master]
GO
/****** Object:  Database [foodordersystem]    Script Date: 27-04-2018 13:09:35 ******/
CREATE DATABASE [foodordersystem] ON  PRIMARY 
( NAME = N'foodordersystem', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\foodordersystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'foodordersystem_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\foodordersystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [foodordersystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [foodordersystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [foodordersystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [foodordersystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [foodordersystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [foodordersystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [foodordersystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [foodordersystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [foodordersystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [foodordersystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [foodordersystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [foodordersystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [foodordersystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [foodordersystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [foodordersystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [foodordersystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [foodordersystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [foodordersystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [foodordersystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [foodordersystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [foodordersystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [foodordersystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [foodordersystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [foodordersystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [foodordersystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [foodordersystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [foodordersystem] SET  MULTI_USER 
GO
ALTER DATABASE [foodordersystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [foodordersystem] SET DB_CHAINING OFF 
GO
USE [foodordersystem]
GO
/****** Object:  Table [dbo].[assign]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assign](
	[assignid] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NULL,
	[mdid] [int] NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_assign] PRIMARY KEY CLUSTERED 
(
	[assignid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cartdetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cartdetails](
	[cartid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[status] [int] NULL,
	[lid] [int] NULL,
	[loid] [int] NULL,
 CONSTRAINT [PK_cartdetails] PRIMARY KEY CLUSTERED 
(
	[cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[catagory]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[catagory](
	[ctid] [int] IDENTITY(1,1) NOT NULL,
	[catagoryname] [varchar](max) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_catagory] PRIMARY KEY CLUSTERED 
(
	[ctid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerdetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerdetails](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[emailid] [varchar](max) NULL,
	[phone] [varchar](50) NULL,
	[photo] [varchar](max) NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_customerdetails] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deliverydetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deliverydetails](
	[deliveryid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[pincode] [varchar](max) NULL,
	[phone] [varchar](max) NULL,
	[emailid] [varchar](max) NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_deliverydetails] PRIMARY KEY CLUSTERED 
(
	[deliveryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deliveryplace]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deliveryplace](
	[dpid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[meallid] [int] NULL,
 CONSTRAINT [PK_deliveryplace] PRIMARY KEY CLUSTERED 
(
	[dpid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[loginid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[role] [varchar](max) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[loginid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[managerdetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[managerdetails](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[restaurantname] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[phone] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[emailid] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_managerdetails] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mealdeliverydetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mealdeliverydetails](
	[mdid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[mlid] [int] NULL,
	[address] [varchar](max) NULL,
	[phone] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[emailid] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_mealdeliverydetails] PRIMARY KEY CLUSTERED 
(
	[mdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderdetails](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[totalprice] [varchar](50) NULL,
	[status] [varchar](max) NULL,
	[lid] [int] NULL,
	[deliveryid] [int] NULL,
	[deliverydate] [date] NULL,
 CONSTRAINT [PK_orderdetails] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetails2]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails2](
	[orid] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NULL,
	[mid] [int] NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_orderdetails2] PRIMARY KEY CLUSTERED 
(
	[orid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productdetails]    Script Date: 27-04-2018 13:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productdetails](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[price] [float] NULL,
	[category] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_productdetails] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[assign]  WITH CHECK ADD  CONSTRAINT [FK_assing_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[assign] CHECK CONSTRAINT [FK_assing_login]
GO
ALTER TABLE [dbo].[assign]  WITH CHECK ADD  CONSTRAINT [FK_assing_mealdeliverydetails] FOREIGN KEY([mdid])
REFERENCES [dbo].[mealdeliverydetails] ([mdid])
GO
ALTER TABLE [dbo].[assign] CHECK CONSTRAINT [FK_assing_mealdeliverydetails]
GO
ALTER TABLE [dbo].[assign]  WITH CHECK ADD  CONSTRAINT [FK_assing_productdetails] FOREIGN KEY([oid])
REFERENCES [dbo].[orderdetails] ([oid])
GO
ALTER TABLE [dbo].[assign] CHECK CONSTRAINT [FK_assing_productdetails]
GO
ALTER TABLE [dbo].[cartdetails]  WITH CHECK ADD  CONSTRAINT [FK_cartdetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[cartdetails] CHECK CONSTRAINT [FK_cartdetails_login]
GO
ALTER TABLE [dbo].[customerdetails]  WITH CHECK ADD  CONSTRAINT [FK_customerdetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[customerdetails] CHECK CONSTRAINT [FK_customerdetails_login]
GO
ALTER TABLE [dbo].[deliverydetails]  WITH CHECK ADD  CONSTRAINT [FK_deliverydetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[deliverydetails] CHECK CONSTRAINT [FK_deliverydetails_login]
GO
ALTER TABLE [dbo].[managerdetails]  WITH CHECK ADD  CONSTRAINT [FK_managerdetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[managerdetails] CHECK CONSTRAINT [FK_managerdetails_login]
GO
ALTER TABLE [dbo].[mealdeliverydetails]  WITH CHECK ADD  CONSTRAINT [FK_mealdeliverydetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[mealdeliverydetails] CHECK CONSTRAINT [FK_mealdeliverydetails_login]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FK_orderdetails_login]
GO
ALTER TABLE [dbo].[orderdetails2]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails2_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[orderdetails2] CHECK CONSTRAINT [FK_orderdetails2_login]
GO
ALTER TABLE [dbo].[orderdetails2]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails2_managerdetails] FOREIGN KEY([mid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[orderdetails2] CHECK CONSTRAINT [FK_orderdetails2_managerdetails]
GO
ALTER TABLE [dbo].[orderdetails2]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails2_orderdetails] FOREIGN KEY([oid])
REFERENCES [dbo].[orderdetails] ([oid])
GO
ALTER TABLE [dbo].[orderdetails2] CHECK CONSTRAINT [FK_orderdetails2_orderdetails]
GO
ALTER TABLE [dbo].[orderdetails2]  WITH CHECK ADD  CONSTRAINT [FK_orderdetails2_productdetails] FOREIGN KEY([pid])
REFERENCES [dbo].[productdetails] ([pid])
GO
ALTER TABLE [dbo].[orderdetails2] CHECK CONSTRAINT [FK_orderdetails2_productdetails]
GO
ALTER TABLE [dbo].[productdetails]  WITH CHECK ADD  CONSTRAINT [FK_productdetails_login] FOREIGN KEY([lid])
REFERENCES [dbo].[login] ([loginid])
GO
ALTER TABLE [dbo].[productdetails] CHECK CONSTRAINT [FK_productdetails_login]
GO
USE [master]
GO
ALTER DATABASE [foodordersystem] SET  READ_WRITE 
GO
