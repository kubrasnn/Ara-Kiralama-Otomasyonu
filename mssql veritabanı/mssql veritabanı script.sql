USE [master]
GO
/****** Object:  Database [kirala]    Script Date: 12/29/2016 00:37:09 ******/
CREATE DATABASE [kirala] ON  PRIMARY 
( NAME = N'kirala', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kirala.mdf' , SIZE = 83968KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kirala_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kirala_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kirala] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kirala].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kirala] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [kirala] SET ANSI_NULLS OFF
GO
ALTER DATABASE [kirala] SET ANSI_PADDING OFF
GO
ALTER DATABASE [kirala] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [kirala] SET ARITHABORT OFF
GO
ALTER DATABASE [kirala] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [kirala] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [kirala] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [kirala] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [kirala] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [kirala] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [kirala] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [kirala] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [kirala] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [kirala] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [kirala] SET  DISABLE_BROKER
GO
ALTER DATABASE [kirala] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [kirala] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [kirala] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [kirala] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [kirala] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [kirala] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [kirala] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [kirala] SET  READ_WRITE
GO
ALTER DATABASE [kirala] SET RECOVERY SIMPLE
GO
ALTER DATABASE [kirala] SET  MULTI_USER
GO
ALTER DATABASE [kirala] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [kirala] SET DB_CHAINING OFF
GO
USE [kirala]
GO
/****** Object:  User [admin]    Script Date: 12/29/2016 00:37:09 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[uyeler]    Script Date: 12/29/2016 00:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uyeler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NOT NULL,
	[soyad] [varchar](50) NOT NULL,
	[kadi] [varchar](50) NOT NULL,
	[sifre] [varchar](50) NOT NULL,
	[yetki] [varchar](50) NULL,
 CONSTRAINT [PK_uyeler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log]    Script Date: 12/29/2016 00:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Zaman] [datetime] NULL,
	[MethodAdi] [varchar](100) NULL,
	[SorguTipi] [varchar](50) NULL,
	[Sure] [decimal](18, 16) NULL,
 CONSTRAINT [PK_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kiralik_arac]    Script Date: 12/29/2016 00:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kiralik_arac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[marka] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[plaka] [varchar](50) NOT NULL,
	[ucret] [int] NOT NULL,
	[km] [varchar](50) NULL,
 CONSTRAINT [PK_kiralik_arac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kirada_arac]    Script Date: 12/29/2016 00:37:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kirada_arac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[durum] [varchar](50) NOT NULL,
	[tckimlik] [varchar](11) NOT NULL,
	[ad] [varchar](50) NOT NULL,
	[soyad] [varchar](50) NOT NULL,
	[tel] [varchar](50) NOT NULL,
	[adres] [varchar](50) NOT NULL,
	[mail] [varchar](50) NOT NULL,
	[marka] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[plaka] [varchar](50) NOT NULL,
	[vgun] [varchar](50) NULL,
	[vkm] [varchar](50) NULL,
	[kgun] [int] NOT NULL,
	[ucret] [int] NOT NULL,
	[dgun] [varchar](50) NOT NULL,
	[gkm] [varchar](50) NULL,
	[tucret] [int] NOT NULL,
 CONSTRAINT [PK_kirada_arac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUdpateTest]    Script Date: 12/29/2016 00:37:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUdpateTest] 
                   @ID bigint, @symbol VARCHAR(255), @time DateTime, @bid real, @ask real, @bidSize int, @askSize int, @provider varchar(255)
                        AS BEGIN
                        	BEGIN TRAN
                        
                            IF NOT EXISTS (SELECT * FROM table1 WHERE ID = @ID)
                               INSERT INTO table1 VALUES(@ID, @symbol, @time, @bid, @ask, @bidSize, @askSize, @provider)
                            ELSE
                               UPDATE table1
                               SET Symbol = @symbol, [Time] = @time, Bid = @bid,Ask = @ask, BidSize = @bidSize, AskSize = @askSize, Provider = @provider
                               WHERE ID = @ID
                        
                        	COMMIT TRAN
                        END;
GO
/****** Object:  Default [DF_log_Zaman]    Script Date: 12/29/2016 00:37:10 ******/
ALTER TABLE [dbo].[log] ADD  CONSTRAINT [DF_log_Zaman]  DEFAULT (getdate()) FOR [Zaman]
GO
