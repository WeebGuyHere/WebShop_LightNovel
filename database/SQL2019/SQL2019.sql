USE [WebNovel]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Publisher]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_TransactStatus]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[AttributePrices] DROP CONSTRAINT [FK_AttributePrices_Product]
GO
ALTER TABLE [dbo].[AttributePrices] DROP CONSTRAINT [FK_AttributePrices_Attribute]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Roles]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__Descripti__412EB0B6]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF__Product__Homefla__403A8C7D]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [DF__Order__OrderDate__3F466844]
GO
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF__Category__IsPubl__3E52440B]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [DF__Cart__Price__3D5E1FD2]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [DF__Cart__Quantity__3C69FB99]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF__Account__FullNam__3B75D760]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactStatus]') AND type in (N'U'))
DROP TABLE [dbo].[TransactStatus]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipper]') AND type in (N'U'))
DROP TABLE [dbo].[Shipper]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Publisher]') AND type in (N'U'))
DROP TABLE [dbo].[Publisher]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[AttributePrices]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AttributePrices]') AND type in (N'U'))
DROP TABLE [dbo].[AttributePrices]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Attribute]') AND type in (N'U'))
DROP TABLE [dbo].[Attribute]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/04/2022 11:52:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/04/2022 11:52:19 ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Phone] [varchar](13) NULL,
	[CreateDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[RoleId] [int] NULL,
	[IsActived] [bit] NOT NULL,
	[Randomkey] [nchar](10) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributePrices]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributePrices](
	[AttributePriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[IsActived] [bit] NULL,
 CONSTRAINT [PK_AttributePrices] PRIMARY KEY CLUSTERED 
(
	[AttributePriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NOT NULL,
	[Descriptions] [nvarchar](250) NULL,
	[ParentID] [int] NOT NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[IsPublished] [bit] NOT NULL,
	[ThumbImg] [nvarchar](250) NULL,
	[Title] [nvarchar](200) NULL,
	[Alias] [nvarchar](250) NULL,
	[Cover] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustommerID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[BirthDay] [datetime] NULL,
	[Avatar] [nvarchar](250) NULL,
	[Address] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Phone] [varchar](13) NULL,
	[District] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[IsActived] [bit] NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[Randomkey] [nvarchar](10) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustommerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[TransactionStatusID] [int] NULL,
	[IsDeleted] [bit] NULL,
	[IsPaid] [bit] NULL,
	[Note] [nvarchar](max) NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[District] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[CreateDate] [datetime] NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Descriptions] [nvarchar](255) NULL,
	[CateID] [int] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [int] NULL,
	[ThumbImg] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[IsBestsellers] [bit] NOT NULL,
	[Homeflag] [bit] NOT NULL,
	[IsActived] [bit] NOT NULL,
	[Tag] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[UnitInStock] [int] NULL,
	[PublisherID] [int] NULL,
	[SalesPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](100) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [nvarchar](200) NULL,
	[Phone] [varchar](13) NULL,
	[Company] [nvarchar](255) NULL,
	[Shipdate] [datetime] NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 09/04/2022 11:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactionStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](50) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactionStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin], [RoleId], [IsActived], [Randomkey]) VALUES (1, N'Admin', N'2e95e0081e8d5a1fd6f86eaade7fb80c', N'ngothanhlong19943@gmail.com', N'Ngô Thành Long', N'0355767198', NULL, CAST(N'2022-04-09T11:42:10.380' AS DateTime), 3, 1, N'4@163     ')
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin], [RoleId], [IsActived], [Randomkey]) VALUES (2, N'Staff', N'88af302b04ad283a84c146f50423f844', N'mahdi.noal@zooants.com', N'Đỗ Bá Sơn', N'0968454612', NULL, CAST(N'2022-04-07T11:43:02.807' AS DateTime), 2, 1, N'*rcj9     ')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (1, N'Novel Nhật Bản', N'<p>Văn học Nhật Bản</p>', 0, NULL, NULL, 1, N'laptop.png', N'JPNovel', N'novelnhtbn', NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (2, N'Novel Trung Quốc', N'<p>Văn học Trung Quốc<br></p>', 0, NULL, NULL, 1, N'smartphone.jpg', N'CNNovel', N'noveltrungquc', NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished], [ThumbImg], [Title], [Alias], [Cover]) VALUES (3, N'Novel Hàn Quốc', N'<p>Văn học Hàn Quốc</p>', 0, NULL, NULL, 1, N'phkin.jpg', N'KRNovel', N'novelhnquc', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustommerID], [Password], [FullName], [BirthDay], [Avatar], [Address], [Mail], [Phone], [District], [Ward], [CreateDate], [LastLogin], [IsActived], [Username], [Province], [Randomkey]) VALUES (4, N'ff1ecb27bd8d1ab168c7bde532e77ffa', N'Ngô Thành Long', CAST(N'2000-11-29T10:31:00.000' AS DateTime), N'ngthnhlong.jpg', N'Khu 10', N'ngothanhlong19943@gmail.com', N'0355767198', N'Huyện Phù Ninh', N'Xã Phù Ninh', CAST(N'2022-04-07T10:25:54.000' AS DateTime), CAST(N'2022-04-07T10:32:27.990' AS DateTime), 1, N'notmiyoujiok', N'Phú Thọ', N'opd!y')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderDate], [TransactionStatusID], [IsDeleted], [IsPaid], [Note], [TotalMoney], [District], [Province], [Ward], [Address]) VALUES (8, 4, CAST(N'2022-04-09T11:48:54.000' AS DateTime), 4, 0, 1, NULL, CAST(160000.00 AS Decimal(18, 2)), N'Huyện Phù Ninh', N'Phú Thọ', N'Xã Phù Ninh', N'Khu 10')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total], [CreateDate], [Price]) VALUES (10, 8, 51, NULL, 1, NULL, CAST(160000.00 AS Decimal(18, 2)), CAST(N'2022-04-09T11:48:54.930' AS DateTime), CAST(160000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (21, N'Houshin Engi Tập 01', NULL, N'<p>Thể loại:&nbsp;Romance, Lịch Sử, Drama, Fantasy ,Adventure, Action</p><p>Tác giả:&nbsp;Kisetsu Morita</p>', 2, CAST(120000.00 AS Decimal(18, 2)), 15, N'houshinengitp01.jpg', NULL, CAST(N'2022-04-09T02:31:05.000' AS DateTime), CAST(N'2022-04-09T03:57:11.470' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'houshinengitp01', 100, 2, CAST(102000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (25, N'Houshin Engi Tập 02', NULL, N'<p>Thể loại:&nbsp;&nbsp;Romance, Lịch Sử ,Drama, Fantasy ,Adventure, Action</p><p><div><table border="0" cellpadding="0" cellspacing="0" width="513" style="width: 385pt;"><tbody></tbody></table>Tác giả:&nbsp;Kisetsu Morita</div></p>', 2, CAST(120000.00 AS Decimal(18, 2)), 10, N'houshinengitp02.jpg', NULL, CAST(N'2022-04-09T03:51:53.000' AS DateTime), CAST(N'2022-04-09T04:38:52.800' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'houshinengitp02', 100, 2, CAST(108000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (26, N'Thú Phi Thiên Hạ: Thần Y Đại Tiểu Thư', NULL, N'<p>Thể loại:&nbsp;Dị Giới, Huyền Huyễn, Ngôn Tình, Xuyên Không, Cung Đấu, Cổ Đại</p><p>Tác giả:&nbsp;Ngư Tiểu Đồng</p><p>Năm xuất bản: 2021</p>', 2, CAST(110000.00 AS Decimal(18, 2)), 20, N'thphithinhthnyditiuth.jpg', NULL, CAST(N'2022-04-09T04:01:53.873' AS DateTime), CAST(N'2022-04-09T04:01:53.873' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'thphithinhthnyditiuth', 100, 2, CAST(88000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (27, N'Thế Giới Hoàn Mỹ', NULL, N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả: Thần Đồng</p><p>Năm xuất bản: 2018</p>', 2, CAST(120000.00 AS Decimal(18, 2)), 20, N'thgiihonm.jpg', NULL, CAST(N'2022-04-09T04:04:38.000' AS DateTime), CAST(N'2022-04-09T04:11:19.147' AS DateTime), 0, 1, 1, N'Hàng mới', N'CNNovel', N'thgiihonm', 100, 5, CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (28, N'Già Thiên', NULL, N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Thần Đồng</p><p>Năm xuất bản: 2019</p>', 2, CAST(120000.00 AS Decimal(18, 2)), 20, N'githin.jpg', NULL, CAST(N'2022-04-09T10:02:13.000' AS DateTime), CAST(N'2022-04-09T10:59:00.467' AS DateTime), 1, 1, 1, NULL, N'CNNovel', N'githin', 100, 6, CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (29, N'Trường Sinh Giới', NULL, N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Thần Đồng</p><p>Năm xuất bản: 2020</p>', 2, CAST(120000.00 AS Decimal(18, 2)), 20, N'trngsinhgii.jpg', NULL, CAST(N'2022-04-09T10:22:06.870' AS DateTime), CAST(N'2022-04-09T10:22:06.870' AS DateTime), 1, 1, 1, NULL, N'CNNovel', N'trngsinhgii', 100, 6, CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (30, N'Ngày Nào Thiếu Soái Cũng Gen', NULL, N'<p>Thể loại:&nbsp;Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Bát Tầm</p><p>Năm xuất bản: 2021</p>', 2, CAST(130000.00 AS Decimal(18, 2)), 15, N'ngynothiusoicnggen.jpg', NULL, CAST(N'2022-04-09T10:24:00.683' AS DateTime), CAST(N'2022-04-09T10:24:00.683' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'ngynothiusoicnggen', 100, 5, CAST(110500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (31, N'Đánh Dấu Từ Bộ Khoái Bắt Đầu', NULL, N'<p>Thể loại:&nbsp;Nguyên sang, Nam sinh, Cổ đại , OE , Tình cảm , Võ hiệp , Dị thế&nbsp;</p><p>Tác giả:&nbsp;Thăng Đấu Yên Dân</p><p>Năm xuất bản: 2022</p>', 2, CAST(125000.00 AS Decimal(18, 2)), 10, N'dnhdutbkhoibtdu.jpg', NULL, CAST(N'2022-04-09T10:26:50.000' AS DateTime), CAST(N'2022-04-09T10:59:09.923' AS DateTime), 1, 1, 1, NULL, N'CNNovel', N'dnhdutbkhoibtdu', 100, 9, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (32, N'Thiên Đạo Bảng:  Kiếm Thần ', NULL, N'<p>Thể loại:&nbsp;&nbsp;Dị thế , Xuyên việt , Hệ thống&nbsp; , Nhẹ nhàng , Hài hước , Vô địch lưu</p><p>Tác giả:&nbsp;Thất Niên Linh Thất Thiên</p><p>Năm xuất bản: 2019</p>', 2, CAST(125000.00 AS Decimal(18, 2)), 0, N'thindobngkimthn.jpg', NULL, CAST(N'2022-04-09T10:30:50.873' AS DateTime), CAST(N'2022-04-09T10:30:50.873' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'thindobngkimthn', 100, 4, CAST(125000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (33, N'Luân Hồi Nhạc Viên', NULL, N'<p>Thể loại:&nbsp;Diễn sinh, Nam sinh, Cận đại, Hiện đại, Khoa học viễn tưởng</p><p>Tác giả:&nbsp;Na Nhất Chỉ Văn Tử</p><p>Năm xuất bản: 2020</p>', 2, CAST(130000.00 AS Decimal(18, 2)), 10, N'lunhinhcvin.jpg', NULL, CAST(N'2022-04-09T10:33:54.740' AS DateTime), CAST(N'2022-04-09T10:33:54.740' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'lunhinhcvin', 100, 9, CAST(117000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (34, N'Hoa Thiên Cốt ( Tập 1)', NULL, N'<p>Thể loại:&nbsp;Ngôn Tình, Huyền Huyễn</p><p>Tác giả:&nbsp;Nuôi Thả Tiểu Trư</p><p>Năm xuất bản: 2019</p>', 2, CAST(75000.00 AS Decimal(18, 2)), 0, N'hoathincttp1.jpg', NULL, CAST(N'2022-04-09T10:35:42.183' AS DateTime), CAST(N'2022-04-09T10:35:42.183' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'hoathincttp1', 100, 10, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (35, N'Hoa Thiên Cốt ( Tập 2)', NULL, N'<p>Thể loại:&nbsp;Ngôn Tình, Huyền Huyễn</p><p>Tác giả:&nbsp;Nuôi Thả Tiểu Trư</p><p>Năm xuất bản: 2020</p>', 2, CAST(75000.00 AS Decimal(18, 2)), 0, N'hoathincttp2.jpg', NULL, CAST(N'2022-04-09T10:36:53.400' AS DateTime), CAST(N'2022-04-09T10:36:53.400' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'hoathincttp2', 100, 6, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (36, N'Linh Kiếm Tôn', NULL, N'<p>Thể loại:&nbsp;Tiên hiệp ,Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Lưu Hạ</p><p>Năm xuất bản: 2020</p>', 2, CAST(125000.00 AS Decimal(18, 2)), 10, N'linhkimtn.jpg', NULL, CAST(N'2022-04-09T10:38:23.657' AS DateTime), CAST(N'2022-04-09T10:38:23.657' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'linhkimtn', 100, 10, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (37, N'Lạn Kha Kỳ Duyên', NULL, N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn, Xuyên Không</p><p>Tác giả:&nbsp;Lâm Hiên</p><p>Năm xuất bản: 2020</p>', 2, CAST(125000.00 AS Decimal(18, 2)), 10, N'lnkhakduyn.jpg', NULL, CAST(N'2022-04-09T10:49:43.810' AS DateTime), CAST(N'2022-04-09T10:49:43.810' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'lnkhakduyn', 100, 8, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (38, N'Thú Thụ Bất Thân', NULL, N'<p>Thể loại:&nbsp;Đan Mỹ, Hiện Đại, Huyền Huyễn</p><p>Tác giả:&nbsp;Nguyệt Nguyễn</p><p>Năm xuất bản: 2019</p>', 2, CAST(200000.00 AS Decimal(18, 2)), 25, N'ththbtthn.jpg', NULL, CAST(N'2022-04-09T10:51:20.753' AS DateTime), CAST(N'2022-04-09T10:51:20.753' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'ththbtthn', 100, 8, CAST(150000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (39, N'Thể Thao Cực Hạn', NULL, N'<p>Thể loại: Action , Drama , Manhwa , Sports&nbsp;</p><p>Tác giả:&nbsp;Jo YongSeuk</p><p>Năm xuất bản: 202</p>', 3, CAST(150000.00 AS Decimal(18, 2)), 10, N'ththaocchn.jpg', NULL, CAST(N'2022-04-09T10:52:55.600' AS DateTime), CAST(N'2022-04-09T10:52:55.600' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'ththaocchn', 100, 8, CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (40, N'Legendary Moonlight Sculptor (Tập 1)', NULL, N'<p>Thể loại:&nbsp;Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả:&nbsp;&nbsp;Nam Hi Sung</p><p>Năm xuất bản: 2018</p><p><br></p>', 3, CAST(150000.00 AS Decimal(18, 2)), 10, N'legendarymoonlightsculptortp1.jpg', NULL, CAST(N'2022-04-09T10:57:45.000' AS DateTime), CAST(N'2022-04-09T11:04:07.860' AS DateTime), 1, 1, 1, NULL, N'KRNovel', N'legendarymoonlightsculptortp1', 100, 7, CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (41, N'Legendary Moonlight Sculptor (Tập 2)', NULL, N'<p>Thể loại: Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả: Nam Hi Sung</p><p>Năm xuất bản: 2018</p>', 3, CAST(150000.00 AS Decimal(18, 2)), 10, N'legendarymoonlightsculptortp2.jpg', NULL, CAST(N'2022-04-09T11:06:06.550' AS DateTime), CAST(N'2022-04-09T11:06:06.550' AS DateTime), 1, 1, 1, NULL, N'KRNovel', N'legendarymoonlightsculptortp2', 100, 7, CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (42, N'Solo Leveling (Tập 1)', NULL, N'<p>Thể loại: Romance, Drama, Fantasy, Adventure, Action</p><p>Tác gải: Jang Sung Lak</p><p>Năm xuất bản: 2021</p>', 3, CAST(200000.00 AS Decimal(18, 2)), 30, N'sololevelingtp1.jpg', NULL, CAST(N'2022-04-09T11:08:19.210' AS DateTime), CAST(N'2022-04-09T11:08:19.210' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'sololevelingtp1', 100, 5, CAST(140000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (43, N'Nhân Trùng Đại Chiến', NULL, N'<p>Thể loại: Action , Drama , Manhwa , Sports&nbsp;</p><p>Tác giả: Jung Soo Chan</p><p>Năm xuất bản: 2020</p>', 3, CAST(120000.00 AS Decimal(18, 2)), 10, N'nhntrngdichin.jpg', NULL, CAST(N'2022-04-09T11:11:08.903' AS DateTime), CAST(N'2022-04-09T11:11:08.903' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'nhntrngdichin', 100, 9, CAST(108000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (44, N'Tôi Đã Cướp Mất Đêm Đầu Của Nam Chính', NULL, N'<p>Thể loại:&nbsp;Chuyển sinh, Ngôn Tình, Cổ Đại</p><p>Tác giả:&nbsp;Hwang Do Tol</p><p>Năm xuất bản:&nbsp;2021</p>', 3, CAST(120000.00 AS Decimal(18, 2)), 30, N'tidcpmtdmducanamchnh.jpg', NULL, CAST(N'2022-04-09T11:13:34.323' AS DateTime), CAST(N'2022-04-09T11:13:34.323' AS DateTime), 1, 1, 1, NULL, N'KRNovel', N'tidcpmtdmducanamchnh', 100, 6, CAST(84000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (45, N'Thế Giới Hậu Tận Thế', NULL, N'<p>Thể loại:&nbsp;Action ,Comedy ,Manhwa , Mystery</p><p>Tác giả:&nbsp;Sing Shong</p><p>Năm xuất bản: 2022</p>', 3, CAST(150000.00 AS Decimal(18, 2)), 20, N'thgiihutnth.jpg', NULL, CAST(N'2022-04-09T11:14:49.400' AS DateTime), CAST(N'2022-04-09T11:14:49.400' AS DateTime), 1, 1, 1, NULL, N'KRNovel', N'thgiihutnth', 100, 4, CAST(120000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (46, N'Võ Đang Kỳ Hiệp', NULL, N'<p>Thể loại:&nbsp;Võ hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Sing Shong</p><p>Năm xuất bản: 2020</p>', 3, CAST(75000.00 AS Decimal(18, 2)), 0, N'vdangkhip.jpg', NULL, CAST(N'2022-04-09T11:16:43.963' AS DateTime), CAST(N'2022-04-09T11:16:43.963' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'vdangkhip', 50, 10, CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (47, N'Cha, Con Không Muốn Kết Hôn', NULL, N'<p>Thể loại:&nbsp;Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Hong Hee Su</p><p>Năm xuất bản: 2021</p>', 3, CAST(125000.00 AS Decimal(18, 2)), 10, N'chaconkhngmunkthn.jpg', NULL, CAST(N'2022-04-09T11:18:31.710' AS DateTime), CAST(N'2022-04-09T11:18:31.710' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'chaconkhngmunkthn', 50, 4, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (48, N'Tôi Đang Nuôi Dưỡng Một Con Quái Thú', NULL, N'<p>Thể loại:&nbsp;Cổ Đại, Ngôn Tình</p><p>Tác giả:&nbsp;Ireunkkot Teava</p><p>Năm xuất bản: 2022</p>', 3, CAST(85000.00 AS Decimal(18, 2)), 0, N'tidangnuidngmtconquith.jpg', NULL, CAST(N'2022-04-09T11:20:04.677' AS DateTime), CAST(N'2022-04-09T11:20:04.677' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'tidangnuidngmtconquith', 50, 2, CAST(85000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (49, N'Tôi Trở Thành Mẹ Kế Của Cinderella', NULL, N'<p>Thể loại:&nbsp;Cổ Đạ, Ngôn Tình, Xuyên Không</p><p>Tác giả: Nam Hi Yung</p><p>Năm xuất bản: 2021</p>', 3, CAST(150000.00 AS Decimal(18, 2)), 20, N'titrthnhmkcacinderella.jpg', NULL, CAST(N'2022-04-09T11:22:13.350' AS DateTime), CAST(N'2022-04-09T11:22:13.350' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'titrthnhmkcacinderella', 50, 6, CAST(120000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (50, N'Tàn Tinh Tái Thế', NULL, N'<p>Thể loại:&nbsp;Action, Adventure, Fantasy, Shounen</p><p>Tác giả:&nbsp;Lee Chang-Son</p><p>Năm xuất bản: 2022</p>', 3, CAST(125000.00 AS Decimal(18, 2)), 10, N'tntinhtith.jpg', NULL, CAST(N'2022-04-09T11:24:11.080' AS DateTime), CAST(N'2022-04-09T11:24:11.080' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'tntinhtith', 50, 3, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (51, N'Solo Leveling (Tập 2)', NULL, N'<p>Thể loại:&nbsp;Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả:&nbsp;Jang Sung Lak</p><p>Năm xuất bản: 2021</p>', 3, CAST(200000.00 AS Decimal(18, 2)), 20, N'sololevelingtp2.jpg', NULL, CAST(N'2022-04-09T11:26:23.290' AS DateTime), CAST(N'2022-04-09T11:26:23.290' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'sololevelingtp2', 100, 5, CAST(160000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (52, N'Câu Chuyện Cổ Tích Của Mẹ Kế', NULL, N'<p>Thể loại:&nbsp;Cổ Đạ ,Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Jo YongSeuk</p><p>Năm xuất bản: 2020</p>', 3, CAST(85000.00 AS Decimal(18, 2)), 10, N'cuchuynctchcamk.jpg', NULL, CAST(N'2022-04-09T11:28:56.510' AS DateTime), CAST(N'2022-04-09T11:28:56.510' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'cuchuynctchcamk', 100, 10, CAST(76500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount], [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived], [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice]) VALUES (53, N'Thiếu Niên Phương Sĩ', NULL, N'<p>Thể loại:&nbsp;Võ hiệp ,Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Woon Sowol</p><p>Năm xuất bản: 2021</p>', 3, CAST(125000.00 AS Decimal(18, 2)), 10, N'thiuninphngs.jpg', NULL, CAST(N'2022-04-09T11:30:21.717' AS DateTime), CAST(N'2022-04-09T11:30:21.717' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'thiuninphngs', 100, 8, CAST(112500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (1, N'Tsuki Lightnovel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (2, N'Amak', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (3, N'Hikari Lightnovel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (4, N'Shine Novel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (5, N'IPM', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (6, N'Skybook', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (7, N'AZ Việt Nam', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (8, N'Nhã Nam', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (9, N'Kim Đồng', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo]) VALUES (10, N'Zgroup', N'thumb-6.jpg')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions]) VALUES (2, N'Staff', N'Staff')
INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions]) VALUES (3, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON 

INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (1, N'Đơn hàng đã đặt', N'Đơn hàng đã đặt')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (3, N'Đang vận chuyển', N'Đang vận chuyển')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (4, N'Đơn hàng đã nhận', N'Đơn hàng đã nhận')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions]) VALUES (5, N'Đơn hàng đã giao', N'Đơn hàng đã giao')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsPublished]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Homeflag]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (N'') FOR [Descriptions]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Roles]
GO
ALTER TABLE [dbo].[AttributePrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributePrices_Attribute] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attribute] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributePrices] CHECK CONSTRAINT [FK_AttributePrices_Attribute]
GO
ALTER TABLE [dbo].[AttributePrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributePrices_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[AttributePrices] CHECK CONSTRAINT [FK_AttributePrices_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustommerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_TransactStatus] FOREIGN KEY([TransactionStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactionStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_TransactStatus]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Publisher] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Publisher]
GO
