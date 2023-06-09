USE [MyShop]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[total] [money] NOT NULL,
	[payment] [varchar](250) NOT NULL,
	[address] [ntext] NOT NULL,
	[date] [date] NOT NULL,
	[phone] [bigint] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[bill_id] [bigint] NOT NULL,
	[product_id] [varchar](100) NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [nchar](10) NOT NULL,
	[sex] [nvarchar](150) NOT NULL,
	[price] [money] NOT NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [bigint] NOT NULL,
	[product_id] [varchar](100) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[product_img] [varchar](255) NOT NULL,
	[product_price] [float] NOT NULL,
	[total] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [varchar](100) NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_price] [money] NOT NULL,
	[product_describe] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_sex]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_sex](
	[product_id] [varchar](100) NOT NULL,
	[sex] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_size]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_size](
	[product_id] [varchar](100) NOT NULL,
	[size] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/8/2022 2:00:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_email] [varchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[isAdmin] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (45, 5, 4100000.0000, N'MOMO', N'Hà Đông, Hà Nội', CAST(N'2022-11-04' AS Date), 919208356)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (46, 5, 7900000.0000, N'MOMO', N'Ninh Bình', CAST(N'2022-11-04' AS Date), 888195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (47, 5, 3250000.0000, N'VNPAY', N'Ninh Bình', CAST(N'2022-11-03' AS Date), 88195313)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (48, 5, 2800000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2022-11-04' AS Date), 383298183)
INSERT [dbo].[bill] ([bill_id], [user_id], [total], [payment], [address], [date], [phone]) VALUES (49, 5, 6600000.0000, N'Chua thanh toán (VNPAY)', N'Ninh Bình', CAST(N'2022-11-04' AS Date), 888195313)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[bill_detail] ON 

INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [sex], [price]) VALUES (40, 45, N'Chanel', 1, N'100ml     ', N'Nữ', 4100000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [sex], [price]) VALUES (41, 45, N'Creed', 2, N'100ml     ', N'Nam', 7900000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [sex], [price]) VALUES (42, 46, N'Dior', 3, N'100ml     ', N'Name', 3250000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [sex], [price]) VALUES (43, 47, N'Hermès', 4, N'100ML     ', N'Nữ', 2800000.0000)
INSERT [dbo].[bill_detail] ([detail_id], [bill_id], [product_id], [quantity], [size], [sex], [price]) VALUES (44, 48, N'Lelabo', 5, N'100ml     ', N'Ụnisex', 6600000.0000)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'Chanel')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'Creed')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'Dior')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'Hermès')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'Le Labo')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (6, N'Maison Margiela')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (7, N'Versace')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (8, N'Yves Saint Laurent')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Chanel', 1, N'Chanel Coco Mademoiselle', 4100000.0000, N'Tone hương:
Hương cam quýt,Hương gỗ.', 186, N'images/Chanel.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Chanel1', 1, N'Chanel Coco Noir', 4250000.0000, N'Tone hương:
Hương balsamic,Hương gỗ.', 186, N'images/Chanel1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Chanel2', 1, N'Chanel No 5 EDP', 3900000.0000, N'Tone hương:
Hương hoa,Hương gỗ.', 186, N'images/Chanel2.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Creed', 2, N'Aventus', 7900000.0000, N'Tone hương:
Hương gỗ,Hương Trái Cây.', 186, N'images/Creed.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Creed1', 2, N'Aventus For Her', 7000000.0000, N'Tone hương:
Hương gỗ,Hương phấn,Hương Trái Cây.', 186, N'images/Creed1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Creed2', 2, N'Silver Mountain Water', 6500000.0000, N'Tone hương:
Hương cam chanh,Hương lá xanh.', 186, N'images/Creed2.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Dior', 3, N'Dior Homme Sport EDT', 3250000.0000, N'Tone hương:
Hương cam chanh,Hương cay mát.', 186, N'images/Dior.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Dior1', 3, N'Dior Homme 2020 EDT', 3250000.0000, N'Tone hương: 
Hương gỗ,Musky.', 186, N'images/Dior1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Dior2', 3, N'Dior Homme Original', 2800000.0000, N'Tone hương:
Hương hoa,Hương gỗ, cacao.', 186, N'images/Dior2.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Hermès', 4, N'Un Jardin Sur Le Nil', 2800000.0000, N'Tone hương:
Cam chanh,Hoa quả.', 186, N'images/Hermès.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Hermès1', 4, N'24, Faubourg EDT', 2500000.0000, N'Tone hương:
Hương ngọt,Hoa trắng.', 186, N'images/Hermès1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Hermès2', 4, N'Un Jardin Sur La Lagune', 3000000.0000, N'Tone hương:
Hương hoa.', 186, N'images/Hermès2.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Lelabo', 5, N'Another 13', 6600000.0000, N'Tone hương:
Hổ phách,xạ hương.', 186, N'images/Lelabo.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Lelabo1', 5, N'Santal 33', 6600000.0000, N'Tone hương:
Hổ gỗ.', 186, N'images/Lelabo1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Relica', 6, N'Replia Beach Walk', 3500000.0000, N'Tone hương:
Hương ngọt,Hương phấn,xạ Hương,Yellow floral.', 186, N'images/Relica.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Relica1', 6, N'Replica Matcha Meditation', 3750000.0000, N'Tone hương: 
Hương cam chanh,Hương lá xanh,Hoa trắng,Hương ngọt.', 186, N'images/Relica1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Versace', 7, N'Versace Eros Flame EDP', 2600000.0000, N'Tone hương: 
Hương cay,Hương gỗ.', 186, N'images/Versace.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'Versace1', 7, N'Versace Eros Eros EDT', 2500000.0000, N'Tone hương: 
Aromatic,Hương cay,Hương vani.', 186, N'images/Versace1.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'YSL', 8, N'Y EDP', 3250000.0000, N'Tone hương: 
Hoa quả,Hương gỗ.', 186, N'images/YSL.png')
INSERT [dbo].[product] ([product_id], [category_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (N'YSL1', 8, N'La Nuit De L’homme EDP', 3350000.0000, N'Tone hương: 
Balsamic,Cay ấm,Hương gỗ.', 186, N'images/YSL1.png')
GO
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Chanel', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Creed', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Dior', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Hermès', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Lelabo', N'Unisex')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Relica', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Versace', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'YSL', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Chanel1', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Creed1', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Dior1', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Hermès1', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Lelabo1', N'Unisex')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Relica1', N'Unisex')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Versace1', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'YSL1', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Chanel2', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Creed2', N'Nữ')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Dior2', N'Nam')
INSERT [dbo].[product_sex] ([product_id], [sex]) VALUES (N'Hermès2', N'Nữ')
GO
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Chanel3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Creed3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Dior3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Hermès3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Lelabo3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Relica3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'Versace3', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL1', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL1', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL2', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL2', N'50ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL3', N'100ml')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (N'YSL3', N'50ml')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (1, N'Admin', N'phamhoang0228@gmail.com', N'phamhoang0228', N'TRUE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (2, N'Hùng', N'khuonghung', N'123456', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (3, N'Hương', N'thuyhuong1423@gmail.com', N'123456', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (4, N'Khuong Hung', N'khuonghung2408@gmail.com', N'1423', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (5, N'Mai Phạm', N'maipham11@gmail.com', N'123', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (6, N'Arya', N'hre@yahoo.com', N'1245', N'FALSE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (7, N'Admin', N'vuhatrang9707@gmail.com', N'vuhatrang9707', N'TRUE')
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_pass], [isAdmin]) VALUES (8, N'hoang', N'hoang@gmail.com', N'123456', N'False')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[product_sex]  WITH CHECK ADD  CONSTRAINT [FK_product_sex_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_sex] CHECK CONSTRAINT [FK_product_sex_product]
GO
