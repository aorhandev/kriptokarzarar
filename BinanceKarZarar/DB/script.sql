USE [master]
GO
/****** Object:  Database [BinanceKarZararDB]    Script Date: 13.01.2022 08:22:03 ******/
CREATE DATABASE [BinanceKarZararDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BinanceKarZararDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\BinanceKarZararDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BinanceKarZararDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\BinanceKarZararDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BinanceKarZararDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BinanceKarZararDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BinanceKarZararDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BinanceKarZararDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BinanceKarZararDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BinanceKarZararDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BinanceKarZararDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BinanceKarZararDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET RECOVERY FULL 
GO
ALTER DATABASE [BinanceKarZararDB] SET  MULTI_USER 
GO
ALTER DATABASE [BinanceKarZararDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BinanceKarZararDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BinanceKarZararDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BinanceKarZararDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BinanceKarZararDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BinanceKarZararDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BinanceKarZararDB', N'ON'
GO
ALTER DATABASE [BinanceKarZararDB] SET QUERY_STORE = OFF
GO
USE [BinanceKarZararDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13.01.2022 08:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13.01.2022 08:22:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ApiKey] [nvarchar](max) NULL,
	[ApiSecretKey] [nvarchar](max) NULL,
	[Yetki] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105141323_v1', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Password], [Email], [ApiKey], [ApiSecretKey], [Yetki]) VALUES (1, N'admin', N'123', N'admin@mail.com', N'546s4d6sa4d6as4d56a8d4as4dsa4d', N'6a4d6as4d64as8d64asd4sd48sa4d', N'admin')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Email], [ApiKey], [ApiSecretKey], [Yetki]) VALUES (2, N'samet', N'123', N'samet@mail.com', NULL, NULL, N'user')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Email], [ApiKey], [ApiSecretKey], [Yetki]) VALUES (3, N'ahmet', N'1234', N'muh.aorhan@gmail.com', N'1', N'2', N'user')
INSERT [dbo].[Users] ([Id], [Username], [Password], [Email], [ApiKey], [ApiSecretKey], [Yetki]) VALUES (10, N'samet1', NULL, N'muh.aor362an@gmail.com', N'34532423423432v432', N'2345b234b32423423v4234', N'user')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [BinanceKarZararDB] SET  READ_WRITE 
GO
