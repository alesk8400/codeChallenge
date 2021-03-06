USE [master]
GO
/****** Object:  Database [challengeDB]    Script Date: 1/28/2020 8:17:04 PM ******/
CREATE DATABASE [challengeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'challengeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\challengeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'challengeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\challengeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [challengeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [challengeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [challengeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [challengeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [challengeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [challengeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [challengeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [challengeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [challengeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [challengeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [challengeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [challengeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [challengeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [challengeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [challengeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [challengeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [challengeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [challengeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [challengeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [challengeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [challengeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [challengeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [challengeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [challengeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [challengeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [challengeDB] SET  MULTI_USER 
GO
ALTER DATABASE [challengeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [challengeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [challengeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [challengeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [challengeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [challengeDB] SET QUERY_STORE = OFF
GO
USE [challengeDB]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 1/28/2020 8:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Credits] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/28/2020 8:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersProject]    Script Date: 1/28/2020 8:17:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersProject](
	[UserId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AssignedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (1, CAST(N'2019-11-18T10:34:09.000' AS DateTime), CAST(N'2019-11-20T10:34:09.000' AS DateTime), 4)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (2, CAST(N'2019-10-01T10:34:09.000' AS DateTime), CAST(N'2019-10-20T10:34:09.000' AS DateTime), 4)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (3, CAST(N'2019-09-14T10:34:09.000' AS DateTime), CAST(N'2019-09-12T10:34:09.000' AS DateTime), 4)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (4, CAST(N'2019-07-28T10:34:09.000' AS DateTime), CAST(N'2019-07-25T10:34:09.000' AS DateTime), 4)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (5, CAST(N'2019-08-01T10:34:09.000' AS DateTime), CAST(N'2019-08-15T10:34:09.000' AS DateTime), 4)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (1, N'Alejandro', N'Sudasassi')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (2, N'Nicole', N'Perez')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (3, N'Luis', N'Brenes')
INSERT [dbo].[UsersProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 3, 0, CAST(N'2019-11-20T10:14:09.000' AS DateTime))
INSERT [dbo].[UsersProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 4, 0, CAST(N'2019-06-20T10:14:09.000' AS DateTime))
INSERT [dbo].[UsersProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 5, 0, CAST(N'2019-07-12T10:14:09.000' AS DateTime))
INSERT [dbo].[UsersProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 1, 0, CAST(N'2019-07-25T10:14:09.000' AS DateTime))
INSERT [dbo].[UsersProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 2, 0, CAST(N'2019-08-15T10:14:09.000' AS DateTime))
ALTER TABLE [dbo].[UsersProject]  WITH CHECK ADD FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[UsersProject]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
USE [master]
GO
ALTER DATABASE [challengeDB] SET  READ_WRITE 
GO
