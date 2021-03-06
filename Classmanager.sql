USE [master]
GO
/****** Object:  Database [ClassManager]    Script Date: 09/21/2017 23:05:51 ******/
CREATE DATABASE [ClassManager] ON  PRIMARY 
( NAME = N'ClassManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClassManager.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClassManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClassManager_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClassManager] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClassManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClassManager] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ClassManager] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ClassManager] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ClassManager] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ClassManager] SET ARITHABORT OFF
GO
ALTER DATABASE [ClassManager] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ClassManager] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ClassManager] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ClassManager] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ClassManager] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ClassManager] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ClassManager] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ClassManager] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ClassManager] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ClassManager] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ClassManager] SET  DISABLE_BROKER
GO
ALTER DATABASE [ClassManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ClassManager] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ClassManager] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ClassManager] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ClassManager] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ClassManager] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ClassManager] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ClassManager] SET  READ_WRITE
GO
ALTER DATABASE [ClassManager] SET RECOVERY FULL
GO
ALTER DATABASE [ClassManager] SET  MULTI_USER
GO
ALTER DATABASE [ClassManager] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ClassManager] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'ClassManager', N'ON'
GO
USE [ClassManager]
GO
/****** Object:  Table [dbo].[student]    Script Date: 09/21/2017 23:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[student_number] [varchar](20) NOT NULL,
	[student_name] [nvarchar](20) NOT NULL,
	[student_sex] [nvarchar](20) NOT NULL,
	[student_date] [nvarchar](20) NOT NULL,
	[student_password] [nvarchar](20) NOT NULL,
	[student_phone] [nvarchar](20) NOT NULL,
	[student_address] [nvarchar](20) NOT NULL,
	[class_number] [varchar](20) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[student_number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[score]    Script Date: 09/21/2017 23:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[score](
	[student_number] [varchar](20) NOT NULL,
	[course_number] [varchar](20) NOT NULL,
	[score_mark] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[course]    Script Date: 09/21/2017 23:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[course](
	[course_number] [varchar](20) NOT NULL,
	[course_name] [nvarchar](20) NOT NULL,
	[course_character] [nvarchar](20) NOT NULL,
	[course_credit] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[course_number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[class]    Script Date: 09/21/2017 23:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[class](
	[class_number] [varchar](20) NOT NULL,
	[class_name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[class_number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminlogin]    Script Date: 09/21/2017 23:05:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminlogin](
	[username] [int] NOT NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
