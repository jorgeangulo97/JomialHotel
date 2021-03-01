USE [master]
GO
/****** Object:  Database [Jomial]    Script Date: 01/03/2021 9:59:28 ******/
CREATE DATABASE [Jomial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Jomial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Jomial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Jomial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Jomial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Jomial] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Jomial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Jomial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Jomial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Jomial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Jomial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Jomial] SET ARITHABORT OFF 
GO
ALTER DATABASE [Jomial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Jomial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Jomial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Jomial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Jomial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Jomial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Jomial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Jomial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Jomial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Jomial] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Jomial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Jomial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Jomial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Jomial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Jomial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Jomial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Jomial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Jomial] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Jomial] SET  MULTI_USER 
GO
ALTER DATABASE [Jomial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Jomial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Jomial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Jomial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Jomial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Jomial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Jomial] SET QUERY_STORE = OFF
GO
USE [Jomial]
GO
/****** Object:  Table [dbo].[Erabiltzailea]    Script Date: 01/03/2021 9:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Erabiltzailea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[erabiltzailea] [varchar](50) NULL,
	[pasahitza] [varchar](16) NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontaktatu]    Script Date: 01/03/2021 9:59:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontaktatu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[izena] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mezua] [varchar](500) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Jomial] SET  READ_WRITE 
GO
