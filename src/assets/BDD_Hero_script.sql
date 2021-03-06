USE [master]
GO
/****** Object:  Database [BDD_Hero]    Script Date: 02/03/2017 11:50:08 ******/
CREATE DATABASE [BDD_Hero]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDD_Hero', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BDD_Hero.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDD_Hero_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BDD_Hero_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDD_Hero] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDD_Hero].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDD_Hero] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDD_Hero] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDD_Hero] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDD_Hero] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDD_Hero] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDD_Hero] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDD_Hero] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDD_Hero] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDD_Hero] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDD_Hero] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDD_Hero] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDD_Hero] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDD_Hero] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDD_Hero] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDD_Hero] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDD_Hero] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDD_Hero] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDD_Hero] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDD_Hero] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDD_Hero] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDD_Hero] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDD_Hero] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDD_Hero] SET RECOVERY FULL 
GO
ALTER DATABASE [BDD_Hero] SET  MULTI_USER 
GO
ALTER DATABASE [BDD_Hero] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDD_Hero] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDD_Hero] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDD_Hero] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDD_Hero] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BDD_Hero]
GO
/****** Object:  Table [dbo].[BDD_Hero]    Script Date: 02/03/2017 11:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BDD_Hero](
	[Id] [int] NOT NULL,
	[Nom] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Pouvoir] [nvarchar](max) NOT NULL,
	[Citation] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (1, N'Genji', 35, N'Cyborg Ninja', N'Mon katana est au service du bien!', N'Genji_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (2, N'Mccree', 37, N'Colt .45', N'Je suis le roi des duels au soleil.', N'Mccree_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (3, N'Phara', 32, N'Vol et tire des roquettes', N'Place au déluge de la justice!', N'Pharah_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (4, N'Reaper', 51, N'Réserve infinie de fusils à pompes', N'Je suis le faucheur...', N'Reaper_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (5, N'Soldier76', 53, N'Viseur tactique', N'La guerre ne s''arrète jamais.', N'Soldier76_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (6, N'Sombra', 30, N'Hackeuse surdouée', N'Boop!', N'Sombra_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (7, N'Tracer', 26, N'Contrôle spatio temporel limité', N'Je suis toujours à l''heure ;)', N'Tracer_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (8, N'Bastion', 30, N'Mitrailleuse lourde sur pattes', N'Beep boop bip bip booooop!', N'Bastion_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (9, N'Hanzo', 38, N'Arcs et flèches améliorés', N'Je suis le dragon!', N'Hanzo_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (10, N'Junkrat', 25, N'Immunité aux explosions et lance grenade', N'On va tout faire péter!', N'Junkrat_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (11, N'Mei', 101, N'Cryostase et contrôle de la glace', N'Je ne voudrai pas jeter un froid...', N'Mei_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (12, N'Torbjörn', 57, N'Constructeur de génie', N'Pour la dernière fois, je suis suédois!', N'Torbjorn_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (13, N'Widowmaker', 33, N'Sniper d''élite', N'Une balle, un mort!', N'Widowmaker_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (14, N'D.Va', 19, N'Conductrice de Meka', N'Place aux jeunes!', N'Dva_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (15, N'Reinhart', 61, N'Chevalier en armure', N'Pour l''honneur et la justice!!!', N'Reinhart_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (16, N'Roadhod', 48, N'Apocalypse ambulante', N'Viens par ici que je te montre qui est le boss!', N'Roadhog_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (17, N'Winston', 17, N'Scientifique en jetpack', N'La science est le moteur de l''humanité', N'Winston_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (18, N'Zarya', 28, N'Fusil laser lourd', N'Pour la mère patrie!', N'Zarya_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (19, N'Ana', 60, N'Fusil sniper bionique', N'Bat toi pour tes idéaux!', N'Ana_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (20, N'Lucio', 26, N'DJ en roller', N'Je m''invites à la fête!', N'Lucio_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (21, N'Mercy', 37, N'Ange gardien', N'Ha, les miracles de la science moderne...', N'Mercy_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (22, N'Syymetra', 28, N'Rends la lumière solide', N'Bienvenue dans ma réalité...', N'Symmetra_portrait.png')
INSERT [dbo].[BDD_Hero] ([Id], [Nom], [Age], [Pouvoir], [Citation], [Photo]) VALUES (23, N'Zenyatta', 20, N'Grand sage', N'Votre véritable pouvoir est en vous!', N'Zenyatta_portrait.png')
USE [master]
GO
ALTER DATABASE [BDD_Hero] SET  READ_WRITE 
GO
