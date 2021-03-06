USE [master]
GO
/****** Object:  Database [StudyZone]    Script Date: 10/29/2017 11:47:55 AM ******/
CREATE DATABASE [StudyZone] ON  PRIMARY 
( NAME = N'StudyZone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\StudyZone.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudyZone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\StudyZone_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudyZone] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudyZone].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudyZone] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudyZone] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudyZone] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudyZone] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudyZone] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudyZone] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudyZone] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudyZone] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudyZone] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudyZone] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudyZone] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudyZone] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudyZone] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudyZone] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudyZone] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudyZone] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudyZone] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudyZone] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudyZone] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudyZone] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudyZone] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudyZone] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudyZone] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudyZone] SET  MULTI_USER 
GO
ALTER DATABASE [StudyZone] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudyZone] SET DB_CHAINING OFF 
GO
USE [StudyZone]
GO
/****** Object:  Table [dbo].[Tbl_Enquiry]    Script Date: 10/29/2017 11:47:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Enquiry](
	[Enquiry_id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Stu_id] [bigint] NOT NULL,
	[Email_Id] [varchar](100) NULL,
	[Contact_no] [varchar](50) NULL,
	[Query_Head] [varchar](50) NOT NULL,
	[Query] [varchar](max) NOT NULL,
	[Enq_date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Enquiry] PRIMARY KEY CLUSTERED 
(
	[Enquiry_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Feedback]    Script Date: 10/29/2017 11:47:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Feedback](
	[Feedback_id] [bigint] IDENTITY(1000,1) NOT NULL,
	[User_id] [varchar](100) NOT NULL,
	[Feedback_head] [varchar](100) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[Feedback_date] [varchar](30) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 10/29/2017 11:47:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[User_id] [varchar](100) NOT NULL,
	[Pass] [varchar](50) NOT NULL,
	[User_type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Registration]    Script Date: 10/29/2017 11:47:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Registration](
	[Reg_no] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[CollegeName] [varchar](50) NULL,
	[Course] [varchar](50) NOT NULL,
	[Year] [varchar](50) NULL,
	[ContactNo] [bigint] NOT NULL,
	[ProfilePic] [varchar](max) NULL,
	[Password] [varchar](50) NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Res_Date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Registration] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Feedback] ON 

INSERT [dbo].[Tbl_Feedback] ([Feedback_id], [User_id], [Feedback_head], [Message], [Feedback_date]) VALUES (1, N'715632', N'Main', N'Hiiii', N'12 Sep')
INSERT [dbo].[Tbl_Feedback] ([Feedback_id], [User_id], [Feedback_head], [Message], [Feedback_date]) VALUES (1001, N'715630', N'Main', N'Hiiii', N'12 Sep')
SET IDENTITY_INSERT [dbo].[Tbl_Feedback] OFF
INSERT [dbo].[Tbl_Login] ([User_id], [Pass], [User_type]) VALUES (N'', N'', N'User')
INSERT [dbo].[Tbl_Login] ([User_id], [Pass], [User_type]) VALUES (N'abhi', N'12345', N'Admin')
INSERT [dbo].[Tbl_Login] ([User_id], [Pass], [User_type]) VALUES (N'abhishekbajpai449@gmail.com', N'safd', N'User')
ALTER TABLE [dbo].[Tbl_Feedback] ADD  CONSTRAINT [DF_Tbl_Feedback_Feedback_date]  DEFAULT ((1000)) FOR [Feedback_date]
GO
/****** Object:  StoredProcedure [dbo].[register]    Script Date: 10/29/2017 11:47:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[register](@name varchar(50), @gender varchar(20), @clg_name varchar(100), @course varchar(70),@year varchar(20), @mail varchar(100), @contact bigint, @pic varchar(MAX), @pass varchar(50), @date varchar(50))
As
Begin
insert into Tbl_Registration values(@name,@gender,@clg_name,@course,@year,@contact,@pic,@pass,@mail,@date);
insert into Tbl_Login values(@mail,@pass,'User');
End
GO
USE [master]
GO
ALTER DATABASE [StudyZone] SET  READ_WRITE 
GO
