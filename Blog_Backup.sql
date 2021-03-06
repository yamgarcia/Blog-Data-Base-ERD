USE [Project_2]
GO
ALTER TABLE [dbo].[read_post] DROP CONSTRAINT [fk_read_post_post_id]
GO
ALTER TABLE [dbo].[read_post] DROP CONSTRAINT [fk_read_post_person_id]
GO
ALTER TABLE [dbo].[post_tag] DROP CONSTRAINT [fk_post_tag_tag_id]
GO
ALTER TABLE [dbo].[post_tag] DROP CONSTRAINT [fk_post_tag_post_id]
GO
ALTER TABLE [dbo].[post_photo] DROP CONSTRAINT [fk_post_photo_post_id]
GO
ALTER TABLE [dbo].[post_photo] DROP CONSTRAINT [fk_post_photo_photo_id]
GO
ALTER TABLE [dbo].[post_like] DROP CONSTRAINT [fk_post_like_post_id]
GO
ALTER TABLE [dbo].[post_like] DROP CONSTRAINT [fk_post_like_person_id]
GO
ALTER TABLE [dbo].[post_comment] DROP CONSTRAINT [fk_post_comment_post_id]
GO
ALTER TABLE [dbo].[post_comment] DROP CONSTRAINT [fk_post_comment_person_id]
GO
ALTER TABLE [dbo].[post] DROP CONSTRAINT [fk_post_person_id]
GO
ALTER TABLE [dbo].[person] DROP CONSTRAINT [fk_person_photo_id]
GO
ALTER TABLE [dbo].[read_post] DROP CONSTRAINT [DF__read_post__creat__3D5E1FD2]
GO
ALTER TABLE [dbo].[post_comment] DROP CONSTRAINT [DF__post_comm__creat__4222D4EF]
GO
ALTER TABLE [dbo].[post] DROP CONSTRAINT [DF__post__last_modif__2A4B4B5E]
GO
ALTER TABLE [dbo].[post] DROP CONSTRAINT [DF__post__created_da__29572725]
GO
ALTER TABLE [dbo].[photo] DROP CONSTRAINT [DF__photo__created_d__239E4DCF]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[tag]
GO
/****** Object:  Table [dbo].[read_post]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[read_post]
GO
/****** Object:  Table [dbo].[post_tag]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[post_tag]
GO
/****** Object:  Table [dbo].[post_photo]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[post_photo]
GO
/****** Object:  Table [dbo].[post_like]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[post_like]
GO
/****** Object:  Table [dbo].[post_comment]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[post_comment]
GO
/****** Object:  Table [dbo].[post]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[post]
GO
/****** Object:  Table [dbo].[photo]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[photo]
GO
/****** Object:  Table [dbo].[person]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP TABLE [dbo].[person]
GO
USE [master]
GO
/****** Object:  Database [Project_2]    Script Date: 2019-06-29 7:52:30 PM ******/
DROP DATABASE [Project_2]
GO
/****** Object:  Database [Project_2]    Script Date: 2019-06-29 7:52:30 PM ******/
CREATE DATABASE [Project_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Project_2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Project_2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Project_2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Project_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_2] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_2] SET  MULTI_USER 
GO
ALTER DATABASE [Project_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_2', N'ON'
GO
ALTER DATABASE [Project_2] SET QUERY_STORE = OFF
GO
USE [Project_2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Project_2]
GO
/****** Object:  Table [dbo].[person]    Script Date: 2019-06-29 7:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[password_hash] [varbinary](75) NOT NULL,
	[profile_photo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[photo]    Script Date: 2019-06-29 7:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photo](
	[photo_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [nvarchar](250) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[caption] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[photo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 2019-06-29 7:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[last_modified_date] [datetime] NOT NULL,
	[person_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_comment]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_comment](
	[post_comment_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
	[created_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_like]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_like](
	[post_like_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_like_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_photo]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_photo](
	[post_photo_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[photo_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_photo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_tag]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_tag](
	[post_tag_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[post_tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[read_post]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[read_post](
	[read_post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[read_post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2019-06-29 7:52:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[tag_id] [int] IDENTITY(1,1) NOT NULL,
	[tag_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[person] ON 
GO
INSERT [dbo].[person] ([person_id], [first_name], [last_name], [email], [password_hash], [profile_photo_id]) VALUES (1, N'Barbara', N'Hodge', N'b.hodge@company.com', 0x0200866875A2341B00EDECD80CD870A8C46B625A0CFDCFD67D1A6B1C48513B46AC5D15839BE9C0018A9095865730D2A47A7094ACA44BFB21431250557F81B0F2D2254A98E7C5, 1)
GO
INSERT [dbo].[person] ([person_id], [first_name], [last_name], [email], [password_hash], [profile_photo_id]) VALUES (2, N'James', N'Buckles', N'j.buckles@company.com', 0x02002E21DA78EF4AE2B958282E716D8D4115A17CF96896DF67458DC610479846B020F47B37AF3BF7B0D1C3E6E01051B7EF3C209BBB8516C6592F8F8326CA96295C409B3CAE47, 2)
GO
INSERT [dbo].[person] ([person_id], [first_name], [last_name], [email], [password_hash], [profile_photo_id]) VALUES (3, N'Natalie', N'Wilhite', N'bestest.forever@example.com', 0x0200357FCA486C9001D946995D2B1B32E9FA39EE1BB92B848CBB7D0FEE54294E8F2EEBC5FE291E47E14C3424B486CEB272B3D8FA636DEB773A3ED7DBA4E08841C3DBCDDE3CA6, NULL)
GO
INSERT [dbo].[person] ([person_id], [first_name], [last_name], [email], [password_hash], [profile_photo_id]) VALUES (4, N'Mary', N'Barnett', N'lifeisahighway@example.com', 0x020004EF1498D3816AF80B84CF09DF623FFD9709A2D081FD375FB4D4F8DA8DA02C93270877D215AE39B687BEE2A15A6461E9B9EF4DFEAF8494BD28FDC1CEF4358165DA4C9BD6, 3)
GO
INSERT [dbo].[person] ([person_id], [first_name], [last_name], [email], [password_hash], [profile_photo_id]) VALUES (5, N'Richard', N'Tipton', N'tippertapper266602@gmail.com', 0x0200C0EF193D1F6DF3DD27681BB398DA3C46BCF7E91A2BC675450BBDFE2D9A453317E87A860FC34519E3999ED0D0473F09D03B97CE62A4FF97C6A9648475F6291242D286ACF8, 5)
GO
SET IDENTITY_INSERT [dbo].[person] OFF
GO
SET IDENTITY_INSERT [dbo].[photo] ON 
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (1, N'barbara_profile.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Barbara''s profile')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (2, N'img_9203710.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'James'' Profile')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (3, N'dcim_38118385.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Mary')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (4, N'knitting.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Knitted Touques')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (5, N'img_28391910488.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Richard')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (6, N'img_21838392835.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Mickey Mouse Cookies')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (7, N'img_38201884043.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'So cute!')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (8, N'img_28320384855.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Smiling already!')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (9, N'rainbow.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Rainbow Quilt')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (10, N'stereo1.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Front Panel')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (11, N'stereo2.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Bass Speakers Installed')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (12, N'new_shed.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Shed inside empty')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (13, N'rose.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Rose')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (14, N'putter.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Putter')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (15, N'nine-iron.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'9 Iron')
GO
INSERT [dbo].[photo] ([photo_id], [file_name], [created_date], [caption]) VALUES (16, N'driver.jpg', CAST(N'2019-06-15T00:00:00.000' AS DateTime), N'Driver')
GO
SET IDENTITY_INSERT [dbo].[photo] OFF
GO
SET IDENTITY_INSERT [dbo].[post] ON 
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (1, N'Mickey Mouse Cookies', N'I found this great recipe for sugar cookies and a new Mickey Mouse cookie cutter.', CAST(N'2019-04-14T00:00:00.000' AS DateTime), CAST(N'2019-04-15T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (2, N'Touques for infants', N'I''m knitting touques for our grandchild that should be born soon!', CAST(N'2019-02-15T00:00:00.000' AS DateTime), CAST(N'2019-02-16T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (3, N'Our newest family member!', N'Congratulations to our daughter on their new bundle of joy! Theresa May - Born March 3, 2019.', CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-03-04T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (4, N'Rainbow Quilt', N'Beautiful new rainbow quilt for our newest granddaughter.', CAST(N'2019-03-29T00:00:00.000' AS DateTime), CAST(N'2019-04-01T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (5, N'New Car Stereo and Speakers', N'Best Bass Ever! You can hear me from 5 blocks away!', CAST(N'2019-05-09T00:00:00.000' AS DateTime), CAST(N'2019-05-09T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (6, N'Garden Shed', N'New garden shed has room for the lawn mowers and all our garden tools.', CAST(N'2019-05-22T00:00:00.000' AS DateTime), CAST(N'2019-05-22T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (7, N'Great way to hang pictures', N'It''s simple and cost effective!', CAST(N'2019-04-27T00:00:00.000' AS DateTime), CAST(N'2019-04-27T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (8, N'Beautiful colour, beautiful smell', N'Found a great place to buy the best roses!', CAST(N'2019-04-14T00:00:00.000' AS DateTime), CAST(N'2019-04-16T00:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (9, N'Set of golf clubs for sale', N'A friend of mine is selling his set of clubs before he moves to Saskatchewan.', CAST(N'2019-05-12T00:00:00.000' AS DateTime), CAST(N'2019-05-15T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (10, N'Change your own oil, save hundreds!', N'Mechanics are too expensive, and it''s not that hard to do it yourself.', CAST(N'2019-02-22T00:00:00.000' AS DateTime), CAST(N'2019-02-22T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[post] ([post_id], [title], [description], [created_date], [last_modified_date], [person_id]) VALUES (11, N'Awesome Floor Mats', N'Keep your car clean with these awesome car mats!', CAST(N'2019-03-03T00:00:00.000' AS DateTime), CAST(N'2019-03-03T00:00:00.000' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[post_comment] ON 
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (1, 1, 3, N'I''m going to try those myself! - Natalie', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (2, 3, 1, N'Congratulations! - Barbara,', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (3, 3, 2, N'How does it feel to be a grandma? - James', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (4, 4, 1, N'Can you make me one next? - Barbara', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (5, 6, 1, N'What colour are you going to paint your shed? - Barbara', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
INSERT [dbo].[post_comment] ([post_comment_id], [post_id], [person_id], [comment], [created_date]) VALUES (6, 9, 5, N'I need a good set of club; I''ll take them! - Richard', CAST(N'2019-06-29T19:24:58.177' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[post_comment] OFF
GO
SET IDENTITY_INSERT [dbo].[post_like] ON 
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (1, 1, 3)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (2, 2, 4)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (3, 3, 1)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (4, 3, 2)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (5, 3, 4)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (6, 3, 5)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (7, 5, 5)
GO
INSERT [dbo].[post_like] ([post_like_id], [post_id], [person_id]) VALUES (8, 9, 5)
GO
SET IDENTITY_INSERT [dbo].[post_like] OFF
GO
SET IDENTITY_INSERT [dbo].[post_photo] ON 
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (1, 1, 6)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (2, 2, 4)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (3, 3, 8)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (4, 3, 7)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (5, 4, 9)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (6, 5, 11)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (7, 5, 10)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (8, 6, 12)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (9, 8, 13)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (10, 9, 15)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (11, 9, 16)
GO
INSERT [dbo].[post_photo] ([post_photo_id], [post_id], [photo_id]) VALUES (12, 9, 14)
GO
SET IDENTITY_INSERT [dbo].[post_photo] OFF
GO
SET IDENTITY_INSERT [dbo].[post_tag] ON 
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (1, 1, 3)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (2, 1, 4)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (3, 1, 5)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (4, 2, 5)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (5, 2, 6)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (6, 4, 5)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (7, 4, 6)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (8, 5, 7)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (9, 5, 6)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (10, 6, 6)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (11, 6, 8)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (12, 7, 8)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (13, 9, 9)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (14, 10, 6)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (15, 10, 7)
GO
INSERT [dbo].[post_tag] ([post_tag_id], [post_id], [tag_id]) VALUES (16, 11, 7)
GO
SET IDENTITY_INSERT [dbo].[post_tag] OFF
GO
SET IDENTITY_INSERT [dbo].[read_post] ON 
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (1, 1, 4, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (2, 1, 3, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (3, 2, 4, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (4, 3, 1, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (5, 3, 2, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (6, 3, 4, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (7, 3, 5, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (8, 4, 1, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (9, 5, 5, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (10, 6, 1, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (11, 6, 5, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (12, 7, 1, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (13, 9, 5, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (14, 10, 5, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
INSERT [dbo].[read_post] ([read_post_id], [post_id], [person_id], [created_date]) VALUES (15, 11, 1, CAST(N'2019-06-29T19:24:58.170' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[read_post] OFF
GO
SET IDENTITY_INSERT [dbo].[tag] ON 
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (1, N'music')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (2, N'shopping')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (3, N'baking')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (4, N'cooking')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (5, N'crafts')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (6, N'DIY')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (7, N'cars')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (8, N'home repair')
GO
INSERT [dbo].[tag] ([tag_id], [tag_name]) VALUES (9, N'sports')
GO
SET IDENTITY_INSERT [dbo].[tag] OFF
GO
ALTER TABLE [dbo].[photo] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (getdate()) FOR [last_modified_date]
GO
ALTER TABLE [dbo].[post_comment] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[read_post] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [fk_person_photo_id] FOREIGN KEY([profile_photo_id])
REFERENCES [dbo].[photo] ([photo_id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [fk_person_photo_id]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [fk_post_person_id] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [fk_post_person_id]
GO
ALTER TABLE [dbo].[post_comment]  WITH CHECK ADD  CONSTRAINT [fk_post_comment_person_id] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[post_comment] CHECK CONSTRAINT [fk_post_comment_person_id]
GO
ALTER TABLE [dbo].[post_comment]  WITH CHECK ADD  CONSTRAINT [fk_post_comment_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[post_comment] CHECK CONSTRAINT [fk_post_comment_post_id]
GO
ALTER TABLE [dbo].[post_like]  WITH CHECK ADD  CONSTRAINT [fk_post_like_person_id] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[post_like] CHECK CONSTRAINT [fk_post_like_person_id]
GO
ALTER TABLE [dbo].[post_like]  WITH CHECK ADD  CONSTRAINT [fk_post_like_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[post_like] CHECK CONSTRAINT [fk_post_like_post_id]
GO
ALTER TABLE [dbo].[post_photo]  WITH CHECK ADD  CONSTRAINT [fk_post_photo_photo_id] FOREIGN KEY([photo_id])
REFERENCES [dbo].[photo] ([photo_id])
GO
ALTER TABLE [dbo].[post_photo] CHECK CONSTRAINT [fk_post_photo_photo_id]
GO
ALTER TABLE [dbo].[post_photo]  WITH CHECK ADD  CONSTRAINT [fk_post_photo_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[post_photo] CHECK CONSTRAINT [fk_post_photo_post_id]
GO
ALTER TABLE [dbo].[post_tag]  WITH CHECK ADD  CONSTRAINT [fk_post_tag_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[post_tag] CHECK CONSTRAINT [fk_post_tag_post_id]
GO
ALTER TABLE [dbo].[post_tag]  WITH CHECK ADD  CONSTRAINT [fk_post_tag_tag_id] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tag] ([tag_id])
GO
ALTER TABLE [dbo].[post_tag] CHECK CONSTRAINT [fk_post_tag_tag_id]
GO
ALTER TABLE [dbo].[read_post]  WITH CHECK ADD  CONSTRAINT [fk_read_post_person_id] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[read_post] CHECK CONSTRAINT [fk_read_post_person_id]
GO
ALTER TABLE [dbo].[read_post]  WITH CHECK ADD  CONSTRAINT [fk_read_post_post_id] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[read_post] CHECK CONSTRAINT [fk_read_post_post_id]
GO
USE [master]
GO
ALTER DATABASE [Project_2] SET  READ_WRITE 
GO
