USE [master]
GO
/****** Object:  Database [WebMayTinh]    Script Date: 11/11/2023 10:39:44 PM ******/
CREATE DATABASE [WebMayTinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebMayTinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebMayTinh.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebMayTinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebMayTinh_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebMayTinh] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebMayTinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebMayTinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebMayTinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebMayTinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebMayTinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebMayTinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebMayTinh] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebMayTinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebMayTinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebMayTinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebMayTinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebMayTinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebMayTinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebMayTinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebMayTinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebMayTinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebMayTinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebMayTinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebMayTinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebMayTinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebMayTinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebMayTinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebMayTinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebMayTinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebMayTinh] SET  MULTI_USER 
GO
ALTER DATABASE [WebMayTinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebMayTinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebMayTinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebMayTinh] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebMayTinh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebMayTinh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebMayTinh', N'ON'
GO
ALTER DATABASE [WebMayTinh] SET QUERY_STORE = OFF
GO
USE [WebMayTinh]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Descriptions] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Introduce]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Introduce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[order] [int] NULL,
	[meta] [nvarchar](50) NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_GioiThieu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[img] [nvarchar](30) NULL,
	[description] [nvarchar](max) NULL,
	[detail] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[User_id] [nvarchar](100) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[CustomerPhone] [nchar](20) NULL,
	[CustomerAddress] [nvarchar](200) NULL,
	[CustomerEmail] [nvarchar](100) NULL,
	[Descriptions] [nvarchar](100) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product_id] [int] NOT NULL,
	[Order_id] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[price] [float] NULL,
	[newprice] [float] NULL,
	[img] [nvarchar](100) NULL,
	[description] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
	[categoryid] [int] NULL,
	[quantity] [int] NULL,
	[typeid] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Rating] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[User_id] [int] NULL,
	[Product_id] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](50) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_HinhChieu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/11/2023 10:39:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[status] [bit] NULL,
	[Quyenadmin] [nvarchar](10) NULL,
	[Quyenuser] [nvarchar](10) NULL,
	[roleId] [int] NULL,
	[GroupID] [varchar](20) NULL,
	[buyLastDate] [datetime] NULL,
	[countOrder] [int] NULL,
	[amountSpent] [float] NULL,
 CONSTRAINT [PK_DangNhap_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Apple IPhone', N'/Content/img/iPhone-(Apple)42-b_16.jpg', N'apple-iphone', 1, 1, CAST(N'2022-03-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Sam Sung', N'/Content/img/Samsung42-b_25.jpg', N'sanm-sung', 1, 2, CAST(N'2021-03-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Oppo', N'/Content/img/OPPO42-b_23.jpg', N'op-po', 1, 3, CAST(N'2023-03-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Nokia', N'/Content/img/Nokia42-b_21.jpg', N'noki-a', 1, 4, CAST(N'2018-03-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (5, N'Xiaomi', N'/Content/img/logo-xiaomi-big-220x48.jpg', N'xiaomi-', 1, NULL, CAST(N'2021-04-25T20:01:00' AS SmallDateTime))
INSERT [dbo].[Category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (7, N'Vivo', N'/Content/img/Vivo42-b_50.jpg', N'vivo-', 1, NULL, CAST(N'2021-04-27T16:47:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [Fullname], [Email], [Descriptions], [CreatedDate]) VALUES (27, N'Hoàng Nhi', N'Nhi@gmail.com', N'Tôi muốn hỏi chổ mình cần tuyển nhân viên ko ?', CAST(N'2022-06-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Contact] ([id], [Fullname], [Email], [Descriptions], [CreatedDate]) VALUES (28, N'Tiên Viên ', N'Vien@gmail.com', N'khi nào thì bên mình có máy tính Dell I8 ?', CAST(N'2018-06-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Contact] ([id], [Fullname], [Email], [Descriptions], [CreatedDate]) VALUES (29, N'Hưng Đỗ Công', N'hungdocong82@gmail.com', N'Quy trình đổi trả hàng của cửa hàng mình như thế nào ạ?', CAST(N'2021-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Contact] ([id], [Fullname], [Email], [Descriptions], [CreatedDate]) VALUES (30, N'ly', N'lythien@gmail.com', N'hãy cập nhật thêm nhiều sản phẩm mới hơn', CAST(N'2023-04-28T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Introduce] ON 

INSERT [dbo].[Introduce] ([id], [NoiDung], [order], [meta], [datebegin]) VALUES (1, N'3Brothers là một trong những trang web đặc thù áp dụng công nghệ thông tin vào hoạt động: bán sản phẩm điện thoại qua mạng và sau này sẽ có xu hường mở rộng. 3Brothers Là một công ty chuyên nhập điện thoại di động từ các công ty phân phối nổi tiếng như Nokia, Samsung, Iphone, Oppo…để bán lẻ lại cho người tiêu dùng. Việc giao dịch với khách hàng chủ yếu diễn ra tại đây. Khi hết hàng 3Brothers sẽ yêu cầu nhập hàng từ công ty. 
Mục tiêu của việc xây dựng trang web này nhằm giúp cho khách hàng có thể mua hàng trực tiếp từ xa thông qua mạng internet phổ biến. Khách hàng ở nhà hay tại công ty vẫn có thể dễ dàng tham khảo thông tin sản phẩm mình tìm, so sánh giá cả các mặt hàng và lựa chọn cho mình loại sản phẩm phù hợp nhu cầu của mình, giúp công việc mua sắm một cách nhanh chóng, tiện lợi, tiết kiệm thời gian, đáp ứng được nhu cầu thực tế. Hệ thống tìm kiếm dễ dàng, giao diện thân thiện. Chỉ cần đăng nhập vào hệ thống với tài khoản đã có hay chỉ cần vài thao tác đăng kí đơn giản là khách hàng có thể tự do chọn mua và tạo đơn đặt hàng tại hệ thống 3Brothers. ', 1, N'gioi-thieu', CAST(N'2018-04-14T00:00:00' AS SmallDateTime))
INSERT [dbo].[Introduce] ([id], [NoiDung], [order], [meta], [datebegin]) VALUES (2, N'Shop của chúng tôi luôn đáp ứng được mọi yêu cầu của khách hàng và luôn nhiệt tình ', 2, N'gioi-thieu', CAST(N'2018-04-04T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Introduce] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Giới Thiệu', NULL, N'gioi-thieu', 1, 3, CAST(N'2018-03-09T00:00:00' AS SmallDateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (2, N'Cửa Hàng', NULL, N'cua-hang', 1, 1, CAST(N'2019-04-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (3, N'Giỏ Hàng', NULL, N'gio-hang', 0, 2, CAST(N'2019-04-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Tin tức - sự kiện', NULL, N'tin-tuc-su-kien', 1, 4, CAST(N'2018-03-09T00:00:00' AS SmallDateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (6, N'Liên hệ', NULL, N'lien-he', 1, 6, CAST(N'2018-03-09T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([id], [name], [img], [description], [detail], [meta], [hide], [order], [datebegin]) VALUES (5, N'Bảo hành sản phẩm', N'pngwing.com (7).png', N'', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	Thế Giới Di Động c&oacute; 2 hỗ trợ d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng mua điện thoại tại TGDĐ trong thời gian đi bảo h&agrave;nh như sau:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	1. Thế Giới Di Động cung cấp cho kh&aacute;ch h&agrave;ng một điện thoại tương tự (đ&atilde; qua sử dụng) để kh&aacute;ch h&agrave;ng sử dụng tạm thời trong thời gian bảo h&agrave;nh. Chi tiết m&aacute;y cung cấp qu&yacute; kh&aacute;ch c&oacute; thể hỏi nh&acirc;n vi&ecirc;n si&ecirc;u thị hoặc xem tr&ecirc;n giấy tiếp nhận bảo h&agrave;nh/sửa chữa dịch vụ.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	2. Nếu m&aacute;y gửi đi bảo h&agrave;nh qu&aacute; 15 ng&agrave;y h&atilde;ng bảo h&agrave;nh chưa trả m&aacute;y cho kh&aacute;ch h&agrave;ng, TGDĐ c&oacute; thể hỗ trợ kh&aacute;ch thu lại m&aacute;y hỏng với mức gi&aacute; hỗ trợ (đối với c&aacute;c sản phẩm iPhone sẽ &aacute;p dụng theo ch&iacute;nh s&aacute;ch của Apple).</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	Lưu &yacute;: Chỉ &aacute;p dụng thu mua cho điện thoại v&agrave; phải c&ograve;n trong điều kiện bảo h&agrave;nh.</p>
', N'bao-hanh-san-pham-', 1, 1, CAST(N'2023-04-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[News] ([id], [name], [img], [description], [detail], [meta], [hide], [order], [datebegin]) VALUES (6, N'Chính sách đổi trả', N'tk.png28042023.png', N'', N'<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	1.&nbsp;<span style="box-sizing: border-box; font-weight: 700;">C&ograve;n đầy đủ hộp sản phẩm (mất hộp thu ph&iacute; 2%)</span>. Trong trường hợp m&aacute;y kh&ocirc;ng l&ecirc;n nguồn hoặc kh&ocirc;ng x&aacute;c định được lỗi, phải chuyển Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng thẩm định trước khi ra quyết định nhập đổi, nhập trả.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	2.&nbsp;<span style="box-sizing: border-box; font-weight: 700;">C&ograve;n đầy đủ phiếu bảo h&agrave;nh</span>&nbsp;(nếu c&oacute;) v&agrave; phụ kiện đi k&egrave;m (mất thu ph&iacute; theo qui định v&agrave; lớn nhất l&agrave; 5% tr&ecirc;n gi&aacute; ho&aacute; đơn).</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">
	Qu&agrave; khuyến m&atilde;i: thu ph&iacute; theo gi&aacute; ho&agrave;n lại do TGDĐ c&ocirc;ng bố khi b&aacute;n sản phẩm. Nếu kh&ocirc;ng c&ocirc;ng bố gi&aacute; trị khuyến m&atilde;i th&igrave; sẽ thu ph&iacute; kh&ocirc;ng lớn hơn 5% gi&aacute; trị cho mỗi m&oacute;n qu&agrave; khuyến m&atilde;i .</p>
', N'chinh-sach-doi-tra-', 1, 1, CAST(N'2023-04-28T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (18, CAST(N'2019-01-20T17:17:54.990' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'a', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (19, CAST(N'2019-01-20T17:23:34.540' AS DateTime), N'khachhang', N'nguyen van a', N'121312              ', N'điện biên phủ', N'khachhang@gmail.com', N'', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (20, CAST(N'2019-01-20T17:24:46.300' AS DateTime), N'khachhang', N'nguyen van a', N'121312              ', N'điện biên phủ', N'khachhang@gmail.com', N'', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (21, CAST(N'2019-02-21T14:25:06.343' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'a', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (22, CAST(N'2019-02-21T14:26:17.243' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'zxc', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (23, CAST(N'2019-02-21T15:22:49.560' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'gà con
', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (24, CAST(N'2019-02-21T15:29:25.587' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'x', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (25, CAST(N'2019-03-23T14:25:14.470' AS DateTime), N'vinh', N'Quang Vinh', N'012358544           ', N'Q.Thu đức', N'QVinh@gmail.com', N'a', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (26, CAST(N'2019-03-23T14:25:58.797' AS DateTime), N'vinh', N'Quang Vinh', N'012358544           ', N'Q.Thu đức', N'QVinh@gmail.com', N'z', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (27, CAST(N'2019-03-23T14:32:52.153' AS DateTime), N'khachhang1', N'Elo', N'1231231231          ', N'hcm', N'khachhang1@gmail.com', N'alo', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (28, CAST(N'2019-03-31T15:43:06.920' AS DateTime), N'Công Hưng', N'Công Hưng', N'0362243247          ', N'Hà nội', N'hungdocong82@gmail.com', N'ok', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (41, CAST(N'2019-04-12T15:08:30.557' AS DateTime), N'vinh', N'Quang Vinh', N'0362243247          ', N'ha noi, viet nam, cau giay', N'hungdocong82@gmail.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (42, CAST(N'2019-04-12T15:17:54.483' AS DateTime), N'vinh', N'Quang Vinh', N'0362243247          ', N'ha noi, viet nam, cau giay', N'superjunior25251325@gamil.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (43, CAST(N'2019-04-12T15:20:34.423' AS DateTime), N'vinh', N'Quang Vinh', N'0362243247          ', N'ha noi, viet nam, cau giay', N'superjunior25251325@gamil.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (44, CAST(N'2019-04-12T15:20:38.997' AS DateTime), N'vinh', N'Quang Vinh', N'0362243247          ', N'ha noi, viet nam, cau giay', N'superjunior25251325@gamil.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (45, CAST(N'2019-04-12T15:22:59.407' AS DateTime), N'khachhang1', N'Elo', N'0362243247          ', N'ha noi, viet nam, cau giay', N'superjunior25251325@gamil.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (46, CAST(N'2019-05-12T15:57:16.243' AS DateTime), N'Công Hưng', N'Công Hưng', N'0362243247          ', N'ha noi, viet nam, cau giay', N'superjunior25251325@gamil.com', N'ok', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (47, CAST(N'2019-05-12T19:55:51.273' AS DateTime), NULL, N'Trương Tam Phong', N'0362243247          ', N'HN', NULL, N'OK', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (48, CAST(N'2019-05-12T20:00:42.110' AS DateTime), NULL, N'Trương Tam Phong', N'0362243247          ', N'HN', NULL, N'OK', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (49, CAST(N'2019-05-12T20:01:19.907' AS DateTime), NULL, N'evqn', N'0362243247          ', N'HN', NULL, N'OK', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (50, CAST(N'2019-06-13T14:12:27.107' AS DateTime), NULL, N'Công Hưng', N'0362243247          ', N'HN', NULL, N'OK', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (54, CAST(N'2019-06-17T15:28:40.210' AS DateTime), N'khachhang1', N'Elo', N'0362243247          ', N'ha noi, viet nam, cau giay', N'hungdocong82@gmail.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (55, CAST(N'2021-04-24T20:16:53.477' AS DateTime), N'hung5001', N'Đỗ Công Hưng', N'0362243247          ', N'Hà Nội', N'hungdocong82@gmail.com', N'ok', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (56, CAST(N'2021-04-27T17:12:09.063' AS DateTime), N'truongtp', N'Trương Tam Phong', N'0987654321          ', N'Núi Võ Đang', N'abcdef@gmail.com', N'ok', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (57, CAST(N'2021-04-28T11:41:37.113' AS DateTime), N'vinh', N'Quang Vinh', N'0789543125          ', N'Q.Thu đức', N'acbdef@gmail.com', N'ok', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (63, CAST(N'2023-04-27T18:53:37.340' AS DateTime), NULL, N'khachhang1', N'0325252             ', N'112 AAA', N'a@gmail.com', N'lllllllllllllll', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (64, CAST(N'2023-04-27T18:56:41.030' AS DateTime), NULL, N'ly', N'0325252             ', N'112 AAA', N'a@gmail.com', N'áddsdc', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (66, CAST(N'2023-04-27T18:59:47.160' AS DateTime), NULL, N'ly', N'0325252             ', N'112 AAA', N'a@gmail.com', N'16514', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (67, CAST(N'2023-04-27T19:03:16.880' AS DateTime), NULL, N'ly', N'0325252             ', N'112 AAA', N'a@gmail.com', N'16514', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (68, CAST(N'2023-04-27T19:07:15.297' AS DateTime), NULL, N'ly', N'0325252             ', N'112 AAA', N'a@gmail.com', N'llllll', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (69, CAST(N'2023-04-27T19:08:02.837' AS DateTime), NULL, N'ly', N'0325252             ', N'112 AAA', N'a@gmail.com', N'11111111111', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (70, CAST(N'2023-04-27T21:51:36.417' AS DateTime), N'lythien', N'thien', N'0987654321          ', N'HCM', N'lythien@gmail.com', N'hihihi', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (71, CAST(N'2023-04-28T00:21:47.730' AS DateTime), N'lythien', N'thien', N'0987654321          ', N'HCM', N'lythien@gmail.com', N'hãy gói trong hộp', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (72, CAST(N'2023-04-28T01:23:43.453' AS DateTime), N'alo', N'helo', N'0845613200          ', N'1254 ABBC', N'lythien@gmail.com', N'Sao chênh giá quá vậy, lừa đảo à', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (73, CAST(N'2023-04-28T01:24:47.220' AS DateTime), N'alo', N'helo', N'0845613200          ', N'1254 ABBC', N'alo@gmail.com', N'ádfghfnbdvsa', 1)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (74, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (75, CAST(N'2023-04-28T07:48:50.880' AS DateTime), N'admin', N'admin', N'0915535165          ', N'hcm', N'aa@gmail.com', N'qwertyuio', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (76, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (77, NULL, N'lythien', N'ly thien', N'+84935824063        ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (78, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (79, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (80, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (81, CAST(N'2023-05-11T20:53:41.123' AS DateTime), N'lythien', N'ly thien', N'0987654321          ', N'HCM', N'lythien@gmail.com', N'123', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (82, NULL, N'lythien', N'ly thien', N'0987654321          ', N'1234 abc', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (83, NULL, N'admin', N'admin', N'                    ', N'', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (84, NULL, N'lythien', N'ly thien', N'                    ', N'', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (85, NULL, N'lythien', N'ly thien', N'                    ', N'', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (86, CAST(N'2023-05-12T08:59:21.520' AS DateTime), N'holy', N'Lý', N'0935824063          ', N'12/3 ap 3', N'ly@gmail.com', N'heluuuuuuuuuuuuu', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (87, CAST(N'2023-05-17T15:58:14.797' AS DateTime), N'lythien', NULL, N'0987654321          ', N'HCM', N'lythien@gmail.com', N'ahahah', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (88, NULL, N'lythien', N'ly thien', N'0987654321          ', N'HCM', NULL, N'OK', NULL)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (89, CAST(N'2023-05-25T23:22:05.973' AS DateTime), N'alo', NULL, N'84561320012         ', N'1254 ABBC', N'alo@gmail.com', N'aaaa', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (90, CAST(N'2023-10-19T07:37:54.363' AS DateTime), N'lythien', N'ly thien', N'0987654321          ', N'HCM', N'lythien@gmail.com', N'.....', 0)
INSERT [dbo].[Order] ([id], [CreatedDate], [User_id], [CustomerName], [CustomerPhone], [CustomerAddress], [CustomerEmail], [Descriptions], [status]) VALUES (91, CAST(N'2023-10-19T07:38:42.463' AS DateTime), N'lythien', NULL, N'0987654321          ', N'HCM', N'lythien@gmail.com', N'....', 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (1, 2, 23, 1, 18000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (2, 2, 24, 1, 18000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (3, 11, 23, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (4, 11, 24, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (5, 12, 19, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (6, 12, 20, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (7, 12, 21, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (8, 12, 22, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (9, 12, 27, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (10, 12, 42, 1, 25000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (11, 15, 19, 2, 36000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (12, 15, 41, 1, 18000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (13, 15, 42, 2, 36000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (14, 19, 19, 1, 21000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (15, 19, 28, 1, 21000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (16, 19, 46, 2, 42000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (17, 19, 54, 1, 21000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (18, 29, 26, 4, 120000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (19, 29, 41, 1, 30000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (20, 29, 46, 1, 30000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (21, 29, 55, 2, 60000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (22, 30, 25, 1, 29000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (23, 30, 26, 1, 29000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (24, 30, 43, 1, 29000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (25, 30, 44, 1, 29000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (26, 33, 21, 1, 29000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (27, 34, 25, 1, 10000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (28, 34, 26, 1, 10000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (29, 40, 20, 1, 22200000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (30, 40, 27, 1, 22200000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (31, 41, 27, 1, 22500000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (32, 43, 22, 1, 10100000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (33, 44, 27, 1, 8000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (34, 49, 27, 5, 22500000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (35, 53, 45, 2, 2400000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (36, 57, 45, 1, 400000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (37, 29, 56, 2, 60000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (38, 12, 56, 3, 75000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (39, 55, 56, 2, 1400000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (40, 19, 56, 1, 21000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (41, 29, 57, 1, 30000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (42, 56, 57, 10, 6000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (43, 15, 66, 1, 18000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (44, 8, 68, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (45, 58, 70, 1, 29750000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (46, 15, 71, 2, 36000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (47, 9, 72, 1, 18000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (48, 11, 72, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (49, 58, 73, 1, 29750000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (50, 8, 75, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (51, 8, 81, 1, 35000000)
INSERT [dbo].[Order_Detail] ([id], [Product_id], [Order_id], [Quantity], [Amount]) VALUES (52, 9, 90, 1, 18000000)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (2, N'Iphone 7 Plus 32GB', 20000000, 18000000, N'iphone-7-plus-32gb-gold-600x600-600x600.jpg', N'<p>
	Th&ocirc;ng số kỹ thuật M&agrave;n h&igrave;nh: LED-backlit IPS LCD, 5.5&quot;, Retina HD Hệ điều h&agrave;nh: iOS 12 Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP Camera trước: 7 MP CPU: Apple A10 Fusion 4 nh&acirc;n 64-bit RAM: 3 GB Bộ nhớ trong: 32 GB</p>
', N'Iphone-7-Plus-32GB', NULL, 1, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 1, 20, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (8, N'Iphone XS Max 512GB', 39900000, 35000000, N'iphone-xs-max-512gb-gold-600x600.jpg', N'Là chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.', N'iphone-xs-max-512', 1, 3, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 40, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (9, N'Iphone XS Max 256GB', 20000000, 18000000, N'iphone-xs-max-256gb-white-600x600.jpg', N'Sau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo..', N'iphone-xs-max-256', 1, 4, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 49, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (11, N'Iphone XS 256GB', 40000000, 35000000, N'iphone-xs-256gb-white-600x600.jpg', N'Tích hợp chip Apple A12 hiệu năng mạnh mẽ bậc nhất
iPhone Xs tích hợp con chip mới của Apple với những hiệu năng mạnh mẽ đến vượt trội.

Apple A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên của hãng với 6 nhân giúp điện thoại iPhone Xs có thể chiến được mọi loại game cũng như thao tác thường ngày với khả năng tiết kiệm điện so với thế hệ trước.', N'iphonexs-256', 1, 6, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 32, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (12, N'Iphone XS Max 64GB', 25000000, NULL, N'iphone-xs-max-gray-600x600.jpg', N'Đặc điểm nổi bật của iPhone Xs Max 64GB

Tìm hiểu thêm
Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim

Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.', N'iphone-xs-max-64', 1, 7, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 35, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (14, N'Iphone X ', 27000000, 17000000, N'iphone-x-256gb-20-600x600.jpg', N'Đặc điểm nổi bật của iPhone X 256GB

Tìm hiểu thêm
Tìm hiểu thêm
Tìm hiểu thêm
Tìm hiểu thêm
Tìm hiểu thêm
Tìm hiểu thêm
Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim

iPhone X được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp.', N'Iphone-x', 1, 8, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 10, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (15, N'Iphone XS 64GB', 18000000, NULL, N'iphone-xs-gold-600x600.jpg', N'Màn hình:	OLED, 5.8", Super Retina
Hệ điều hành:	iOS 12
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:	Apple A12 Bionic 6 nhân', N'iphone-xs-64gb', 1, 9, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 1, 1, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (19, N'Iphone 8 Plus', 21000000, NULL, N'iphone-8-plus-256gb-red-600x600.jpg', N'Đặc điểm nổi bật của iPhone 8 Plus 256GB

Tìm hiểu thêm
Tìm hiểu thêm
Tìm hiểu thêm
Bộ sản phẩm chuẩn: Hộp, Pin, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim

iPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến.', N'iphone-8-plus', 1, 12, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 23, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (20, N'Iphone Xr 256GB', 22500000, 21000000, N'iphone-xr-256gb-white-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.1", Liquid Retina
Hệ điều hành:	iOS 12
Camera sau:	12 MP
Camera trước:	7 MP
CPU:	Apple A12 Bionic 6 nhân
RAM:	3 GB
Bộ nhớ trong:	256 GB', N'iphone-xr', 1, 13, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 1, 33, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (29, N'Samsung Galaxy S10 512GB', 30000000, NULL, N'samsung-galaxy-s10-plus-512gb-ceramic-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Dynamic AMOLED, 6.4", Quad HD+ (2K+)
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 12 MP & Phụ 12 MP, 16 MP
Camera trước:	Chính 10 MP & Phụ 8 MP
CPU:	Exynos 9820 8 nhân 64-bit
RAM:	8 GB
Bộ nhớ trong:	512 GB', N'samsungs10-galaxy', 1, 2, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 2, 36, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (30, N'Samsung Galaxy Note 9 512GB', 29000000, NULL, N'samsung-galaxy-note-9-512gb-blue-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.4", Quad HD+ (2K+)
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	8 MP
CPU:	Exynos 9810 8 nhân 64-bit
RAM:	8 GB
Bộ nhớ trong:	512 GB', N'samsung-note9-512gb', 1, 3, CAST(N'2022-04-04T00:00:00' AS SmallDateTime), 2, 200, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (31, N'Samsung Galaxy Note 9', 21100000, NULL, N'samsung-galaxy-note-9-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.4", Quad HD+ (2K+)
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	8 MP
CPU:	Exynos 9810 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'samsung-note9', 1, 4, CAST(N'2018-05-23T00:00:00' AS SmallDateTime), 2, 120, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (32, N'Samsung Galaxy S10+', 30000000, NULL, N'samsung-galaxy-s10-plus-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Dynamic AMOLED, 6.4", Quad HD+ (2K+)
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 12 MP & Phụ 12 MP, 16 MP
Camera trước:	Chính 10 MP & Phụ 8 MP
CPU:	Exynos 9820 8 nhân 64-bit
RAM:	8 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ', N'samsung-s10', 1, 3, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 55, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (33, N'Samsung Galaxy S9 Plus', 29000000, NULL, N'samsung-galaxy-s9-plus-64gb-vang-do-13-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	8 MP
CPU:	Exynos 9810 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', N'samsung-galaxys9', 1, 4, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 111, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (34, N'Samsung Galaxy A50 128GB', 10000000, NULL, N'samsung-galaxy-a50-128gb-blue-docquyen-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.4", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 25 MP & Phụ 8 MP, 5 MP
Camera trước:	25 MP
CPU:	Exynos 9610 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G', N'samsung-a50', 1, 5, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 200, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (35, N'Samsung Galaxy A7', 800000, NULL, N'samsung-galaxy-a7-2018-128gb-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.0", Full HD+
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	Chính 24 MP & Phụ 8 MP, 5 MP
Camera trước:	24 MP
CPU:	Exynos 7885 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ', N'samsung-a7', 1, 6, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 111, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (36, N'Samsung Galaxy A50', 7000000, NULL, N'samsung-galaxy-a50-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	Super AMOLED, 6.4", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 25 MP & Phụ 8 MP, 5 MP
Camera trước:	25 MP
CPU:	Exynos 9610 8 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	4000 mAh, có sạc nhanh', N'samsung-a50+', 1, 7, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 1111, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (37, N'Samsung Galaxy M20', 5000000, NULL, N'samsung-galaxy-m20-1-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	PLS TFT LCD, 6.3", Full HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 13 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	Exynos 7904 8 nhân 64-bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ', N'samsung-m20', 1, 8, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 122, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (38, N'Samsung Galaxy J6 Plus', 3990000, NULL, N'samsung-galaxy-j6-plus-7-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.0", HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 13 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	Qualcomm Snapdragon 425 4 nhân 64-bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G', N'samsung j6', 1, 9, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 2, 122, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (39, N'Oppo Find X', 22500000, NULL, N'oppo-find-x-1-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	AMOLED, 6.42", Full HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 16 MP & Phụ 20 MP
Camera trước:	25 MP
CPU:	Snapdragon 845 8 nhân
RAM:	8 GB
Bộ nhớ trong:	256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3730 mAh, có sạc nhanh', N'oppo-find-x', 1, 10, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 123, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (40, N'Oppo R17 Pro', 22200000, NULL, N'oppo-r17-pro-14-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	AMOLED, 6.4", Full HD+
Hệ điều hành:	ColorOS 5.2 (Android 8.1)
Camera sau:	Chính 12 MP & Phụ 20 MP, TOF 3D
Camera trước:	25 MP
CPU:	Snapdragon 710 8 nhân 64-bit
RAM:	8 GB
Bộ nhớ trong:	128 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3700 mAh, có sạc nhanh', N'oppo-r17', 1, 11, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 234, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (41, N'Oppo F11 Pro', 22500000, NULL, N'oppo-f11-pro-2nambh-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	LTPS LCD, 6.5", Full HD+
Hệ điều hành:	Android 9.0 (Pie)
Camera sau:	Chính 48 MP & Phụ 5 MP
Camera trước:	16 MP
CPU:	MediaTek Helio P70 8 nhân
RAM:	6 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Micro SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	4000 mAh, có sạc nhanh', N'oppo-f11-pro', 1, 2, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 222, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (42, N'Oppo F9 6GB', 15000000, NULL, N'oppo-f9-6gb-red-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	LTPS LCD, 6.3", Full HD+
Hệ điều hành:	ColorOS 5.2 (Android 8.1)
Camera sau:	Chính 16 MP & Phụ 2 MP
Camera trước:	25 MP
CPU:	MediaTek Helio P60 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3500 mAh, có sạc nhanh', N'oppo-f9', 1, 3, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 123, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (43, N'Oppo F7', 10100000, NULL, N'oppo-f7-red-mtp-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	LTPS LCD, 6.23", Full HD+
Hệ điều hành:	ColorOS 5.0 (Android 8.1)
Camera sau:	16 MP
Camera trước:	25 MP
CPU:	MediaTek Helio P60 8 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3400 mAh', N'oppo-f7', 1, 4, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 333, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (44, N'Oppo A7', 8000000, NULL, N'oppo-a7-green-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.2", HD+
Hệ điều hành:	ColorOS 5.2 (Android 8.1)
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	16 MP
CPU:	Qualcomm Snapdragon 450 8 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	4230 mAh', N'oppo-a7', 1, 5, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 333, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (45, N'OPPO A3s', 3500000, NULL, N'oppo-a3s-32gb-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.2", HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	8 MP
CPU:	Qualcomm Snapdragon 450 8 nhân 64-bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	4230 mAh', N'oppo-a3', 1, 6, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 2323, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (46, N'Oppo A3 16GB', 3000000, 2700000, N'oppo-a3s-16gb-1853-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.2", HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	8 MP
CPU:	Qualcomm Snapdragon 450 8 nhân 64-bit
RAM:	2 GB
Bộ nhớ trong:	16 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	4230 mAh', N'oppo-a3s', 1, 7, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 3, 333, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (47, N'Nokia 8.1', 8000000, NULL, N'nokia-81-silver-18thangbh-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.18”, Full HD+
Hệ điều hành:	Android 9 Pie (Android One)
Camera sau:	Chính 12 MP & Phụ 13 MP
Camera trước:	20 MP
CPU:	Snapdragon 710 8 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3500 mAh, có sạc nhanh', N'nokia-8.1', 1, 8, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 4, 221, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (48, N'Nokia 6.1 Plus', 5000000, NULL, N'nokia-61-plus-2-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 5.8", Full HD+
Hệ điều hành:	Android 8 Oreo (Android One)
Camera sau:	Chính 16 MP & Phụ 5 MP
Camera trước:	16 MP
CPU:	Qualcomm Snapdragon 636 8 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3060 mAh, có sạc nhanh', N'nokia-6.1', 1, 5, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 4, 123, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (49, N'Nokia 5.1 Plus', 4500000, NULL, N'nokia-51-plus-black-18thangbh-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 5.8", HD+
Hệ điều hành:	Android 8 Oreo (Android One)
Camera sau:	Chính 13 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	MediaTek Helio P60 8 nhân 64-bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ', N'noia-5.1', 1, 6, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 4, 123, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (50, N'Nokia 3.1 Plus', 4000000, 3000000, N'nokia-31-plus-18thangbh-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	IPS LCD, 6.0", HD+
Hệ điều hành:	Android 8 Oreo (Android One)
Camera sau:	Chính 13 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	MediaTek MT6762 8 nhân 64-bit (Helio P22)
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (3GB data/ tháng). Giá từ 150.000đ
Dung lượng pin:	3500 mAh', N'nokia-3.1', 1, 7, CAST(N'2022-03-13T00:00:00' AS SmallDateTime), 4, 321, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (51, N'Nokia 2.1', 3500000, NULL, N'nokia-21-black-giatot-600x600.jpg', N'nokia-21-black-giatot-600x600.jpg', N'nokia-2.1', 1, 8, CAST(N'2018-05-23T00:00:00' AS SmallDateTime), 4, 455, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (52, N'Nokia 8110', 1000000, NULL, N'nokia-8810-4g-600x600.jpg', N'THÔNG SỐ KỸ THUẬT
Màn hình:	TFT, 2.4", QVGA
Hệ điều hành:	KaiOS
Camera sau:	2 MP
CPU:	Qualcomm Snapdragon 205 Mobile Platform
RAM:	512 MB
Bộ nhớ trong:	4 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 32 GB
Thẻ SIM:
Nano SIM & Micro SIM, Hỗ trợ 4G
HOTSIM VIETTEL GÔGÔ 4G (2.5GB data/ tháng). Giá từ 80.000đ
Dung lượng pin:	1500 mAh', N'nokia-8110', 1, 9, CAST(N'2018-05-23T00:00:00' AS SmallDateTime), 4, 15, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (53, N'Nokia 3310', 1200000, NULL, N'nokia-3310-2017-black-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	TFT, 2.4", 65.536 màu
Danh bạ:	2000 số
Thẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB
Camera:	2 MP
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	1200 mAh', N'nokia-3310', 1, 10, CAST(N'2019-05-23T00:00:00' AS SmallDateTime), 4, 9, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (54, N'Nokia 230', 1500000, NULL, N'nokia-230-khong-the-blue-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	TFT, 2.8", 65.536 màu
Danh bạ:	1000 số
Thẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB
Camera:	2 MP
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	1200 mAh', N'nokia-230', 1, 11, CAST(N'2018-05-23T00:00:00' AS SmallDateTime), 4, 6, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (55, N'Nokia 210', 800000, 700000, N'nokia-210-gray-1-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	TFT, 2.4", 65.536 màu
Danh bạ:	500 số
Thẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB
Camera:	0.3 MP
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	1020 mAh', N'nokia-210', 1, 12, CAST(N'2019-05-02T00:00:00' AS SmallDateTime), 4, 11, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (56, N'Nokia 150', 700000, 600000, N'nokia-150-khong-the-nho-6-300x300.jpg', N'Thông số kỹ thuật
Màn hình:	TFT, 2.4", 65.536 màu
Danh bạ:	500 số
Thẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB
Camera:	VGA (480 x 640 pixels)
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	1020 mAh', N'nokia-150', 1, 13, CAST(N'2018-05-23T00:00:00' AS SmallDateTime), 4, 22, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (57, N'Nokia-106', 400000, NULL, N'nokia-106-2018-600x600.jpg', N'Thông số kỹ thuật
Màn hình:	TFT, 1.8", 65.536 màu
Danh bạ:	2000 số
Jack cắm tai nghe:	3.5 mm
Radio FM:	Có
Dung lượng pin:	800 mAh', N'nokia-106', 1, 14, CAST(N'2019-05-22T00:00:00' AS SmallDateTime), 4, 24, 2)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (58, N'Điện Thoại iPhone 12 Pro Max 128GB - Hàng Chính Hãng', 33990000, 29750000, N'iphone 12 promax 128gb.jpg', N'<p>
	H&agrave;ng ch&iacute;nh h&atilde;ng VN/A Bộ nhớ trong 128 GB Loại SIM Dual SIM (nano‑SIM and eSIM) Loại m&agrave;n h&igrave;nh Super Retina XDR OLED, HDR10, Dolby Vision, Wide color gamut, True-tone K&iacute;ch thước m&agrave;n h&igrave;nh 6.7 inches Độ ph&acirc;n giải m&agrave;n h&igrave;nh 1284 x 2778 pixels Hệ điều h&agrave;nh iOS Phi&ecirc;n bản hệ điều h&agrave;nh iOS 14</p>
', N'Dien-Thoai-iPhone-12-Pro-Max-128GB--Hang-Chinh-Hang', NULL, 2, CAST(N'2021-04-25T00:00:00' AS SmallDateTime), 1, 13, 1)
INSERT [dbo].[Product] ([id], [name], [price], [newprice], [img], [description], [meta], [hide], [order], [datebegin], [categoryid], [quantity], [typeid]) VALUES (67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([id], [Content], [Rating], [CreatedDate], [User_id], [Product_id], [Status]) VALUES (1, N'sản phẩm chất lượng', 10, CAST(N'2021-04-24T21:21:23.610' AS DateTime), 24, 19, 1)
INSERT [dbo].[Review] ([id], [Content], [Rating], [CreatedDate], [User_id], [Product_id], [Status]) VALUES (2, N'Đã từng dùng, sản phẩm rất tốt', 10, CAST(N'2023-04-28T00:46:06.263' AS DateTime), 26, 58, 1)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD', N'Thêm mới')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE', N'Xóa')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT', N'Sửa')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW', N'Xem')
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([id], [img], [meta], [hide], [order], [datebegin]) VALUES (1, N'11_04_2019_15_28_26_Oppo-f11-800-300.png', N'mô-Tả', 1, 5, CAST(N'2018-03-19T00:00:00' AS SmallDateTime))
INSERT [dbo].[Slide] ([id], [img], [meta], [hide], [order], [datebegin]) VALUES (2, N'12_04_2019_22_08_25_huawei-P30-800-300.png', N'mô-tả', 1, 4, CAST(N'2018-03-19T00:00:00' AS SmallDateTime))
INSERT [dbo].[Slide] ([id], [img], [meta], [hide], [order], [datebegin]) VALUES (4, N'31_03_2019_23_53_00_800-300.png', N'mô-tả', 1, 3, CAST(N'2018-03-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Slide] ([id], [img], [meta], [hide], [order], [datebegin]) VALUES (5, N'18_04_2019_11_20_09_800-300.png', N'mô-tả', 1, 2, CAST(N'2018-03-15T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (15, N'khachhang', N'123123', N'nguyen van a', N'điện biên phủ', N'khachhang@gmail.com', N'121312', 1, NULL, N'User', 2, N'MEMBER', NULL, 0, 0)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (16, N'admin', N'123123', N'admin', N'hcm', N'aa@gmail.com', N'1231231', 1, N'Admin', NULL, 1, N'ADMIN', CAST(N'2023-05-12T07:36:00.427' AS DateTime), NULL, NULL)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (24, N'hung5001', N'123456', N'Đỗ Công Hưng', N'Hà Nội', N'hungdocong82@gmail.com', N'0362243247', 1, N'Admin', NULL, NULL, NULL, CAST(N'2021-04-24T20:17:01.400' AS DateTime), 4, 194000000)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (26, N'lythien', N'0914136490', N'ly thien', N'HCM', N'lythien@gmail.com', N'0987654321', 1, NULL, N'User', 2, N'MEMBER', CAST(N'2023-10-19T07:37:54.600' AS DateTime), NULL, NULL)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (27, N'alo', N'123456', N'helo', N'1254 ABBC', N'alo@gmail.com', N'84561320012', 1, NULL, NULL, NULL, NULL, CAST(N'2023-04-28T01:24:47.230' AS DateTime), 2, 82750000)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (28, N'anhnhat', N'123456', N'anh nhat', N'12/3 ap 3', N'leo@gmail.com', N'012334555', 1, NULL, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[User] ([id], [username], [password], [name], [address], [email], [phone], [status], [Quyenadmin], [Quyenuser], [roleId], [GroupID], [buyLastDate], [countOrder], [amountSpent]) VALUES (29, N'holy', N'123123', N'Lý', N'12/3 ap 3', N'2442002ly@gmail.com', N'6841521741', 1, NULL, NULL, NULL, NULL, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_GioHang_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF_Review_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Review] ADD  CONSTRAINT [DF_Review_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_DangNhap_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_DangNhap_countOrder]  DEFAULT ((0)) FOR [countOrder]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_DangNhap_amountSpent]  DEFAULT ((0)) FOR [amountSpent]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_DangNhap] FOREIGN KEY([User_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_DangNhap]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_product]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: giảm giá 2: đề xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'typeid'
GO
USE [master]
GO
ALTER DATABASE [WebMayTinh] SET  READ_WRITE 
GO
