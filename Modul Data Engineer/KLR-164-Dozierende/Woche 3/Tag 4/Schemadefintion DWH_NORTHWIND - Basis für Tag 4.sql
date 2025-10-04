USE [DWH_NorthWind_B]
GO
/****** Object:  Table [dwh1].[Artikel]    Script Date: 21.05.2025 15:19:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh1].[Artikel](
	[Artikel] [bigint] IDENTITY(1,1) NOT NULL,
	[Artikelgruppe] [varchar](15) NOT NULL,
	[ArtikelObergruppe] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Artikel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh1].[F_Einkaeufe]    Script Date: 21.05.2025 15:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh1].[F_Einkaeufe](
	[Kunde] [bigint] NOT NULL,
	[Artikel] [bigint] NOT NULL,
	[Kassa] [bigint] NOT NULL,
	[Tag] [varchar](8) NOT NULL,
	[Menge] [int] NOT NULL,
	[Verkaufspreis] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Kunde] ASC,
	[Artikel] ASC,
	[Kassa] ASC,
	[Tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh1].[Kassa]    Script Date: 21.05.2025 15:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh1].[Kassa](
	[Kassa] [bigint] NOT NULL,
	[Filiale] [varchar](100) NOT NULL,
	[Filialbezirk] [varchar](100) NOT NULL,
	[Filialoberbezirk] [varchar](100) NOT NULL,
	[FilialLandkreis] [varchar](100) NOT NULL,
	[FilialBundesland] [varchar](100) NOT NULL,
	[FilialStaat] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Kassa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh1].[Kunden]    Script Date: 21.05.2025 15:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh1].[Kunden](
	[Kunde] [bigint] IDENTITY(1,1) NOT NULL,
	[WOhnOrtdesKunden] [varchar](100) NOT NULL,
	[LandkreisdesKunden] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Kunde] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh1].[Zeit]    Script Date: 21.05.2025 15:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh1].[Zeit](
	[Tag] [varchar](8) NOT NULL,
	[Woche] [int] NULL,
	[Monat] [int] NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dwh1].[Artikel] ON 
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (1, N'Beverages', N'Aux joyeux ecclésiastiques')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (2, N'Beverages', N'Bigfoot Breweries')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (3, N'Beverages', N'Exotic Liquids')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (4, N'Beverages', N'Karkki Oy')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (5, N'Beverages', N'Leka Trading')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (6, N'Beverages', N'Pavlova, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (7, N'Beverages', N'Plutzer Lebensmittelgroßmärkte AG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (8, N'Beverages', N'Refrescos Americanas LTDA')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (9, N'Condiments', N'Exotic Liquids')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (10, N'Condiments', N'Forêts d''érables')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (11, N'Condiments', N'Grandma Kelly''s Homestead')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (12, N'Condiments', N'Leka Trading')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (13, N'Condiments', N'Mayumi''s')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (14, N'Condiments', N'New Orleans Cajun Delights')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (15, N'Condiments', N'Pavlova, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (16, N'Condiments', N'Plutzer Lebensmittelgroßmärkte AG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (17, N'Confections', N'Forêts d''érables')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (18, N'Confections', N'Heli Süßwaren GmbH & Co. KG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (19, N'Confections', N'Karkki Oy')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (20, N'Confections', N'Pavlova, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (21, N'Confections', N'Specialty Biscuits, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (22, N'Confections', N'Zaanse Snoepfabriek')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (23, N'Dairy Products', N'Cooperativa de Quesos ''Las Cabras''')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (24, N'Dairy Products', N'Formaggi Fortini s.r.l.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (25, N'Dairy Products', N'Gai pâturage')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (26, N'Dairy Products', N'Norske Meierier')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (27, N'Grains/Cereals', N'G''day, Mate')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (28, N'Grains/Cereals', N'Leka Trading')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (29, N'Grains/Cereals', N'Pasta Buttini s.r.l.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (30, N'Grains/Cereals', N'PB Knäckebröd AB')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (31, N'Grains/Cereals', N'Plutzer Lebensmittelgroßmärkte AG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (32, N'Meat/Poultry', N'G''day, Mate')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (33, N'Meat/Poultry', N'Ma Maison')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (34, N'Meat/Poultry', N'Pavlova, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (35, N'Meat/Poultry', N'Plutzer Lebensmittelgroßmärkte AG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (36, N'Meat/Poultry', N'Tokyo Traders')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (37, N'Produce', N'G''day, Mate')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (38, N'Produce', N'Grandma Kelly''s Homestead')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (39, N'Produce', N'Mayumi''s')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (40, N'Produce', N'Plutzer Lebensmittelgroßmärkte AG')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (41, N'Produce', N'Tokyo Traders')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (42, N'Seafood', N'Escargots Nouveaux')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (43, N'Seafood', N'Lyngbysild')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (44, N'Seafood', N'Mayumi''s')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (45, N'Seafood', N'New England Seafood Cannery')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (46, N'Seafood', N'Nord-Ost-Fisch Handelsgesellschaft mbH')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (47, N'Seafood', N'Pavlova, Ltd.')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (48, N'Seafood', N'Svensk Sjöföda AB')
GO
INSERT [dwh1].[Artikel] ([Artikel], [Artikelgruppe], [ArtikelObergruppe]) VALUES (49, N'Seafood', N'Tokyo Traders')
GO
SET IDENTITY_INSERT [dwh1].[Artikel] OFF
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 4, -1, N'19961126', 14, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 7, -1, N'19961126', 6, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 18, -1, N'19980109', 31, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 23, -1, N'19971225', 21, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 24, -1, N'19961126', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 25, -1, N'19980420', 55, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 32, -1, N'19980109', 33, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 44, -1, N'19961223', 5, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 44, -1, N'19980420', 6, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (1, 45, -1, N'19980504', 10, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 1, -1, N'19970319', 211, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 1, -1, N'19980216', 264, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 1, -1, N'19980506', 18, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 3, -1, N'19960830', 14, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 3, -1, N'19980126', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 3, -1, N'19980506', 19, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 4, -1, N'19970616', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 5, -1, N'19960830', 37, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 7, -1, N'19960830', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 7, -1, N'19971202', 8, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 7, -1, N'19980506', 8, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 8, -1, N'19980406', 5, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 9, -1, N'19980506', 10, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 11, -1, N'19980506', 25, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 14, -1, N'19960722', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 14, -1, N'19970101', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 14, -1, N'19980406', 22, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 14, -1, N'19980506', 17, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 16, -1, N'19980406', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 16, -1, N'19980506', 13, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 17, -1, N'19960925', 39, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 17, -1, N'19960927', 39, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 17, -1, N'19980126', 49, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 17, -1, N'19980331', 49, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 18, -1, N'19970714', 44, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 18, -1, N'19971202', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 20, -1, N'19980506', 17, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 21, -1, N'19960802', 65, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 21, -1, N'19980506', 81, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 23, -1, N'19980216', 21, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 23, -1, N'19980506', 38, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 24, -1, N'19960802', 10, CAST(64.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 24, -1, N'19960925', 26, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 24, -1, N'19970610', 13, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 24, -1, N'19970616', 13, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 24, -1, N'19980506', 32, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 25, -1, N'19960830', 27, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 25, -1, N'19970319', 44, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 25, -1, N'19980506', 34, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 26, -1, N'19970101', 17, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 26, -1, N'19970714', 22, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 27, -1, N'19980506', 7, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 29, -1, N'19960722', 30, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 29, -1, N'19961105', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 29, -1, N'19970101', 30, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 29, -1, N'19980107', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 30, -1, N'19980506', 9, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 31, -1, N'19970319', 27, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 31, -1, N'19980506', 33, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 32, -1, N'19970319', 26, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 33, -1, N'19970610', 24, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 33, -1, N'19980506', 24, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 34, -1, N'19960830', 31, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 34, -1, N'19961105', 31, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 34, -1, N'19970610', 39, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 34, -1, N'19980126', 39, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 38, -1, N'19960722', 24, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 38, -1, N'19980331', 30, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 38, -1, N'19980506', 30, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 39, -1, N'19980506', 23, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 42, -1, N'19960925', 11, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 43, -1, N'19980506', 12, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 44, -1, N'19980506', 6, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 45, -1, N'19960927', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 45, -1, N'19980506', 10, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 46, -1, N'19970101', 21, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 48, -1, N'19980506', 15, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (2, 49, -1, N'19980506', 31, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 1, -1, N'19960913', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 4, -1, N'19980101', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 5, -1, N'19971016', 46, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 10, -1, N'19980420', 29, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 12, -1, N'19980420', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 14, -1, N'19980127', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 18, -1, N'19970210', 35, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 20, -1, N'19970924', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 20, -1, N'19971016', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 20, -1, N'19980127', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 21, -1, N'19980420', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 24, -1, N'19970924', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 24, -1, N'19980127', 13, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 25, -1, N'19971016', 55, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 27, -1, N'19970709', 7, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 28, -1, N'19970924', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 29, -1, N'19980101', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 29, -1, N'19980127', 38, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 34, -1, N'19961025', 31, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 35, -1, N'19960913', 99, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 37, -1, N'19980320', 53, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 42, -1, N'19970709', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 46, -1, N'19961025', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (3, 47, -1, N'19960913', 50, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 2, -1, N'19961128', 11, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 2, -1, N'19971001', 14, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 2, -1, N'19980303', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 4, -1, N'19961231', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 8, -1, N'19970305', 4, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 8, -1, N'19980312', 5, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 9, -1, N'19970707', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 10, -1, N'19971208', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 14, -1, N'19961128', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 15, -1, N'19980303', 44, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 16, -1, N'19961128', 10, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 16, -1, N'19961231', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 16, -1, N'19970717', 13, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 16, -1, N'19980312', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 17, -1, N'19971208', 49, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 19, -1, N'19970305', 13, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 21, -1, N'19961231', 10, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 25, -1, N'19980402', 55, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 26, -1, N'19961231', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 27, -1, N'19971208', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 33, -1, N'19961128', 6, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 33, -1, N'19970707', 7, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 35, -1, N'19970305', 99, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 38, -1, N'19970707', 30, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 40, -1, N'19971001', 46, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 43, -1, N'19970305', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 45, -1, N'19970305', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 45, -1, N'19971117', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 45, -1, N'19971208', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 49, -1, N'19971001', 31, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (4, 49, -1, N'19980312', 31, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 4, -1, N'19980305', 18, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 14, -1, N'19961128', 17, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 16, -1, N'19961128', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 18, -1, N'19980213', 14, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 22, -1, N'19980305', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 29, -1, N'19970127', 30, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 31, -1, N'19970127', 27, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (5, 49, -1, N'19970613', 31, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 1, -1, N'19980220', 18, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 6, -1, N'19971216', 15, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 13, -1, N'19960816', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 16, -1, N'19971216', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 16, -1, N'19980109', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 18, -1, N'19961016', 25, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 18, -1, N'19961119', 25, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 19, -1, N'19970408', 20, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 20, -1, N'19960903', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 21, -1, N'19960816', 7, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 21, -1, N'19970228', 8, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 23, -1, N'19960903', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 23, -1, N'19970521', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 23, -1, N'19980109', 21, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 24, -1, N'19960816', 28, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 24, -1, N'19961016', 28, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 24, -1, N'19980403', 32, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 25, -1, N'19960816', 27, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 25, -1, N'19961119', 27, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 25, -1, N'19980109', 55, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 26, -1, N'19960903', 29, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 27, -1, N'19980403', 7, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 29, -1, N'19980109', 20, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 30, -1, N'19970521', 9, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 33, -1, N'19970228', 19, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 33, -1, N'19980501', 7, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 38, -1, N'19980505', 30, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 40, -1, N'19970408', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 41, -1, N'19961212', 8, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 43, -1, N'19980403', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 44, -1, N'19980505', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 46, -1, N'19970228', 21, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 46, -1, N'19980501', 26, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (6, 49, -1, N'19961119', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 1, -1, N'19971218', 18, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 2, -1, N'19980310', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 3, -1, N'19980310', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 8, -1, N'19960807', 4, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 8, -1, N'19970306', 4, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 14, -1, N'19960909', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 14, -1, N'19970818', 21, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 14, -1, N'19980316', 22, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 18, -1, N'19970103', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 18, -1, N'19970306', 11, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 19, -1, N'19970103', 16, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 21, -1, N'19960909', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 24, -1, N'19971218', 35, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 24, -1, N'19980107', 32, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 25, -1, N'19960807', 44, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 28, -1, N'19970103', 11, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 30, -1, N'19970818', 21, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 45, -1, N'19971125', 18, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 45, -1, N'19980107', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (7, 48, -1, N'19971218', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 1, -1, N'19970825', 18, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 4, -1, N'19971013', 18, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 9, -1, N'19971013', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 11, -1, N'19980316', 25, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 15, -1, N'19971003', 44, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 16, -1, N'19980115', 13, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 25, -1, N'19980115', 55, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 26, -1, N'19980409', 22, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 40, -1, N'19970825', 46, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 40, -1, N'19980316', 46, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 42, -1, N'19980409', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (8, 43, -1, N'19970825', 12, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 3, -1, N'19961203', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 3, -1, N'19980422', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 8, -1, N'19960711', 4, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 15, -1, N'19980416', 44, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 15, -1, N'19980422', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 17, -1, N'19971119', 49, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 17, -1, N'19980320', 49, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 21, -1, N'19971106', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 25, -1, N'19970428', 34, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 26, -1, N'19971119', 36, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 28, -1, N'19971119', 14, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 29, -1, N'19970428', 38, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 29, -1, N'19980320', 38, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 29, -1, N'19980416', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 31, -1, N'19961203', 27, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 33, -1, N'19960711', 19, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 37, -1, N'19971106', 53, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 41, -1, N'19960711', 8, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 41, -1, N'19961203', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 44, -1, N'19971119', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 48, -1, N'19980320', 26, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (9, 49, -1, N'19970428', 31, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 2, -1, N'19961008', 14, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 2, -1, N'19961230', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 2, -1, N'19971010', 14, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 2, -1, N'19971127', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 2, -1, N'19980406', 18, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19961225', 15, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19970210', 15, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19971010', 18, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19971022', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19971029', 19, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19980122', 18, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 3, -1, N'19980417', 18, CAST(145.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 4, -1, N'19970728', 18, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 7, -1, N'19970418', 8, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 7, -1, N'19971029', 8, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 7, -1, N'19980218', 8, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 8, -1, N'19970602', 5, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 8, -1, N'19980330', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 8, -1, N'19980417', 5, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 10, -1, N'19970210', 23, CAST(90.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 12, -1, N'19970220', 16, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 13, -1, N'19970904', 16, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 14, -1, N'19980417', 21, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 15, -1, N'19961008', 35, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 17, -1, N'19970811', 49, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 17, -1, N'19971127', 49, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 17, -1, N'19980311', 49, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 18, -1, N'19961225', 11, CAST(77.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 18, -1, N'19971022', 31, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 19, -1, N'19970718', 20, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 19, -1, N'19970728', 20, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 19, -1, N'19980211', 20, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 20, -1, N'19961008', 14, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 20, -1, N'19970210', 14, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 20, -1, N'19980330', 17, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19970602', 9, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19971010', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19971021', 9, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19971029', 13, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19980122', 9, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19980311', 13, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 21, -1, N'19980501', 13, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 22, -1, N'19970904', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 22, -1, N'19971022', 10, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 23, -1, N'19970923', 38, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 24, -1, N'19961225', 10, CAST(32.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 24, -1, N'19970722', 35, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 24, -1, N'19971029', 13, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 24, -1, N'19980311', 13, CAST(94.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19961008', 44, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19970728', 34, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19970904', 34, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19971127', 55, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19980122', 34, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 25, -1, N'19980417', 55, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19970722', 3, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19970923', 3, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19971010', 22, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19980105', 3, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19980122', 22, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19980218', 36, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 26, -1, N'19980417', 22, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 28, -1, N'19980211', 14, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 28, -1, N'19980406', 14, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 29, -1, N'19970602', 38, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 29, -1, N'19970904', 38, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 29, -1, N'19971022', 38, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 29, -1, N'19971120', 38, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 29, -1, N'19980327', 20, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 30, -1, N'19970718', 21, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 30, -1, N'19971120', 9, CAST(44.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 31, -1, N'19971127', 33, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 31, -1, N'19980417', 33, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 32, -1, N'19971021', 33, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 32, -1, N'19980501', 33, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 33, -1, N'19961230', 19, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 33, -1, N'19970923', 7, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 33, -1, N'19980211', 7, CAST(32.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 33, -1, N'19980406', 24, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 33, -1, N'19980501', 24, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 34, -1, N'19970722', 39, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 34, -1, N'19971022', 39, CAST(27.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 34, -1, N'19980501', 39, CAST(77.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 35, -1, N'19970210', 99, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 35, -1, N'19970418', 124, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 35, -1, N'19980417', 124, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 37, -1, N'19970602', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 38, -1, N'19970722', 30, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 39, -1, N'19961225', 19, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 39, -1, N'19970602', 23, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 40, -1, N'19970220', 36, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 42, -1, N'19971022', 13, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 43, -1, N'19961008', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 43, -1, N'19970904', 12, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 43, -1, N'19971022', 10, CAST(134.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 43, -1, N'19980122', 10, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 44, -1, N'19980218', 6, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 44, -1, N'19980327', 6, CAST(84.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 44, -1, N'19980406', 6, CAST(56.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 44, -1, N'19980417', 6, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19970722', 18, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19970904', 10, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19970923', 10, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19971021', 10, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19971120', 18, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 45, -1, N'19980501', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 48, -1, N'19970728', 19, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 48, -1, N'19970811', 15, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 48, -1, N'19980122', 26, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 48, -1, N'19980330', 19, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 49, -1, N'19970728', 31, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (10, 49, -1, N'19971022', 31, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 1, -1, N'19971202', 18, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 1, -1, N'19980326', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 3, -1, N'19960724', 15, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 3, -1, N'19961011', 15, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 3, -1, N'19971014', 19, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 4, -1, N'19970203', 14, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 4, -1, N'19980427', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 6, -1, N'19980109', 15, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 6, -1, N'19980210', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 7, -1, N'19970228', 6, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 7, -1, N'19980317', 8, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 7, -1, N'19980327', 8, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 10, -1, N'19980210', 29, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 12, -1, N'19970606', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 14, -1, N'19970512', 22, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 14, -1, N'19971211', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 15, -1, N'19980326', 44, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 17, -1, N'19980223', 49, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 21, -1, N'19970228', 10, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 22, -1, N'19971202', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 22, -1, N'19980326', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 23, -1, N'19961011', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 23, -1, N'19970203', 17, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 24, -1, N'19970512', 35, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 24, -1, N'19971211', 13, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 25, -1, N'19971014', 55, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 26, -1, N'19961210', 17, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 29, -1, N'19971202', 38, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 30, -1, N'19980210', 9, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 30, -1, N'19980406', 21, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 33, -1, N'19980223', 24, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 33, -1, N'19980406', 24, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 35, -1, N'19980401', 124, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 37, -1, N'19970606', 53, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 37, -1, N'19971202', 53, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 37, -1, N'19980326', 53, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 38, -1, N'19980406', 30, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 42, -1, N'19961011', 11, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 43, -1, N'19980406', 12, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 45, -1, N'19960724', 8, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 45, -1, N'19980109', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 45, -1, N'19980401', 10, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 46, -1, N'19961011', 21, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 48, -1, N'19970512', 15, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (11, 48, -1, N'19971014', 15, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 1, -1, N'19961007', 14, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 1, -1, N'19980106', 264, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 4, -1, N'19970813', 18, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 5, -1, N'19970307', 37, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 6, -1, N'19970415', 15, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 8, -1, N'19971226', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 8, -1, N'19980218', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 9, -1, N'19980123', 10, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 11, -1, N'19961009', 20, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 11, -1, N'19980218', 40, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 13, -1, N'19961007', 12, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 17, -1, N'19971027', 49, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 17, -1, N'19980106', 49, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 18, -1, N'19961007', 11, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 18, -1, N'19970415', 14, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 18, -1, N'19980106', 31, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 18, -1, N'19980123', 31, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 19, -1, N'19970225', 16, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 20, -1, N'19971027', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 21, -1, N'19970225', 8, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 23, -1, N'19970520', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 23, -1, N'19971027', 38, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 24, -1, N'19961009', 10, CAST(44.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 25, -1, N'19970225', 44, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 25, -1, N'19971226', 55, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 25, -1, N'19980416', 55, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 33, -1, N'19970520', 7, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 33, -1, N'19970813', 24, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 33, -1, N'19980416', 24, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 35, -1, N'19980218', 124, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 39, -1, N'19961009', 19, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 44, -1, N'19961009', 5, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 44, -1, N'19971226', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 45, -1, N'19980106', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 46, -1, N'19970307', 21, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 46, -1, N'19980218', 26, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 48, -1, N'19971027', 19, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (12, 48, -1, N'19980218', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 4, -1, N'19980407', 18, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 5, -1, N'19971201', 46, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 11, -1, N'19980326', 40, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 12, -1, N'19980326', 19, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 18, -1, N'19971201', 14, CAST(52.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 18, -1, N'19980407', 31, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 21, -1, N'19970507', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 21, -1, N'19980326', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 24, -1, N'19970828', 35, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 25, -1, N'19980217', 55, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 26, -1, N'19970507', 36, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 29, -1, N'19980219', 38, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 33, -1, N'19970507', 24, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 40, -1, N'19970828', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 43, -1, N'19980219', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (13, 45, -1, N'19980326', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 1, -1, N'19980113', 264, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 2, -1, N'19970429', 18, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 2, -1, N'19980310', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 2, -1, N'19980428', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 4, -1, N'19980330', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 5, -1, N'19980107', 46, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 7, -1, N'19980107', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 10, -1, N'19971024', 29, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 14, -1, N'19980318', 21, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 16, -1, N'19980330', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 18, -1, N'19970217', 25, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 19, -1, N'19980413', 20, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 20, -1, N'19980227', 17, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 21, -1, N'19970109', 8, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 21, -1, N'19970429', 13, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 21, -1, N'19971024', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 21, -1, N'19980113', 81, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 21, -1, N'19980330', 81, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 23, -1, N'19980330', 21, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 24, -1, N'19971217', 13, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 24, -1, N'19980227', 32, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 24, -1, N'19980318', 35, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 25, -1, N'19970508', 55, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 26, -1, N'19980428', 3, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 29, -1, N'19980227', 20, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 37, -1, N'19971024', 53, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 38, -1, N'19980318', 30, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 39, -1, N'19970109', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 40, -1, N'19980310', 46, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 43, -1, N'19980413', 12, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 44, -1, N'19980220', 6, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 45, -1, N'19970217', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 45, -1, N'19970429', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (14, 48, -1, N'19980211', 15, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 2, -1, N'19971212', 14, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 3, -1, N'19980406', 18, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 12, -1, N'19970807', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 27, -1, N'19980406', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 35, -1, N'19970807', 124, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 40, -1, N'19970807', 46, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 45, -1, N'19980406', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (15, 49, -1, N'19971212', 31, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 3, -1, N'19980424', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 4, -1, N'19971107', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 7, -1, N'19980318', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 11, -1, N'19971017', 40, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 11, -1, N'19971107', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 22, -1, N'19970929', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 23, -1, N'19980424', 38, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 24, -1, N'19970123', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 25, -1, N'19970123', 44, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 25, -1, N'19971017', 34, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 28, -1, N'19970901', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 28, -1, N'19971215', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 29, -1, N'19971222', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 37, -1, N'19971017', 53, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 38, -1, N'19971222', 30, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 45, -1, N'19970929', 10, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 46, -1, N'19970901', 26, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 46, -1, N'19971107', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (16, 49, -1, N'19970929', 31, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (17, 7, -1, N'19971218', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (17, 24, -1, N'19960730', 28, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (17, 35, -1, N'19960730', 99, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (17, 49, -1, N'19971218', 31, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 2, -1, N'19980420', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 3, -1, N'19980212', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 3, -1, N'19980420', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 4, -1, N'19970314', 14, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 5, -1, N'19960910', 37, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 5, -1, N'19970226', 37, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 6, -1, N'19980122', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 6, -1, N'19980212', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 8, -1, N'19980212', 5, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 14, -1, N'19970314', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 14, -1, N'19980122', 22, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 16, -1, N'19980120', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 16, -1, N'19980212', 13, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 18, -1, N'19970226', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 18, -1, N'19980306', 44, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 21, -1, N'19960709', 65, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 21, -1, N'19970304', 7, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 21, -1, N'19980306', 10, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 24, -1, N'19970314', 10, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 25, -1, N'19960709', 27, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 25, -1, N'19980120', 55, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 26, -1, N'19960709', 2, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 26, -1, N'19970226', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 26, -1, N'19980421', 22, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 27, -1, N'19980421', 7, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 28, -1, N'19970304', 11, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 28, -1, N'19971205', 14, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 28, -1, N'19980420', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 29, -1, N'19970226', 30, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 29, -1, N'19980120', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 33, -1, N'19980306', 24, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 33, -1, N'19980420', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 34, -1, N'19960910', 31, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 40, -1, N'19960910', 36, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 40, -1, N'19970226', 36, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 41, -1, N'19980122', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 42, -1, N'19980306', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 45, -1, N'19980421', 18, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (18, 49, -1, N'19980120', 31, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 1, -1, N'19970909', 18, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 2, -1, N'19980430', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 3, -1, N'19960905', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 3, -1, N'19961022', 15, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 3, -1, N'19970827', 18, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 4, -1, N'19971013', 18, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 5, -1, N'19960919', 37, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 6, -1, N'19961212', 12, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 7, -1, N'19971111', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 11, -1, N'19960919', 20, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 14, -1, N'19960919', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 14, -1, N'19970411', 21, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 14, -1, N'19971111', 21, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 15, -1, N'19970129', 35, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 16, -1, N'19970827', 13, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 17, -1, N'19960905', 39, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 19, -1, N'19970129', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 20, -1, N'19980330', 17, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 23, -1, N'19980226', 21, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 24, -1, N'19961022', 10, CAST(31.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 24, -1, N'19970612', 13, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 24, -1, N'19980330', 32, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 25, -1, N'19960905', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 25, -1, N'19961212', 27, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 25, -1, N'19970612', 55, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 25, -1, N'19971013', 55, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 26, -1, N'19960919', 17, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 26, -1, N'19961205', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 26, -1, N'19970827', 22, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 26, -1, N'19971013', 22, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 28, -1, N'19960919', 11, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 28, -1, N'19970424', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 29, -1, N'19971021', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 32, -1, N'19961212', 26, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 32, -1, N'19971021', 33, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 35, -1, N'19970930', 124, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 35, -1, N'19980219', 124, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 35, -1, N'19980226', 124, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 36, -1, N'19970930', 97, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 37, -1, N'19961022', 42, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 37, -1, N'19970612', 53, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 39, -1, N'19970411', 23, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 42, -1, N'19961205', 11, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 42, -1, N'19970909', 13, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 45, -1, N'19970424', 10, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 45, -1, N'19980430', 10, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 46, -1, N'19961212', 21, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 46, -1, N'19980219', 26, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 47, -1, N'19970424', 63, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 47, -1, N'19980330', 63, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 48, -1, N'19960905', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 48, -1, N'19970930', 19, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (19, 49, -1, N'19970827', 31, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 2, -1, N'19960926', 11, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 2, -1, N'19961003', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 3, -1, N'19980113', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 4, -1, N'19961001', 14, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 4, -1, N'19971120', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 6, -1, N'19960926', 12, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 6, -1, N'19970805', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 10, -1, N'19980306', 29, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 11, -1, N'19980113', 40, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 17, -1, N'19971226', 49, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 21, -1, N'19970805', 9, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 24, -1, N'19971226', 35, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 25, -1, N'19971120', 55, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 25, -1, N'19980113', 34, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 26, -1, N'19970313', 2, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 26, -1, N'19970805', 22, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 29, -1, N'19971120', 38, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 30, -1, N'19970805', 9, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 30, -1, N'19970918', 9, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 32, -1, N'19980306', 33, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 44, -1, N'19980113', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (20, 45, -1, N'19961001', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 1, -1, N'19961122', 14, CAST(54.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 1, -1, N'19970519', 264, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 1, -1, N'19980202', 18, CAST(140.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 2, -1, N'19960821', 14, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 2, -1, N'19980121', 18, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 3, -1, N'19960820', 14, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 3, -1, N'19970117', 15, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 3, -1, N'19971003', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 3, -1, N'19980401', 19, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 3, -1, N'19980414', 19, CAST(11.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 4, -1, N'19960805', 14, CAST(33.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 4, -1, N'19980319', 18, CAST(44.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 4, -1, N'19980401', 18, CAST(90.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 5, -1, N'19971003', 46, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 5, -1, N'19980310', 46, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 6, -1, N'19971006', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 6, -1, N'19980401', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 7, -1, N'19971222', 8, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 9, -1, N'19970519', 10, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 10, -1, N'19970117', 23, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 11, -1, N'19961104', 32, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 12, -1, N'19971003', 19, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 12, -1, N'19971029', 19, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 12, -1, N'19971118', 19, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 14, -1, N'19970219', 17, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 14, -1, N'19970505', 22, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 14, -1, N'19971204', 21, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 16, -1, N'19970219', 10, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 16, -1, N'19970905', 13, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 17, -1, N'19960821', 39, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 17, -1, N'19971003', 49, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 18, -1, N'19970423', 44, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 18, -1, N'19970519', 31, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 18, -1, N'19980414', 31, CAST(63.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 20, -1, N'19970423', 17, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19961104', 7, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19970519', 13, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19970905', 10, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19971222', 9, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19980210', 81, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 21, -1, N'19980414', 81, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 22, -1, N'19970117', 8, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 24, -1, N'19960805', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 24, -1, N'19970527', 13, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 24, -1, N'19971118', 35, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 24, -1, N'19980414', 35, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19961122', 27, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19970423', 34, CAST(84.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19970905', 34, CAST(55.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19971006', 55, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19971118', 55, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 25, -1, N'19980310', 34, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 26, -1, N'19960805', 2, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 26, -1, N'19970423', 3, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 26, -1, N'19980310', 22, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 26, -1, N'19980319', 36, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 28, -1, N'19961104', 11, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 28, -1, N'19970703', 14, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 28, -1, N'19980121', 14, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 28, -1, N'19980402', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 30, -1, N'19980121', 9, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 31, -1, N'19970219', 27, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 31, -1, N'19980121', 33, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 32, -1, N'19960820', 26, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 32, -1, N'19980319', 33, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 33, -1, N'19970219', 19, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 35, -1, N'19971003', 124, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 36, -1, N'19970423', 97, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 37, -1, N'19970527', 53, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 37, -1, N'19980414', 53, CAST(44.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 38, -1, N'19971006', 30, CAST(90.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 38, -1, N'19980319', 30, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 41, -1, N'19970117', 8, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 42, -1, N'19980121', 13, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 43, -1, N'19970527', 10, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 44, -1, N'19980310', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 44, -1, N'19980319', 6, CAST(77.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 45, -1, N'19960805', 15, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 45, -1, N'19960820', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 45, -1, N'19970905', 18, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 47, -1, N'19970703', 63, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 47, -1, N'19971118', 63, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 48, -1, N'19960924', 15, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 48, -1, N'19970505', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (21, 49, -1, N'19960805', 25, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 17, -1, N'19961225', 39, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 21, -1, N'19970908', 81, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 26, -1, N'19970115', 2, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 33, -1, N'19961206', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 33, -1, N'19970716', 7, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 34, -1, N'19970115', 31, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 39, -1, N'19961206', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 44, -1, N'19961225', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (22, 48, -1, N'19970716', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 1, -1, N'19970731', 264, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 1, -1, N'19980106', 264, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 2, -1, N'19970704', 18, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 3, -1, N'19980407', 18, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 6, -1, N'19970731', 15, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 12, -1, N'19970904', 19, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 17, -1, N'19980106', 49, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 21, -1, N'19970925', 9, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 21, -1, N'19980422', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 22, -1, N'19970904', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 23, -1, N'19970506', 21, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 24, -1, N'19970506', 35, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 25, -1, N'19970731', 55, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 25, -1, N'19980430', 34, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 26, -1, N'19970506', 3, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 26, -1, N'19970731', 22, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 29, -1, N'19970731', 38, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 31, -1, N'19970925', 33, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 35, -1, N'19980407', 124, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 39, -1, N'19970904', 23, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (23, 48, -1, N'19980309', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 2, -1, N'19960819', 11, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 3, -1, N'19970430', 18, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 3, -1, N'19980505', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 4, -1, N'19961031', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 4, -1, N'19970709', 18, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 7, -1, N'19970603', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 11, -1, N'19970430', 40, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 11, -1, N'19980309', 25, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 12, -1, N'19960819', 16, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 13, -1, N'19970708', 16, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 16, -1, N'19970404', 10, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 18, -1, N'19960819', 35, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 18, -1, N'19970708', 31, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 20, -1, N'19980505', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 21, -1, N'19961031', 10, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 21, -1, N'19970709', 81, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 23, -1, N'19970514', 38, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 23, -1, N'19980130', 21, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 24, -1, N'19970404', 28, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 24, -1, N'19970514', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 24, -1, N'19980505', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 25, -1, N'19960819', 27, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 25, -1, N'19970514', 34, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 25, -1, N'19971210', 55, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 26, -1, N'19970514', 3, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 26, -1, N'19970709', 36, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 27, -1, N'19980130', 7, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 29, -1, N'19970404', 30, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 31, -1, N'19961031', 27, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 31, -1, N'19970603', 33, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 33, -1, N'19970512', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 34, -1, N'19960813', 31, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 35, -1, N'19971210', 124, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 45, -1, N'19970430', 18, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 45, -1, N'19970512', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 46, -1, N'19970430', 26, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 46, -1, N'19970512', 26, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (24, 46, -1, N'19980217', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 3, -1, N'19960712', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 3, -1, N'19980506', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 4, -1, N'19980506', 18, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 6, -1, N'19971128', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 7, -1, N'19980316', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 14, -1, N'19970912', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 18, -1, N'19971124', 31, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 18, -1, N'19971128', 31, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 19, -1, N'19971124', 16, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 20, -1, N'19960712', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 24, -1, N'19970514', 13, CAST(51.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 25, -1, N'19960712', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 25, -1, N'19970120', 27, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 26, -1, N'19970120', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 26, -1, N'19980316', 3, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 26, -1, N'19980417', 36, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 27, -1, N'19971128', 7, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 29, -1, N'19980306', 20, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 32, -1, N'19980417', 33, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 35, -1, N'19970912', 124, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 37, -1, N'19970514', 53, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 42, -1, N'19970514', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 43, -1, N'19980506', 12, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 44, -1, N'19980306', 6, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 45, -1, N'19980316', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 46, -1, N'19971124', 26, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 48, -1, N'19960712', 15, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 48, -1, N'19970514', 15, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (25, 48, -1, N'19971124', 15, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 1, -1, N'19961111', 211, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 1, -1, N'19971203', 18, CAST(130.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 1, -1, N'19980218', 18, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 2, -1, N'19961223', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 2, -1, N'19970710', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 2, -1, N'19980116', 18, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 2, -1, N'19980401', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 2, -1, N'19980408', 14, CAST(90.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 3, -1, N'19960717', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 3, -1, N'19980505', 19, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 6, -1, N'19971009', 15, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 6, -1, N'19980413', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 7, -1, N'19970422', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 7, -1, N'19971211', 8, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 8, -1, N'19960723', 4, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 8, -1, N'19980218', 5, CAST(110.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 8, -1, N'19980323', 5, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 8, -1, N'19980326', 5, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 9, -1, N'19971203', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 9, -1, N'19980413', 10, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 10, -1, N'19970710', 29, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 10, -1, N'19980401', 29, CAST(66.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 12, -1, N'19961111', 16, CAST(77.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19960717', 17, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19961111', 17, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19961213', 17, CAST(32.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19970211', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19970422', 21, CAST(39.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 14, -1, N'19971009', 21, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 15, -1, N'19970102', 35, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 15, -1, N'19980326', 44, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 17, -1, N'19970815', 49, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 18, -1, N'19970815', 31, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 18, -1, N'19980326', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 19, -1, N'19980505', 16, CAST(22.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 20, -1, N'19960723', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 20, -1, N'19970103', 14, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 20, -1, N'19971224', 17, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 21, -1, N'19961129', 8, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 21, -1, N'19970130', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 21, -1, N'19970422', 81, CAST(39.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 21, -1, N'19980401', 10, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 22, -1, N'19970103', 10, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 23, -1, N'19970211', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 23, -1, N'19970815', 38, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 23, -1, N'19971009', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 23, -1, N'19980323', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 23, -1, N'19980326', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 24, -1, N'19960717', 26, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 24, -1, N'19961223', 10, CAST(84.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 24, -1, N'19971211', 13, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 24, -1, N'19971215', 13, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 24, -1, N'19980326', 13, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 25, -1, N'19970130', 44, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 25, -1, N'19980116', 34, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 25, -1, N'19980218', 34, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 25, -1, N'19980413', 55, CAST(110.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 26, -1, N'19961213', 2, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 26, -1, N'19970710', 36, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 26, -1, N'19970912', 22, CAST(59.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 26, -1, N'19971210', 22, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 26, -1, N'19980408', 22, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 28, -1, N'19970617', 14, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 28, -1, N'19971215', 14, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 29, -1, N'19961129', 16, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 29, -1, N'19970130', 30, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 29, -1, N'19970422', 38, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 29, -1, N'19980116', 20, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 30, -1, N'19970102', 7, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 30, -1, N'19980116', 21, CAST(52.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 31, -1, N'19961129', 27, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 31, -1, N'19980116', 33, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 31, -1, N'19980323', 33, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 31, -1, N'19980505', 33, CAST(130.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 33, -1, N'19970211', 6, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 33, -1, N'19980401', 24, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 34, -1, N'19970130', 31, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 34, -1, N'19971009', 39, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 34, -1, N'19971211', 39, CAST(33.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 34, -1, N'19971224', 39, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 35, -1, N'19961213', 99, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 35, -1, N'19971009', 124, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 37, -1, N'19971215', 53, CAST(120.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 38, -1, N'19980326', 30, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 39, -1, N'19970617', 23, CAST(11.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 40, -1, N'19961129', 36, CAST(13.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 40, -1, N'19970422', 46, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 40, -1, N'19980408', 46, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 41, -1, N'19960723', 8, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 41, -1, N'19961213', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 43, -1, N'19961223', 10, CAST(45.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 43, -1, N'19971215', 10, CAST(27.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 44, -1, N'19970815', 6, CAST(13.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 44, -1, N'19980127', 6, CAST(65.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 45, -1, N'19961111', 8, CAST(13.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 45, -1, N'19980218', 18, CAST(91.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 45, -1, N'19980505', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 46, -1, N'19960723', 21, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 47, -1, N'19961213', 50, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (26, 49, -1, N'19980127', 31, CAST(100.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 3, -1, N'19980407', 18, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 4, -1, N'19980210', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 5, -1, N'19970918', 46, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 8, -1, N'19971007', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 10, -1, N'19980226', 29, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 11, -1, N'19971007', 40, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 14, -1, N'19980210', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 19, -1, N'19980226', 20, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 20, -1, N'19970918', 17, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 21, -1, N'19980206', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 21, -1, N'19980226', 9, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 23, -1, N'19971007', 38, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 25, -1, N'19980407', 55, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 28, -1, N'19970918', 14, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 33, -1, N'19970730', 24, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 40, -1, N'19980206', 46, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (27, 45, -1, N'19980210', 18, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 1, -1, N'19980119', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 2, -1, N'19971008', 18, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 2, -1, N'19980421', 18, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 3, -1, N'19970325', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 3, -1, N'19971104', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 3, -1, N'19980119', 18, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 6, -1, N'19970325', 12, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 6, -1, N'19971008', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 9, -1, N'19970106', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 9, -1, N'19970325', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 14, -1, N'19970820', 21, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 18, -1, N'19980119', 14, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 18, -1, N'19980302', 14, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 19, -1, N'19971104', 16, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 19, -1, N'19980421', 20, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 20, -1, N'19980302', 17, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 20, -1, N'19980317', 17, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 21, -1, N'19971008', 9, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 21, -1, N'19971104', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 21, -1, N'19980102', 9, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 24, -1, N'19970820', 35, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 24, -1, N'19980317', 13, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 25, -1, N'19980317', 34, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 29, -1, N'19980421', 20, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 30, -1, N'19980102', 9, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 33, -1, N'19970325', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 40, -1, N'19980421', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 42, -1, N'19971008', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 43, -1, N'19970820', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 43, -1, N'19980317', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 45, -1, N'19980102', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 45, -1, N'19980302', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 45, -1, N'19980410', 10, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 47, -1, N'19980119', 63, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (28, 48, -1, N'19980119', 19, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 1, -1, N'19970623', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 6, -1, N'19980108', 15, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 7, -1, N'19970623', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 16, -1, N'19970623', 13, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 17, -1, N'19970619', 49, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 17, -1, N'19980108', 49, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 26, -1, N'19970619', 3, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 31, -1, N'19970619', 33, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (29, 45, -1, N'19970619', 18, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 1, -1, N'19970116', 211, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 10, -1, N'19970822', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 16, -1, N'19970116', 10, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 17, -1, N'19971229', 49, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 20, -1, N'19980506', 17, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 21, -1, N'19970116', 10, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 21, -1, N'19970822', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 24, -1, N'19970603', 35, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 25, -1, N'19961029', 44, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 26, -1, N'19961029', 2, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 33, -1, N'19971229', 24, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 37, -1, N'19971229', 53, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 43, -1, N'19970116', 10, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 46, -1, N'19971229', 26, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (30, 48, -1, N'19970915', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 1, -1, N'19970416', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 3, -1, N'19971205', 19, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 6, -1, N'19960719', 12, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 14, -1, N'19970626', 21, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 16, -1, N'19970530', 13, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 16, -1, N'19980403', 13, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 17, -1, N'19960719', 39, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 17, -1, N'19970530', 49, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 20, -1, N'19970530', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 21, -1, N'19971205', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 22, -1, N'19970926', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 23, -1, N'19970107', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 24, -1, N'19980115', 13, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 25, -1, N'19970926', 34, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 26, -1, N'19970107', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 29, -1, N'19960719', 16, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 30, -1, N'19970530', 9, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 32, -1, N'19980115', 33, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 37, -1, N'19980403', 53, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 38, -1, N'19971205', 30, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 38, -1, N'19980115', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 39, -1, N'19970626', 23, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 44, -1, N'19970416', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 45, -1, N'19960719', 8, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 45, -1, N'19970626', 10, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 45, -1, N'19970926', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 45, -1, N'19980403', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (31, 49, -1, N'19980414', 31, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 1, -1, N'19961015', 211, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 2, -1, N'19980108', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 15, -1, N'19980325', 44, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 18, -1, N'19970131', 25, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 21, -1, N'19961015', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 21, -1, N'19961217', 10, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 21, -1, N'19971127', 13, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 25, -1, N'19961217', 27, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 26, -1, N'19960801', 2, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 26, -1, N'19971127', 36, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 29, -1, N'19961015', 30, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 29, -1, N'19961202', 30, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 33, -1, N'19961108', 6, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 33, -1, N'19970131', 6, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 35, -1, N'19961202', 99, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 37, -1, N'19980108', 53, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 38, -1, N'19961217', 24, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 46, -1, N'19961015', 21, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 47, -1, N'19971127', 63, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (32, 48, -1, N'19971127', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 4, -1, N'19970620', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 15, -1, N'19970620', 44, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 17, -1, N'19960809', 39, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 17, -1, N'19971216', 49, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 20, -1, N'19971216', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 22, -1, N'19971009', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 24, -1, N'19970620', 35, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 24, -1, N'19980312', 13, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 25, -1, N'19970620', 55, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 40, -1, N'19960809', 36, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (33, 44, -1, N'19980312', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 2, -1, N'19971222', 18, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 7, -1, N'19970815', 8, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 8, -1, N'19971203', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 15, -1, N'19971222', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 17, -1, N'19970108', 39, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 21, -1, N'19971203', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 21, -1, N'19971222', 13, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 22, -1, N'19970320', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 25, -1, N'19970320', 44, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 30, -1, N'19971203', 21, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 33, -1, N'19970108', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 37, -1, N'19970815', 53, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 38, -1, N'19970815', 30, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 47, -1, N'19970815', 63, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 47, -1, N'19971222', 63, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (34, 48, -1, N'19970108', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 2, -1, N'19970528', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 4, -1, N'19970718', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 5, -1, N'19970304', 37, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 8, -1, N'19961112', 4, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 12, -1, N'19970331', 16, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 12, -1, N'19970528', 19, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 14, -1, N'19961014', 17, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 14, -1, N'19970304', 18, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 14, -1, N'19970910', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 16, -1, N'19970331', 10, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 20, -1, N'19970528', 17, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 21, -1, N'19961014', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 22, -1, N'19970718', 13, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 25, -1, N'19961014', 44, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 25, -1, N'19970304', 27, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 25, -1, N'19980319', 34, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 29, -1, N'19970304', 30, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 29, -1, N'19970910', 38, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 33, -1, N'19961112', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (35, 49, -1, N'19970910', 31, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 1, -1, N'19970317', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 3, -1, N'19970317', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 11, -1, N'19980408', 40, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 14, -1, N'19961023', 18, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 21, -1, N'19961227', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 21, -1, N'19970317', 8, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 28, -1, N'19980408', 14, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 29, -1, N'19970203', 30, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 35, -1, N'19980408', 124, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (36, 37, -1, N'19961227', 42, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 2, -1, N'19970624', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 5, -1, N'19980414', 46, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 6, -1, N'19970515', 15, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 9, -1, N'19960826', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 17, -1, N'19970715', 49, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 19, -1, N'19970516', 20, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 21, -1, N'19970324', 8, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 21, -1, N'19970516', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 24, -1, N'19970515', 35, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 25, -1, N'19980313', 55, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 26, -1, N'19970516', 3, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 29, -1, N'19970311', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 29, -1, N'19970624', 20, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 30, -1, N'19980311', 21, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 31, -1, N'19960826', 27, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 37, -1, N'19970324', 42, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 38, -1, N'19970311', 24, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 38, -1, N'19980414', 30, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 43, -1, N'19980311', 12, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 44, -1, N'19970516', 6, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 44, -1, N'19980311', 6, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (37, 45, -1, N'19970324', 15, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 1, -1, N'19961209', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 3, -1, N'19980204', 18, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 8, -1, N'19970312', 4, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 19, -1, N'19971230', 20, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 20, -1, N'19961121', 14, CAST(56.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 21, -1, N'19970501', 81, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 21, -1, N'19980204', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 23, -1, N'19971226', 21, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 23, -1, N'19980204', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 24, -1, N'19961121', 10, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 24, -1, N'19970523', 32, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 25, -1, N'19961121', 27, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 27, -1, N'19961219', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 30, -1, N'19980204', 9, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 32, -1, N'19961219', 26, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 33, -1, N'19971226', 7, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 34, -1, N'19970501', 39, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 37, -1, N'19970312', 42, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 37, -1, N'19971226', 53, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 40, -1, N'19961209', 36, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 40, -1, N'19971230', 46, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 43, -1, N'19961219', 8, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 45, -1, N'19970501', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 48, -1, N'19970501', 26, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 48, -1, N'19970523', 19, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (38, 49, -1, N'19971230', 31, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 3, -1, N'19971124', 18, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 6, -1, N'19970424', 15, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 6, -1, N'19980429', 15, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 25, -1, N'19970424', 55, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 26, -1, N'19971124', 36, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (39, 27, -1, N'19970424', 7, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 2, -1, N'19980202', 14, CAST(19.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 3, -1, N'19971114', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 6, -1, N'19970221', 12, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 6, -1, N'19971016', 15, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 8, -1, N'19961115', 4, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 19, -1, N'19961216', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 19, -1, N'19980303', 16, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 21, -1, N'19980316', 81, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 22, -1, N'19970221', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 22, -1, N'19970604', 10, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 24, -1, N'19971208', 13, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 24, -1, N'19980316', 13, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 24, -1, N'19980410', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 25, -1, N'19971208', 34, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 26, -1, N'19971208', 22, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 27, -1, N'19970604', 7, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 27, -1, N'19971224', 7, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 29, -1, N'19961115', 16, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 29, -1, N'19961216', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 29, -1, N'19971016', 20, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 30, -1, N'19971208', 21, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 32, -1, N'19970604', 33, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 33, -1, N'19971016', 24, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 37, -1, N'19970604', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 43, -1, N'19971117', 12, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 44, -1, N'19961216', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 45, -1, N'19971224', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 48, -1, N'19970604', 15, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (40, 48, -1, N'19980410', 19, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 3, -1, N'19970204', 15, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 14, -1, N'19980123', 21, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 24, -1, N'19970204', 28, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 30, -1, N'19970204', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 30, -1, N'19970303', 7, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 36, -1, N'19980123', 97, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (41, 44, -1, N'19970303', 5, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 2, -1, N'19970101', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 3, -1, N'19980424', 18, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 5, -1, N'19980331', 46, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 14, -1, N'19970509', 17, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 14, -1, N'19971103', 22, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 14, -1, N'19980415', 21, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 14, -1, N'19980424', 21, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 18, -1, N'19980415', 31, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 19, -1, N'19970101', 16, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 23, -1, N'19971103', 21, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 24, -1, N'19980331', 35, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 25, -1, N'19980428', 34, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 26, -1, N'19961126', 17, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 26, -1, N'19980415', 3, CAST(80.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 33, -1, N'19980428', 24, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 35, -1, N'19970101', 99, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 38, -1, N'19980331', 30, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 38, -1, N'19980428', 30, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (42, 46, -1, N'19970509', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 1, -1, N'19970213', 14, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 1, -1, N'19970902', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 1, -1, N'19970917', 264, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 2, -1, N'19970212', 14, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 3, -1, N'19971001', 18, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 3, -1, N'19980203', 19, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 4, -1, N'19980116', 18, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 5, -1, N'19970501', 46, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 7, -1, N'19960814', 6, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 7, -1, N'19970618', 8, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 7, -1, N'19980304', 8, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 8, -1, N'19960814', 4, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 8, -1, N'19980203', 5, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 9, -1, N'19980128', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 12, -1, N'19960812', 16, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 14, -1, N'19970902', 22, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 15, -1, N'19960812', 35, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 18, -1, N'19970212', 25, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 18, -1, N'19980128', 31, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 19, -1, N'19980206', 20, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 20, -1, N'19970618', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 21, -1, N'19961216', 65, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 21, -1, N'19980206', 9, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 22, -1, N'19980116', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 22, -1, N'19980206', 10, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 24, -1, N'19970618', 32, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 25, -1, N'19960812', 44, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 25, -1, N'19961216', 27, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 25, -1, N'19970811', 34, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 26, -1, N'19970811', 22, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 26, -1, N'19970917', 22, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 27, -1, N'19971107', 7, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 32, -1, N'19970811', 33, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 33, -1, N'19960814', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 33, -1, N'19970213', 6, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 33, -1, N'19970501', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 33, -1, N'19970902', 7, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 34, -1, N'19970212', 31, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 35, -1, N'19980128', 124, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 39, -1, N'19971107', 23, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 40, -1, N'19971107', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 40, -1, N'19980304', 46, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 44, -1, N'19980116', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 45, -1, N'19970212', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 45, -1, N'19970618', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 45, -1, N'19971216', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 45, -1, N'19980116', 18, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 46, -1, N'19970501', 26, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 46, -1, N'19980203', 26, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 48, -1, N'19960812', 12, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 49, -1, N'19970501', 31, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (43, 49, -1, N'19980304', 31, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 2, -1, N'19970523', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 3, -1, N'19971231', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 5, -1, N'19980105', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 6, -1, N'19980123', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 10, -1, N'19980105', 29, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 14, -1, N'19960708', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 14, -1, N'19971231', 21, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 17, -1, N'19970523', 49, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 18, -1, N'19980123', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 21, -1, N'19961021', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 22, -1, N'19980105', 13, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 24, -1, N'19970227', 28, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 26, -1, N'19980123', 3, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 27, -1, N'19961021', 6, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 29, -1, N'19960708', 16, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 30, -1, N'19960708', 17, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 33, -1, N'19970219', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 37, -1, N'19980121', 53, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 38, -1, N'19970227', 24, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 38, -1, N'19970523', 30, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 41, -1, N'19971231', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 43, -1, N'19970227', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 45, -1, N'19980105', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 49, -1, N'19970219', 25, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (44, 49, -1, N'19970318', 25, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 2, -1, N'19960814', 14, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 8, -1, N'19960814', 4, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 21, -1, N'19960814', 7, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 21, -1, N'19980409', 13, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 25, -1, N'19980302', 34, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 28, -1, N'19980409', 14, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 29, -1, N'19960815', 16, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 30, -1, N'19980409', 9, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 32, -1, N'19960916', 26, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 33, -1, N'19960916', 6, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 43, -1, N'19980409', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 46, -1, N'19960815', 21, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 46, -1, N'19960916', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (45, 46, -1, N'19980302', 26, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 7, -1, N'19961010', 6, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 14, -1, N'19961010', 18, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 27, -1, N'19980324', 7, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 29, -1, N'19961010', 16, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 34, -1, N'19971229', 39, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (46, 35, -1, N'19971229', 124, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 1, -1, N'19970729', 18, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 4, -1, N'19970627', 18, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 10, -1, N'19980429', 29, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 21, -1, N'19970729', 10, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 21, -1, N'19980317', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 21, -1, N'19980429', 10, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 22, -1, N'19980317', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 23, -1, N'19970729', 21, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 25, -1, N'19980429', 34, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 29, -1, N'19970627', 20, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 33, -1, N'19970409', 7, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 37, -1, N'19980317', 53, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 40, -1, N'19970417', 46, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (48, 47, -1, N'19980127', 63, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 1, -1, N'19980112', 18, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 4, -1, N'19971106', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 5, -1, N'19961029', 37, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 7, -1, N'19980306', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 11, -1, N'19970418', 40, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 11, -1, N'19980205', 25, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 11, -1, N'19980506', 25, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 14, -1, N'19970418', 22, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 14, -1, N'19971105', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 17, -1, N'19980306', 49, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 18, -1, N'19961125', 11, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 20, -1, N'19971105', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 20, -1, N'19980205', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 20, -1, N'19980306', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 21, -1, N'19980506', 9, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 22, -1, N'19971126', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 24, -1, N'19971105', 13, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 24, -1, N'19980306', 35, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 26, -1, N'19971023', 22, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 26, -1, N'19971126', 36, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 28, -1, N'19970910', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 29, -1, N'19971126', 20, CAST(44.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 30, -1, N'19970311', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 31, -1, N'19970311', 27, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 31, -1, N'19980209', 33, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 33, -1, N'19961016', 6, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 33, -1, N'19961125', 6, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 34, -1, N'19980205', 39, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 37, -1, N'19961125', 42, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 37, -1, N'19970910', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 38, -1, N'19970418', 30, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 38, -1, N'19980311', 30, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 39, -1, N'19980506', 23, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 43, -1, N'19980209', 12, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 44, -1, N'19980311', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 45, -1, N'19961029', 8, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 45, -1, N'19970502', 18, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 45, -1, N'19970910', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 47, -1, N'19961029', 50, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 47, -1, N'19970311', 50, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 48, -1, N'19970502', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 49, -1, N'19971023', 31, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (49, 49, -1, N'19980112', 31, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 6, -1, N'19960918', 12, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 21, -1, N'19980304', 9, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 23, -1, N'19980304', 21, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 24, -1, N'19971128', 32, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 24, -1, N'19980304', 35, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 25, -1, N'19970808', 34, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 26, -1, N'19960918', 29, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 28, -1, N'19970808', 14, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 39, -1, N'19970808', 23, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (50, 44, -1, N'19980304', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (51, 21, -1, N'19960718', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (51, 48, -1, N'19960718', 21, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 2, -1, N'19970619', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 3, -1, N'19980128', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 5, -1, N'19970415', 46, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 7, -1, N'19970925', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 14, -1, N'19970925', 17, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 18, -1, N'19970922', 31, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 22, -1, N'19970415', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 23, -1, N'19961127', 17, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 23, -1, N'19970513', 21, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 25, -1, N'19970513', 55, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 26, -1, N'19970922', 3, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 26, -1, N'19970925', 3, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 28, -1, N'19980128', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 29, -1, N'19970513', 20, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 32, -1, N'19970619', 33, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 34, -1, N'19970619', 39, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (52, 45, -1, N'19970513', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 1, -1, N'19970425', 264, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 1, -1, N'19980504', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 2, -1, N'19970410', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 3, -1, N'19961114', 14, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 3, -1, N'19970623', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 4, -1, N'19961002', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 5, -1, N'19980120', 46, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 6, -1, N'19980120', 15, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 7, -1, N'19960829', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 7, -1, N'19970313', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 8, -1, N'19960829', 4, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 8, -1, N'19970425', 5, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 8, -1, N'19980505', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 12, -1, N'19970425', 19, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 12, -1, N'19970623', 19, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 12, -1, N'19970922', 19, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 15, -1, N'19960829', 35, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 19, -1, N'19960912', 16, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 21, -1, N'19970922', 9, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 21, -1, N'19980120', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 23, -1, N'19980120', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 23, -1, N'19980505', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 24, -1, N'19970623', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 25, -1, N'19960912', 44, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 25, -1, N'19980402', 34, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 26, -1, N'19960912', 17, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 26, -1, N'19980227', 3, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 27, -1, N'19961004', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 32, -1, N'19970410', 33, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 33, -1, N'19980227', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 34, -1, N'19961002', 31, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 34, -1, N'19980227', 39, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 35, -1, N'19961114', 99, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 37, -1, N'19980402', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 39, -1, N'19970313', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 40, -1, N'19961002', 36, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 40, -1, N'19970313', 36, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 43, -1, N'19970410', 10, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 44, -1, N'19960808', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 45, -1, N'19970313', 15, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 47, -1, N'19960829', 50, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 49, -1, N'19960808', 25, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (53, 49, -1, N'19970922', 31, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 1, -1, N'19970123', 211, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 2, -1, N'19970123', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 3, -1, N'19970707', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 8, -1, N'19970611', 5, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 10, -1, N'19971030', 29, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 11, -1, N'19970801', 25, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 14, -1, N'19961028', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 16, -1, N'19970707', 13, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 17, -1, N'19961028', 39, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 17, -1, N'19970414', 49, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 20, -1, N'19970207', 14, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 20, -1, N'19970721', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 21, -1, N'19970123', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 21, -1, N'19970801', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 21, -1, N'19970804', 10, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 22, -1, N'19961017', 8, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 23, -1, N'19970207', 30, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 23, -1, N'19970617', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 24, -1, N'19961209', 10, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 25, -1, N'19970721', 34, CAST(90.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 26, -1, N'19970721', 22, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 28, -1, N'19961017', 11, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 29, -1, N'19970617', 38, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 29, -1, N'19970801', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 30, -1, N'19970804', 21, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 31, -1, N'19970207', 27, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 31, -1, N'19970611', 33, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 34, -1, N'19961028', 31, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 41, -1, N'19970207', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 47, -1, N'19961017', 50, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (54, 49, -1, N'19971030', 31, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 2, -1, N'19970807', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 2, -1, N'19970916', 14, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 3, -1, N'19961030', 15, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 4, -1, N'19960729', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 7, -1, N'19970916', 8, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 7, -1, N'19980305', 8, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 8, -1, N'19970807', 5, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 8, -1, N'19980129', 5, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 16, -1, N'19980305', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 17, -1, N'19970606', 49, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 18, -1, N'19961024', 25, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 20, -1, N'19970902', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 21, -1, N'19970807', 9, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 21, -1, N'19971024', 10, CAST(32.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 21, -1, N'19980305', 10, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 21, -1, N'19980409', 9, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 24, -1, N'19961024', 28, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 24, -1, N'19961030', 10, CAST(56.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 24, -1, N'19961227', 28, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 25, -1, N'19960729', 44, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 25, -1, N'19970327', 44, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 25, -1, N'19970902', 34, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 25, -1, N'19980409', 34, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 26, -1, N'19961227', 17, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 26, -1, N'19971024', 36, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 26, -1, N'19980409', 22, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 30, -1, N'19961024', 7, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 30, -1, N'19961227', 7, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 30, -1, N'19970916', 9, CAST(32.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 31, -1, N'19980129', 33, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 32, -1, N'19970919', 33, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 33, -1, N'19961030', 19, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 33, -1, N'19971024', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 33, -1, N'19980129', 7, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 35, -1, N'19971223', 124, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 39, -1, N'19970807', 23, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 39, -1, N'19970919', 23, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 42, -1, N'19970919', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 43, -1, N'19970916', 12, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 45, -1, N'19960729', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 45, -1, N'19971223', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 46, -1, N'19970606', 26, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 48, -1, N'19961024', 15, CAST(48.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 48, -1, N'19961030', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 48, -1, N'19970327', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (55, 48, -1, N'19970916', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 2, -1, N'19970206', 11, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 2, -1, N'19970526', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 8, -1, N'19970214', 4, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 19, -1, N'19980323', 20, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 21, -1, N'19970206', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 21, -1, N'19970214', 7, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 21, -1, N'19980323', 9, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 24, -1, N'19970214', 10, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 27, -1, N'19970214', 6, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 29, -1, N'19970206', 16, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 29, -1, N'19970723', 38, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 37, -1, N'19960705', 42, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 39, -1, N'19960705', 19, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (56, 45, -1, N'19970526', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 2, -1, N'19980216', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 3, -1, N'19970724', 18, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 4, -1, N'19980129', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 14, -1, N'19970917', 21, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 17, -1, N'19970917', 49, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 20, -1, N'19970917', 17, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 21, -1, N'19970724', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 26, -1, N'19960920', 29, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 27, -1, N'19970926', 7, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 28, -1, N'19960920', 11, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 34, -1, N'19980216', 39, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 35, -1, N'19980324', 124, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 37, -1, N'19980129', 53, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 45, -1, N'19980216', 10, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (57, 49, -1, N'19970724', 31, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 1, -1, N'19970224', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 2, -1, N'19970530', 18, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 3, -1, N'19970505', 18, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 3, -1, N'19980415', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 5, -1, N'19960801', 37, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 10, -1, N'19970224', 23, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 14, -1, N'19970819', 22, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 20, -1, N'19970530', 17, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 21, -1, N'19961018', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 21, -1, N'19970116', 7, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 23, -1, N'19960726', 30, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 23, -1, N'19970530', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 24, -1, N'19970530', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 25, -1, N'19970630', 34, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 25, -1, N'19971121', 55, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 26, -1, N'19961003', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 26, -1, N'19961018', 17, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 26, -1, N'19970224', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 26, -1, N'19970630', 36, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 29, -1, N'19970116', 16, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 29, -1, N'19970505', 38, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 29, -1, N'19971217', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 30, -1, N'19970530', 21, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 32, -1, N'19970116', 26, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 32, -1, N'19970205', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 32, -1, N'19970224', 26, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 33, -1, N'19971217', 7, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 35, -1, N'19970630', 124, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 39, -1, N'19961018', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 39, -1, N'19970113', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 39, -1, N'19971121', 23, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 41, -1, N'19971217', 10, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 42, -1, N'19970819', 13, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 43, -1, N'19971121', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 44, -1, N'19970505', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 44, -1, N'19980415', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (58, 48, -1, N'19960801', 15, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 1, -1, N'19980320', 264, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 7, -1, N'19980225', 8, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 20, -1, N'19971112', 17, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 23, -1, N'19980422', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 26, -1, N'19980320', 36, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (60, 47, -1, N'19980320', 63, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 1, -1, N'19971230', 264, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 2, -1, N'19971230', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 14, -1, N'19971017', 21, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 17, -1, N'19960920', 39, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 20, -1, N'19960920', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 24, -1, N'19980401', 35, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (61, 48, -1, N'19971017', 19, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 2, -1, N'19970521', 14, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 3, -1, N'19960930', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 4, -1, N'19970911', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 8, -1, N'19980212', 5, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 17, -1, N'19960917', 39, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 21, -1, N'19960917', 10, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 21, -1, N'19970909', 13, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 23, -1, N'19980413', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 25, -1, N'19970911', 55, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 29, -1, N'19980413', 38, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 32, -1, N'19980203', 33, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 37, -1, N'19970911', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 40, -1, N'19970521', 46, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (62, 47, -1, N'19980413', 63, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 6, -1, N'19980430', 15, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 8, -1, N'19980409', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 16, -1, N'19980102', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 17, -1, N'19970609', 49, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 19, -1, N'19980311', 20, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 21, -1, N'19960823', 10, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 23, -1, N'19970212', 17, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 24, -1, N'19980102', 13, CAST(56.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 25, -1, N'19971103', 55, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 26, -1, N'19970609', 3, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 27, -1, N'19970702', 7, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 27, -1, N'19980226', 7, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 29, -1, N'19971103', 38, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 32, -1, N'19980430', 33, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 33, -1, N'19960823', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 34, -1, N'19971103', 39, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 38, -1, N'19980226', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 38, -1, N'19980409', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 40, -1, N'19970212', 36, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 43, -1, N'19970128', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (63, 45, -1, N'19970903', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 23, -1, N'19960704', 14, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 24, -1, N'19960704', 35, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 24, -1, N'19960806', 28, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 26, -1, N'19960806', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 27, -1, N'19971112', 7, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 28, -1, N'19960704', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 29, -1, N'19960902', 30, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 44, -1, N'19971111', 6, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 45, -1, N'19971111', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (64, 48, -1, N'19971112', 19, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 3, -1, N'19980224', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 3, -1, N'19980309', 18, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 5, -1, N'19970825', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 6, -1, N'19970121', 12, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 6, -1, N'19980220', 15, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 16, -1, N'19960715', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 18, -1, N'19971230', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 21, -1, N'19971230', 9, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 22, -1, N'19970701', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 25, -1, N'19971230', 55, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 27, -1, N'19980101', 7, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 30, -1, N'19980309', 9, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 32, -1, N'19960715', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 36, -1, N'19970121', 78, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 43, -1, N'19970825', 12, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 44, -1, N'19970121', 5, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 47, -1, N'19970825', 63, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 47, -1, N'19980309', 63, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (65, 48, -1, N'19970121', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 1, -1, N'19970827', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 2, -1, N'19960719', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 2, -1, N'19970702', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 2, -1, N'19971028', 18, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 11, -1, N'19980331', 25, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 12, -1, N'19960827', 16, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 14, -1, N'19961211', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 15, -1, N'19961211', 35, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 16, -1, N'19970121', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 16, -1, N'19970702', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 18, -1, N'19970121', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 18, -1, N'19970702', 31, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 21, -1, N'19960719', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 21, -1, N'19970121', 7, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 21, -1, N'19970827', 9, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 23, -1, N'19980331', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 26, -1, N'19971028', 22, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 32, -1, N'19970121', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 33, -1, N'19971224', 7, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 37, -1, N'19960827', 42, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 39, -1, N'19971224', 23, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 44, -1, N'19960827', 5, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 45, -1, N'19961211', 8, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (66, 45, -1, N'19980331', 10, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 2, -1, N'19960822', 11, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 3, -1, N'19970806', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 3, -1, N'19980105', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 3, -1, N'19980126', 19, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 6, -1, N'19960906', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 8, -1, N'19970828', 5, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 14, -1, N'19970214', 17, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 18, -1, N'19980126', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 19, -1, N'19970320', 16, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 20, -1, N'19960822', 14, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 20, -1, N'19980209', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 21, -1, N'19960906', 7, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 21, -1, N'19970214', 7, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 21, -1, N'19970806', 13, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 25, -1, N'19970320', 27, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 25, -1, N'19980126', 55, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 25, -1, N'19980429', 34, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 26, -1, N'19970214', 17, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 27, -1, N'19970610', 7, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 29, -1, N'19980126', 20, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 30, -1, N'19970828', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 34, -1, N'19980429', 39, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 43, -1, N'19960822', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 43, -1, N'19980105', 12, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 44, -1, N'19980429', 6, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 47, -1, N'19980209', 63, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (67, 48, -1, N'19970610', 19, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 1, -1, N'19960710', 14, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 1, -1, N'19970519', 264, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 1, -1, N'19971218', 264, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 1, -1, N'19980327', 264, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 5, -1, N'19980427', 46, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 8, -1, N'19970519', 5, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 8, -1, N'19980303', 5, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 10, -1, N'19980427', 29, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 14, -1, N'19960708', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 14, -1, N'19970519', 21, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 14, -1, N'19980224', 21, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 16, -1, N'19971002', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 16, -1, N'19980213', 13, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 19, -1, N'19960710', 16, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 21, -1, N'19980224', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 21, -1, N'19980414', 9, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 23, -1, N'19971209', 21, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 24, -1, N'19960710', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 24, -1, N'19971218', 13, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 24, -1, N'19980213', 13, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 26, -1, N'19970519', 22, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 26, -1, N'19980414', 36, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 27, -1, N'19980304', 7, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 29, -1, N'19971002', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 34, -1, N'19980303', 39, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 37, -1, N'19960708', 42, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 44, -1, N'19980224', 6, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 45, -1, N'19960708', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 47, -1, N'19970826', 63, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 48, -1, N'19970826', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 48, -1, N'19980304', 19, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (68, 49, -1, N'19980213', 31, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 1, -1, N'19961113', 211, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 4, -1, N'19970508', 18, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 5, -1, N'19970508', 46, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 8, -1, N'19970711', 5, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 10, -1, N'19970508', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 14, -1, N'19970711', 21, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 15, -1, N'19971119', 44, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 18, -1, N'19970930', 31, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 20, -1, N'19970328', 14, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 23, -1, N'19961113', 17, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 23, -1, N'19970328', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 24, -1, N'19971119', 13, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 24, -1, N'19980427', 32, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 26, -1, N'19961224', 29, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 26, -1, N'19971119', 36, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 29, -1, N'19970711', 20, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 30, -1, N'19980121', 21, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 31, -1, N'19980427', 33, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 34, -1, N'19970508', 39, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 34, -1, N'19970930', 39, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 39, -1, N'19970127', 19, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 45, -1, N'19971119', 10, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (69, 47, -1, N'19980427', 63, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 1, -1, N'19960716', 14, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 2, -1, N'19980318', 18, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 3, -1, N'19970822', 19, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 3, -1, N'19980202', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 6, -1, N'19970317', 12, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 7, -1, N'19970331', 6, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 7, -1, N'19970529', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 7, -1, N'19970729', 8, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 8, -1, N'19970407', 5, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 8, -1, N'19980319', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 8, -1, N'19980428', 5, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 12, -1, N'19971225', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 16, -1, N'19960716', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 18, -1, N'19960716', 35, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 18, -1, N'19971225', 31, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 18, -1, N'19980428', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 21, -1, N'19970331', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 23, -1, N'19970326', 17, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 24, -1, N'19971015', 13, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 25, -1, N'19970331', 44, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 25, -1, N'19970716', 55, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 26, -1, N'19961226', 29, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 26, -1, N'19970529', 36, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 26, -1, N'19971225', 36, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 26, -1, N'19980223', 22, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 28, -1, N'19970407', 14, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 29, -1, N'19980428', 20, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 31, -1, N'19971225', 33, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 31, -1, N'19980318', 33, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 32, -1, N'19961226', 26, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 33, -1, N'19970317', 19, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 37, -1, N'19970326', 42, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 37, -1, N'19980428', 53, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 40, -1, N'19980325', 46, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 41, -1, N'19970326', 8, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 42, -1, N'19980202', 13, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 43, -1, N'19961226', 10, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 44, -1, N'19970716', 6, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 44, -1, N'19970729', 6, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 45, -1, N'19970407', 18, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 45, -1, N'19970822', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 45, -1, N'19980223', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 45, -1, N'19980319', 10, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (70, 46, -1, N'19980318', 26, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 7, -1, N'19970625', 8, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 10, -1, N'19971110', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 13, -1, N'19970625', 16, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 14, -1, N'19980212', 21, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 16, -1, N'19971110', 13, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 21, -1, N'19980212', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 29, -1, N'19980212', 38, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 33, -1, N'19971027', 7, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 46, -1, N'19971027', 26, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (71, 47, -1, N'19971027', 63, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 10, -1, N'19980422', 29, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 12, -1, N'19980422', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 14, -1, N'19960827', 17, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 16, -1, N'19960827', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 19, -1, N'19960827', 16, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 23, -1, N'19970306', 17, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 29, -1, N'19970402', 30, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 35, -1, N'19960827', 99, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 43, -1, N'19970306', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (72, 43, -1, N'19980323', 12, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 1, -1, N'19961106', 14, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 2, -1, N'19961218', 11, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 7, -1, N'19961106', 6, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 7, -1, N'19970626', 8, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 8, -1, N'19961218', 4, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 8, -1, N'19970421', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 18, -1, N'19961106', 11, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 21, -1, N'19970114', 7, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 22, -1, N'19970421', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 25, -1, N'19970421', 34, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 26, -1, N'19970114', 2, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 27, -1, N'19971031', 7, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 32, -1, N'19970829', 33, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 33, -1, N'19970829', 7, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 33, -1, N'19971031', 24, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 43, -1, N'19970421', 12, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 45, -1, N'19961106', 15, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 45, -1, N'19971031', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (73, 46, -1, N'19970829', 26, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 1, -1, N'19961204', 211, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 2, -1, N'19980204', 18, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 3, -1, N'19970107', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 4, -1, N'19980319', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 5, -1, N'19980504', 46, CAST(36.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 6, -1, N'19970905', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 7, -1, N'19971219', 8, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 8, -1, N'19971014', 5, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 11, -1, N'19971219', 40, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 14, -1, N'19971014', 22, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 14, -1, N'19980226', 22, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 16, -1, N'19980504', 13, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 18, -1, N'19970326', 25, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 18, -1, N'19980204', 31, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 19, -1, N'19970819', 16, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 19, -1, N'19980204', 20, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 21, -1, N'19961204', 65, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 21, -1, N'19970107', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 21, -1, N'19970326', 7, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 22, -1, N'19971014', 13, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 23, -1, N'19970819', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 24, -1, N'19961204', 28, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 24, -1, N'19970905', 13, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 25, -1, N'19961204', 27, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 25, -1, N'19971104', 34, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 26, -1, N'19980226', 3, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 26, -1, N'19980227', 22, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 27, -1, N'19980319', 7, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 29, -1, N'19970819', 38, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 33, -1, N'19970326', 6, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 33, -1, N'19971104', 24, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 40, -1, N'19970107', 36, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 40, -1, N'19980504', 46, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 42, -1, N'19980226', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 45, -1, N'19970107', 15, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 45, -1, N'19970905', 18, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 45, -1, N'19971104', 18, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 46, -1, N'19971104', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 46, -1, N'19971219', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (74, 48, -1, N'19970107', 15, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 1, -1, N'19980113', 18, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 11, -1, N'19980113', 25, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 14, -1, N'19970722', 22, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 17, -1, N'19970722', 49, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 21, -1, N'19960828', 65, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 21, -1, N'19980113', 13, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 24, -1, N'19970404', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 24, -1, N'19980119', 35, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 25, -1, N'19980113', 34, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 33, -1, N'19970722', 24, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 35, -1, N'19980115', 124, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 42, -1, N'19980119', 13, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (75, 46, -1, N'19980115', 26, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 1, -1, N'19980417', 264, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 2, -1, N'19970324', 11, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 2, -1, N'19971113', 18, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 2, -1, N'19980501', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 3, -1, N'19970310', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 3, -1, N'19970411', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 7, -1, N'19970711', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 10, -1, N'19970411', 29, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 11, -1, N'19961101', 32, CAST(70.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 12, -1, N'19970310', 16, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 14, -1, N'19961101', 18, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 15, -1, N'19970711', 44, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 16, -1, N'19970324', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 17, -1, N'19980130', 49, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 17, -1, N'19980224', 49, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 18, -1, N'19971030', 31, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 20, -1, N'19970310', 14, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 20, -1, N'19980501', 17, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 21, -1, N'19970411', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 21, -1, N'19980130', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 21, -1, N'19980501', 9, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 24, -1, N'19960731', 28, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 25, -1, N'19980417', 55, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 26, -1, N'19960731', 2, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 26, -1, N'19971006', 36, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 26, -1, N'19980130', 3, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 29, -1, N'19970711', 38, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 29, -1, N'19971113', 38, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 32, -1, N'19970411', 33, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 33, -1, N'19971006', 7, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 34, -1, N'19971008', 39, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 34, -1, N'19980130', 39, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 36, -1, N'19971006', 97, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 40, -1, N'19971113', 46, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 42, -1, N'19980224', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 43, -1, N'19971008', 12, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 43, -1, N'19971113', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 47, -1, N'19980130', 63, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 48, -1, N'19971006', 15, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (76, 48, -1, N'19980417', 19, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 2, -1, N'19980226', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 3, -1, N'19980216', 19, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 3, -1, N'19980226', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 6, -1, N'19980421', 15, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 8, -1, N'19980408', 5, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 10, -1, N'19970528', 29, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 14, -1, N'19960911', 17, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 14, -1, N'19980205', 21, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 17, -1, N'19980205', 49, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 19, -1, N'19980313', 16, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 21, -1, N'19960911', 10, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 21, -1, N'19970528', 9, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 21, -1, N'19980216', 13, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 25, -1, N'19980408', 34, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 31, -1, N'19970812', 33, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 31, -1, N'19980205', 33, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 33, -1, N'19980205', 24, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 33, -1, N'19980313', 24, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 34, -1, N'19970528', 39, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 34, -1, N'19980226', 39, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 35, -1, N'19970812', 124, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 37, -1, N'19980313', 53, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 45, -1, N'19960911', 15, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 48, -1, N'19980408', 19, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (77, 49, -1, N'19980206', 31, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 1, -1, N'19980114', 264, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 2, -1, N'19980114', 18, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 5, -1, N'19980114', 46, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 8, -1, N'19961218', 4, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 8, -1, N'19970429', 5, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 16, -1, N'19980410', 13, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 20, -1, N'19980226', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 21, -1, N'19980114', 9, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 25, -1, N'19961218', 44, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 26, -1, N'19961218', 17, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 32, -1, N'19970429', 33, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 38, -1, N'19980226', 30, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 40, -1, N'19961218', 36, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 45, -1, N'19980226', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 46, -1, N'19980410', 26, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (78, 47, -1, N'19970820', 63, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 1, -1, N'19960904', 14, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 1, -1, N'19961122', 211, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 3, -1, N'19970812', 18, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 4, -1, N'19970612', 18, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 6, -1, N'19960725', 12, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 7, -1, N'19970205', 6, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 17, -1, N'19970218', 39, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 19, -1, N'19961122', 16, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 23, -1, N'19970612', 21, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 24, -1, N'19960904', 28, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 24, -1, N'19970630', 13, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 24, -1, N'19980112', 13, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 25, -1, N'19970923', 55, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 27, -1, N'19970218', 6, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 29, -1, N'19970205', 30, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 29, -1, N'19980112', 20, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 31, -1, N'19970205', 27, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 33, -1, N'19961122', 6, CAST(28.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 33, -1, N'19970605', 24, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 34, -1, N'19960725', 31, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 35, -1, N'19961122', 99, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 40, -1, N'19961122', 36, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 43, -1, N'19970205', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 45, -1, N'19970605', 10, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 47, -1, N'19970612', 63, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (79, 49, -1, N'19970218', 25, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 2, -1, N'19980423', 18, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 3, -1, N'19961107', 14, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 3, -1, N'19970814', 19, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 5, -1, N'19960923', 37, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 6, -1, N'19970821', 15, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 7, -1, N'19960923', 6, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 10, -1, N'19970422', 29, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 21, -1, N'19970422', 10, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 21, -1, N'19970901', 9, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 23, -1, N'19980423', 38, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 24, -1, N'19961118', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 24, -1, N'19970422', 32, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 24, -1, N'19970915', 13, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 24, -1, N'19980423', 32, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 26, -1, N'19961118', 29, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 26, -1, N'19970814', 3, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 26, -1, N'19970821', 36, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 29, -1, N'19960909', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 30, -1, N'19961107', 7, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 30, -1, N'19970901', 21, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 31, -1, N'19970915', 33, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 32, -1, N'19960923', 26, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 33, -1, N'19961118', 19, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 33, -1, N'19970915', 24, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 40, -1, N'19960923', 36, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (80, 45, -1, N'19960909', 15, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 16, -1, N'19980430', 13, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 18, -1, N'19970122', 25, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 21, -1, N'19971020', 9, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 22, -1, N'19971020', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 25, -1, N'19980430', 34, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 37, -1, N'19980415', 53, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 41, -1, N'19971125', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 43, -1, N'19971125', 10, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 45, -1, N'19971231', 18, CAST(1.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (81, 47, -1, N'19980415', 63, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 2, -1, N'19961120', 11, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 2, -1, N'19980303', 14, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 3, -1, N'19970114', 14, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 3, -1, N'19971219', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 4, -1, N'19970114', 14, CAST(14.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 4, -1, N'19970124', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 5, -1, N'19980303', 46, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 7, -1, N'19970814', 8, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 8, -1, N'19961120', 4, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 8, -1, N'19980427', 5, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 12, -1, N'19980114', 19, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 13, -1, N'19970409', 16, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 14, -1, N'19970402', 14, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 17, -1, N'19970114', 39, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 18, -1, N'19980114', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 19, -1, N'19961111', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 20, -1, N'19970221', 14, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 26, -1, N'19961111', 29, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 26, -1, N'19970221', 2, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 26, -1, N'19970402', 29, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 28, -1, N'19980303', 14, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 31, -1, N'19980114', 33, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 33, -1, N'19970124', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 35, -1, N'19971219', 124, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 40, -1, N'19970409', 46, CAST(8.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 43, -1, N'19970221', 10, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 44, -1, N'19980114', 6, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 48, -1, N'19961120', 15, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 48, -1, N'19961203', 15, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (82, 48, -1, N'19970725', 19, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 3, -1, N'19980302', 18, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 5, -1, N'19980327', 46, CAST(9.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 6, -1, N'19961220', 12, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 7, -1, N'19980325', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 8, -1, N'19980416', 5, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 9, -1, N'19971114', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 11, -1, N'19980313', 25, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 11, -1, N'19980325', 40, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 12, -1, N'19970110', 16, CAST(40.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 12, -1, N'19980312', 19, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 17, -1, N'19961220', 39, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 17, -1, N'19980313', 49, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 17, -1, N'19980416', 49, CAST(21.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 18, -1, N'19970401', 11, CAST(60.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 21, -1, N'19980424', 13, CAST(42.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 22, -1, N'19970130', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 23, -1, N'19980312', 21, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 24, -1, N'19971114', 35, CAST(35.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 25, -1, N'19970110', 44, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 25, -1, N'19971114', 34, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 25, -1, N'19980302', 34, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 26, -1, N'19970110', 2, CAST(49.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 26, -1, N'19980423', 3, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 28, -1, N'19970401', 11, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 29, -1, N'19980312', 38, CAST(18.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 33, -1, N'19961220', 19, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 34, -1, N'19970130', 31, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 34, -1, N'19980313', 39, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 37, -1, N'19980423', 53, CAST(24.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 38, -1, N'19980327', 30, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 45, -1, N'19970110', 8, CAST(25.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 45, -1, N'19970130', 15, CAST(50.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 49, -1, N'19961220', 25, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (83, 49, -1, N'19980313', 31, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 6, -1, N'19980101', 15, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 8, -1, N'19970805', 5, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 16, -1, N'19970403', 10, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 18, -1, N'19980101', 14, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 27, -1, N'19970805', 7, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 30, -1, N'19970403', 7, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 44, -1, N'19980101', 6, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (84, 45, -1, N'19970403', 8, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 4, -1, N'19980305', 18, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 6, -1, N'19980129', 15, CAST(4.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 7, -1, N'19980324', 8, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 18, -1, N'19980129', 44, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 18, -1, N'19980324', 31, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 21, -1, N'19980305', 81, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 26, -1, N'19980324', 3, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 27, -1, N'19980305', 7, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 34, -1, N'19980324', 39, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 38, -1, N'19980129', 30, CAST(5.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (85, 45, -1, N'19980324', 10, CAST(6.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (86, 23, -1, N'19970522', 21, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (86, 45, -1, N'19970321', 15, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 2, -1, N'19980204', 18, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 3, -1, N'19970725', 18, CAST(16.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 3, -1, N'19971223', 19, CAST(10.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 7, -1, N'19980403', 8, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 8, -1, N'19980403', 5, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 10, -1, N'19980225', 29, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 10, -1, N'19980403', 29, CAST(7.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 17, -1, N'19980423', 49, CAST(12.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 21, -1, N'19971223', 13, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 24, -1, N'19961205', 10, CAST(30.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 25, -1, N'19970725', 34, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 33, -1, N'19971223', 7, CAST(3.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 37, -1, N'19980204', 53, CAST(2.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 41, -1, N'19980403', 10, CAST(20.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[F_Einkaeufe] ([Kunde], [Artikel], [Kassa], [Tag], [Menge], [Verkaufspreis]) VALUES (87, 42, -1, N'19961205', 11, CAST(15.00 AS Decimal(8, 2)))
GO
INSERT [dwh1].[Kassa] ([Kassa], [Filiale], [Filialbezirk], [Filialoberbezirk], [FilialLandkreis], [FilialBundesland], [FilialStaat]) VALUES (-1, N'N/A', N'N/A', N'N/A', N'N/A', N'N/A', N'N/A')
GO
SET IDENTITY_INSERT [dwh1].[Kunden] ON 
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (1, N'Aachen', N'_52066')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (2, N'Albuquerque', N'NM_87110')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (3, N'Anchorage', N'AK_99508')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (4, N'Århus', N'_8200')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (5, N'Barcelona', N'_08022')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (6, N'Barquisimeto', N'Lara_3508')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (7, N'Bergamo', N'_24100')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (8, N'Berlin', N'_12209')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (9, N'Bern', N'_3012')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (10, N'Boise', N'ID_83720')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (11, N'Bräcke', N'_S-844 67')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (12, N'Brandenburg', N'_14776')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (13, N'Bruxelles', N'_B-1180')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (14, N'Buenos Aires', N'_1010')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (15, N'Butte', N'MT_59801')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (16, N'Campinas', N'SP_04876-786')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (17, N'Caracas', N'DF_1081')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (18, N'Charleroi', N'_B-6000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (19, N'Cork', N'Co. Cork_')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (20, N'Cowes', N'Isle of Wight_PO31 7PJ')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (21, N'Cunewalde', N'_01307')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (22, N'Elgin', N'OR_97827')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (23, N'Eugene', N'OR_97403')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (24, N'Frankfurt a.M.', N'_60528')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (25, N'Genève', N'_1203')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (26, N'Graz', N'_8010')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (27, N'Helsinki', N'_21240')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (28, N'I. de Margarita', N'Nueva Esparta_4980')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (29, N'Kirkland', N'WA_98034')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (30, N'Kobenhavn', N'_1734')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (31, N'Köln', N'_50739')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (32, N'Lander', N'WY_82520')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (33, N'Leipzig', N'_04179')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (34, N'Lille', N'_59000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (35, N'Lisboa', N'_1675')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (36, N'Lisboa', N'_1756')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (37, N'London', N'_EC2 5NT')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (38, N'London', N'_OX15 4NB')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (39, N'London', N'_SW7 1RZ')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (40, N'London', N'_WA1 1DP')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (41, N'London', N'_WX1 6LT')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (42, N'London', N'_WX3 6FW')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (43, N'Luleå', N'_S-958 22')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (44, N'Lyon', N'_69004')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (45, N'Madrid', N'_28001')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (46, N'Madrid', N'_28023')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (47, N'Madrid', N'_28034')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (48, N'Mannheim', N'_68306')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (49, N'Marseille', N'_13008')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (50, N'México D.F.', N'_05021')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (51, N'México D.F.', N'_05022')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (52, N'México D.F.', N'_05023')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (53, N'México D.F.', N'_05033')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (54, N'Montréal', N'Québec_H1J 1C3')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (55, N'München', N'_80805')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (56, N'Münster', N'_44087')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (57, N'Nantes', N'_44000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (58, N'Oulu', N'_90110')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (59, N'Paris', N'_75012')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (60, N'Paris', N'_75016')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (61, N'Portland', N'OR_97201')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (62, N'Portland', N'OR_97219')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (63, N'Reggio Emilia', N'_42100')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (64, N'Reims', N'_51100')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (65, N'Resende', N'SP_08737-363')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (66, N'Rio de Janeiro', N'RJ_02389-673')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (67, N'Rio de Janeiro', N'RJ_02389-890')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (68, N'Rio de Janeiro', N'RJ_05454-876')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (69, N'Salzburg', N'_5020')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (70, N'San Cristóbal', N'Táchira_5022')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (71, N'San Francisco', N'CA_94117')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (72, N'Sao Paulo', N'SP_05432-043')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (73, N'Sao Paulo', N'SP_05442-030')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (74, N'Sao Paulo', N'SP_05487-020')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (75, N'Sao Paulo', N'SP_05634-030')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (76, N'Seattle', N'WA_98128')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (77, N'Sevilla', N'_41101')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (78, N'Stavern', N'_4110')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (79, N'Strasbourg', N'_67000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (80, N'Stuttgart', N'_70563')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (81, N'Torino', N'_10100')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (82, N'Toulouse', N'_31000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (83, N'Tsawassen', N'BC_T2F 8M4')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (84, N'Vancouver', N'BC_V3F 2K1')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (85, N'Versailles', N'_78000')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (86, N'Walla Walla', N'WA_99362')
GO
INSERT [dwh1].[Kunden] ([Kunde], [WOhnOrtdesKunden], [LandkreisdesKunden]) VALUES (87, N'Warszawa', N'_01-012')
GO
SET IDENTITY_INSERT [dwh1].[Kunden] OFF
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960101', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960102', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960103', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960104', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960105', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960106', 1, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960107', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960108', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960109', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960110', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960111', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960112', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960113', 2, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960114', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960115', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960116', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960117', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960118', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960119', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960120', 3, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960121', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960122', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960123', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960124', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960125', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960126', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960127', 4, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960128', 5, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960129', 5, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960130', 5, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960131', 5, 1, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960201', 5, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960202', 5, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960203', 5, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960204', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960205', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960206', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960207', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960208', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960209', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960210', 6, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960211', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960212', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960213', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960214', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960215', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960216', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960217', 7, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960218', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960219', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960220', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960221', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960222', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960223', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960224', 8, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960225', 9, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960226', 9, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960227', 9, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960228', 9, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960229', 9, 2, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960301', 9, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960302', 9, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960303', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960304', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960305', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960306', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960307', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960308', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960309', 10, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960310', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960311', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960312', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960313', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960314', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960315', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960316', 11, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960317', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960318', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960319', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960320', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960321', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960322', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960323', 12, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960324', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960325', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960326', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960327', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960328', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960329', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960330', 13, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960331', 14, 3, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960401', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960402', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960403', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960404', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960405', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960406', 14, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960407', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960408', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960409', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960410', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960411', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960412', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960413', 15, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960414', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960415', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960416', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960417', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960418', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960419', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960420', 16, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960421', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960422', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960423', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960424', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960425', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960426', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960427', 17, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960428', 18, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960429', 18, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960430', 18, 4, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960501', 18, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960502', 18, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960503', 18, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960504', 18, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960505', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960506', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960507', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960508', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960509', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960510', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960511', 19, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960512', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960513', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960514', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960515', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960516', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960517', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960518', 20, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960519', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960520', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960521', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960522', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960523', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960524', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960525', 21, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960526', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960527', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960528', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960529', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960530', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960531', 22, 5, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960601', 22, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960602', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960603', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960604', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960605', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960606', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960607', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960608', 23, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960609', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960610', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960611', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960612', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960613', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960614', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960615', 24, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960616', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960617', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960618', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960619', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960620', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960621', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960622', 25, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960623', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960624', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960625', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960626', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960627', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960628', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960629', 26, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960630', 27, 6, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960701', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960702', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960703', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960704', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960705', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960706', 27, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960707', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960708', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960709', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960710', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960711', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960712', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960713', 28, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960714', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960715', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960716', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960717', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960718', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960719', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960720', 29, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960721', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960722', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960723', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960724', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960725', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960726', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960727', 30, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960728', 31, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960729', 31, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960730', 31, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960731', 31, 7, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960801', 31, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960802', 31, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960803', 31, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960804', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960805', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960806', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960807', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960808', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960809', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960810', 32, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960811', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960812', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960813', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960814', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960815', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960816', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960817', 33, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960818', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960819', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960820', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960821', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960822', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960823', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960824', 34, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960825', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960826', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960827', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960828', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960829', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960830', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960831', 35, 8, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960901', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960902', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960903', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960904', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960905', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960906', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960907', 36, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960908', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960909', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960910', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960911', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960912', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960913', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960914', 37, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960915', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960916', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960917', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960918', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960919', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960920', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960921', 38, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960922', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960923', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960924', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960925', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960926', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960927', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960928', 39, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960929', 40, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19960930', 40, 9, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961001', 40, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961002', 40, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961003', 40, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961004', 40, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961005', 40, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961006', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961007', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961008', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961009', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961010', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961011', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961012', 41, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961013', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961014', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961015', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961016', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961017', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961018', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961019', 42, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961020', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961021', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961022', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961023', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961024', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961025', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961026', 43, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961027', 44, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961028', 44, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961029', 44, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961030', 44, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961031', 44, 10, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961101', 44, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961102', 44, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961103', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961104', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961105', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961106', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961107', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961108', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961109', 45, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961110', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961111', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961112', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961113', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961114', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961115', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961116', 46, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961117', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961118', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961119', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961120', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961121', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961122', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961123', 47, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961124', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961125', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961126', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961127', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961128', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961129', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961130', 48, 11, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961201', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961202', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961203', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961204', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961205', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961206', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961207', 49, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961208', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961209', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961210', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961211', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961212', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961213', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961214', 50, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961215', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961216', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961217', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961218', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961219', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961220', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961221', 51, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961222', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961223', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961224', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961225', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961226', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961227', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961228', 52, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961229', 53, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961230', 53, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19961231', 53, 12, 1996)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970101', 1, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970102', 1, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970103', 1, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970104', 1, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970105', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970106', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970107', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970108', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970109', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970110', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970111', 2, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970112', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970113', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970114', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970115', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970116', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970117', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970118', 3, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970119', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970120', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970121', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970122', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970123', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970124', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970125', 4, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970126', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970127', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970128', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970129', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970130', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970131', 5, 1, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970201', 5, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970202', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970203', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970204', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970205', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970206', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970207', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970208', 6, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970209', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970210', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970211', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970212', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970213', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970214', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970215', 7, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970216', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970217', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970218', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970219', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970220', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970221', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970222', 8, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970223', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970224', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970225', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970226', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970227', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970228', 9, 2, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970301', 9, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970302', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970303', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970304', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970305', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970306', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970307', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970308', 10, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970309', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970310', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970311', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970312', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970313', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970314', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970315', 11, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970316', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970317', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970318', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970319', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970320', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970321', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970322', 12, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970323', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970324', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970325', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970326', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970327', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970328', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970329', 13, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970330', 14, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970331', 14, 3, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970401', 14, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970402', 14, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970403', 14, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970404', 14, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970405', 14, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970406', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970407', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970408', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970409', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970410', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970411', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970412', 15, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970413', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970414', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970415', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970416', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970417', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970418', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970419', 16, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970420', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970421', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970422', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970423', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970424', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970425', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970426', 17, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970427', 18, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970428', 18, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970429', 18, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970430', 18, 4, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970501', 18, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970502', 18, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970503', 18, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970504', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970505', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970506', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970507', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970508', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970509', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970510', 19, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970511', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970512', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970513', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970514', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970515', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970516', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970517', 20, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970518', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970519', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970520', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970521', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970522', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970523', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970524', 21, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970525', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970526', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970527', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970528', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970529', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970530', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970531', 22, 5, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970601', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970602', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970603', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970604', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970605', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970606', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970607', 23, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970608', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970609', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970610', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970611', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970612', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970613', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970614', 24, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970615', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970616', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970617', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970618', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970619', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970620', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970621', 25, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970622', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970623', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970624', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970625', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970626', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970627', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970628', 26, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970629', 27, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970630', 27, 6, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970701', 27, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970702', 27, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970703', 27, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970704', 27, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970705', 27, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970706', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970707', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970708', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970709', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970710', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970711', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970712', 28, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970713', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970714', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970715', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970716', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970717', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970718', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970719', 29, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970720', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970721', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970722', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970723', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970724', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970725', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970726', 30, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970727', 31, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970728', 31, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970729', 31, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970730', 31, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970731', 31, 7, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970801', 31, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970802', 31, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970803', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970804', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970805', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970806', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970807', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970808', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970809', 32, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970810', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970811', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970812', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970813', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970814', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970815', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970816', 33, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970817', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970818', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970819', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970820', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970821', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970822', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970823', 34, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970824', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970825', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970826', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970827', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970828', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970829', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970830', 35, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970831', 36, 8, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970901', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970902', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970903', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970904', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970905', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970906', 36, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970907', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970908', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970909', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970910', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970911', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970912', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970913', 37, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970914', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970915', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970916', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970917', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970918', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970919', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970920', 38, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970921', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970922', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970923', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970924', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970925', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970926', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970927', 39, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970928', 40, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970929', 40, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19970930', 40, 9, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971001', 40, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971002', 40, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971003', 40, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971004', 40, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971005', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971006', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971007', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971008', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971009', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971010', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971011', 41, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971012', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971013', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971014', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971015', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971016', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971017', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971018', 42, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971019', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971020', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971021', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971022', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971023', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971024', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971025', 43, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971026', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971027', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971028', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971029', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971030', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971031', 44, 10, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971101', 44, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971102', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971103', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971104', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971105', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971106', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971107', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971108', 45, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971109', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971110', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971111', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971112', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971113', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971114', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971115', 46, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971116', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971117', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971118', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971119', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971120', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971121', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971122', 47, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971123', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971124', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971125', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971126', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971127', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971128', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971129', 48, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971130', 49, 11, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971201', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971202', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971203', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971204', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971205', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971206', 49, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971207', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971208', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971209', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971210', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971211', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971212', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971213', 50, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971214', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971215', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971216', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971217', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971218', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971219', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971220', 51, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971221', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971222', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971223', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971224', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971225', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971226', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971227', 52, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971228', 53, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971229', 53, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971230', 53, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19971231', 53, 12, 1997)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980101', 1, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980102', 1, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980103', 1, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980104', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980105', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980106', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980107', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980108', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980109', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980110', 2, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980111', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980112', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980113', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980114', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980115', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980116', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980117', 3, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980118', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980119', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980120', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980121', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980122', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980123', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980124', 4, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980125', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980126', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980127', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980128', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980129', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980130', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980131', 5, 1, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980201', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980202', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980203', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980204', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980205', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980206', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980207', 6, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980208', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980209', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980210', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980211', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980212', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980213', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980214', 7, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980215', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980216', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980217', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980218', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980219', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980220', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980221', 8, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980222', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980223', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980224', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980225', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980226', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980227', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980228', 9, 2, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980301', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980302', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980303', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980304', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980305', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980306', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980307', 10, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980308', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980309', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980310', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980311', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980312', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980313', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980314', 11, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980315', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980316', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980317', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980318', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980319', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980320', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980321', 12, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980322', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980323', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980324', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980325', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980326', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980327', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980328', 13, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980329', 14, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980330', 14, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980331', 14, 3, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980401', 14, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980402', 14, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980403', 14, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980404', 14, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980405', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980406', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980407', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980408', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980409', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980410', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980411', 15, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980412', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980413', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980414', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980415', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980416', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980417', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980418', 16, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980419', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980420', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980421', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980422', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980423', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980424', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980425', 17, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980426', 18, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980427', 18, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980428', 18, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980429', 18, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980430', 18, 4, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980501', 18, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980502', 18, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980503', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980504', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980505', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980506', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980507', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980508', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980509', 19, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980510', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980511', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980512', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980513', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980514', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980515', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980516', 20, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980517', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980518', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980519', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980520', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980521', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980522', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980523', 21, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980524', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980525', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980526', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980527', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980528', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980529', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980530', 22, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980531', 23, 5, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980601', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980602', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980603', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980604', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980605', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980606', 23, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980607', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980608', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980609', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980610', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980611', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980612', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980613', 24, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980614', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980615', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980616', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980617', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980618', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980619', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980620', 25, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980621', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980622', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980623', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980624', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980625', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980626', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980627', 26, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980628', 27, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980629', 27, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980630', 27, 6, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980701', 27, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980702', 27, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980703', 27, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980704', 27, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980705', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980706', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980707', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980708', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980709', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980710', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980711', 28, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980712', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980713', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980714', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980715', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980716', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980717', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980718', 29, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980719', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980720', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980721', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980722', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980723', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980724', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980725', 30, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980726', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980727', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980728', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980729', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980730', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980731', 31, 7, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980801', 31, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980802', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980803', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980804', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980805', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980806', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980807', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980808', 32, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980809', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980810', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980811', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980812', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980813', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980814', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980815', 33, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980816', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980817', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980818', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980819', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980820', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980821', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980822', 34, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980823', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980824', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980825', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980826', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980827', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980828', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980829', 35, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980830', 36, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980831', 36, 8, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980901', 36, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980902', 36, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980903', 36, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980904', 36, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980905', 36, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980906', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980907', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980908', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980909', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980910', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980911', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980912', 37, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980913', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980914', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980915', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980916', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980917', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980918', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980919', 38, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980920', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980921', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980922', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980923', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980924', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980925', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980926', 39, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980927', 40, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980928', 40, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980929', 40, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19980930', 40, 9, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981001', 40, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981002', 40, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981003', 40, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981004', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981005', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981006', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981007', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981008', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981009', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981010', 41, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981011', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981012', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981013', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981014', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981015', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981016', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981017', 42, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981018', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981019', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981020', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981021', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981022', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981023', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981024', 43, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981025', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981026', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981027', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981028', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981029', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981030', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981031', 44, 10, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981101', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981102', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981103', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981104', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981105', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981106', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981107', 45, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981108', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981109', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981110', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981111', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981112', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981113', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981114', 46, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981115', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981116', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981117', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981118', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981119', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981120', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981121', 47, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981122', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981123', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981124', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981125', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981126', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981127', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981128', 48, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981129', 49, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981130', 49, 11, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981201', 49, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981202', 49, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981203', 49, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981204', 49, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981205', 49, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981206', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981207', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981208', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981209', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981210', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981211', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981212', 50, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981213', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981214', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981215', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981216', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981217', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981218', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981219', 51, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981220', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981221', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981222', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981223', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981224', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981225', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981226', 52, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981227', 53, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981228', 53, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981229', 53, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981230', 53, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'19981231', 53, 12, 1998)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150101', 1, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150102', 1, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150103', 1, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150104', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150105', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150106', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150107', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150108', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150109', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150110', 2, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150111', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150112', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150113', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150114', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150115', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150116', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150117', 3, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150118', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150119', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150120', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150121', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150122', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150123', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150124', 4, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150125', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150126', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150127', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150128', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150129', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150130', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150131', 5, 1, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150201', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150202', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150203', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150204', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150205', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150206', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150207', 6, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150208', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150209', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150210', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150211', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150212', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150213', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150214', 7, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150215', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150216', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150217', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150218', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150219', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150220', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150221', 8, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150222', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150223', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150224', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150225', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150226', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150227', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150228', 9, 2, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150301', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150302', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150303', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150304', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150305', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150306', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150307', 10, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150308', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150309', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150310', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150311', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150312', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150313', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150314', 11, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150315', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150316', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150317', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150318', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150319', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150320', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150321', 12, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150322', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150323', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150324', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150325', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150326', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150327', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150328', 13, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150329', 14, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150330', 14, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150331', 14, 3, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150401', 14, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150402', 14, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150403', 14, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150404', 14, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150405', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150406', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150407', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150408', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150409', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150410', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150411', 15, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150412', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150413', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150414', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150415', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150416', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150417', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150418', 16, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150419', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150420', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150421', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150422', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150423', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150424', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150425', 17, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150426', 18, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150427', 18, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150428', 18, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150429', 18, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150430', 18, 4, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150501', 18, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150502', 18, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150503', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150504', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150505', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150506', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150507', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150508', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150509', 19, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150510', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150511', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150512', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150513', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150514', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150515', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150516', 20, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150517', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150518', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150519', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150520', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150521', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150522', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150523', 21, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150524', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150525', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150526', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150527', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150528', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150529', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150530', 22, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150531', 23, 5, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150601', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150602', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150603', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150604', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150605', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150606', 23, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150607', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150608', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150609', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150610', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150611', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150612', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150613', 24, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150614', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150615', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150616', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150617', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150618', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150619', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150620', 25, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150621', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150622', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150623', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150624', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150625', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150626', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150627', 26, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150628', 27, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150629', 27, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150630', 27, 6, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150701', 27, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150702', 27, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150703', 27, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150704', 27, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150705', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150706', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150707', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150708', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150709', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150710', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150711', 28, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150712', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150713', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150714', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150715', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150716', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150717', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150718', 29, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150719', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150720', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150721', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150722', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150723', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150724', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150725', 30, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150726', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150727', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150728', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150729', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150730', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150731', 31, 7, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150801', 31, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150802', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150803', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150804', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150805', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150806', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150807', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150808', 32, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150809', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150810', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150811', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150812', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150813', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150814', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150815', 33, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150816', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150817', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150818', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150819', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150820', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150821', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150822', 34, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150823', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150824', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150825', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150826', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150827', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150828', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150829', 35, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150830', 36, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150831', 36, 8, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150901', 36, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150902', 36, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150903', 36, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150904', 36, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150905', 36, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150906', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150907', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150908', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150909', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150910', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150911', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150912', 37, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150913', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150914', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150915', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150916', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150917', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150918', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150919', 38, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150920', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150921', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150922', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150923', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150924', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150925', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150926', 39, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150927', 40, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150928', 40, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150929', 40, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20150930', 40, 9, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151001', 40, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151002', 40, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151003', 40, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151004', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151005', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151006', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151007', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151008', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151009', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151010', 41, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151011', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151012', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151013', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151014', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151015', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151016', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151017', 42, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151018', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151019', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151020', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151021', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151022', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151023', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151024', 43, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151025', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151026', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151027', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151028', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151029', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151030', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151031', 44, 10, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151101', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151102', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151103', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151104', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151105', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151106', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151107', 45, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151108', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151109', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151110', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151111', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151112', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151113', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151114', 46, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151115', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151116', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151117', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151118', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151119', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151120', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151121', 47, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151122', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151123', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151124', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151125', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151126', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151127', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151128', 48, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151129', 49, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151130', 49, 11, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151201', 49, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151202', 49, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151203', 49, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151204', 49, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151205', 49, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151206', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151207', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151208', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151209', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151210', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151211', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151212', 50, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151213', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151214', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151215', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151216', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151217', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151218', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151219', 51, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151220', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151221', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151222', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151223', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151224', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151225', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151226', 52, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151227', 53, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151228', 53, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151229', 53, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151230', 53, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20151231', 53, 12, 2015)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160101', 1, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160102', 1, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160103', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160104', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160105', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160106', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160107', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160108', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160109', 2, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160110', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160111', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160112', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160113', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160114', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160115', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160116', 3, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160117', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160118', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160119', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160120', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160121', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160122', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160123', 4, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160124', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160125', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160126', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160127', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160128', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160129', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160130', 5, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160131', 6, 1, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160201', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160202', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160203', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160204', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160205', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160206', 6, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160207', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160208', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160209', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160210', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160211', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160212', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160213', 7, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160214', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160215', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160216', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160217', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160218', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160219', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160220', 8, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160221', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160222', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160223', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160224', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160225', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160226', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160227', 9, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160228', 10, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160229', 10, 2, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160301', 10, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160302', 10, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160303', 10, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160304', 10, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160305', 10, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160306', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160307', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160308', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160309', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160310', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160311', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160312', 11, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160313', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160314', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160315', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160316', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160317', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160318', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160319', 12, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160320', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160321', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160322', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160323', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160324', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160325', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160326', 13, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160327', 14, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160328', 14, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160329', 14, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160330', 14, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160331', 14, 3, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160401', 14, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160402', 14, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160403', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160404', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160405', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160406', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160407', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160408', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160409', 15, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160410', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160411', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160412', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160413', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160414', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160415', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160416', 16, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160417', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160418', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160419', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160420', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160421', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160422', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160423', 17, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160424', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160425', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160426', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160427', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160428', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160429', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160430', 18, 4, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160501', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160502', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160503', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160504', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160505', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160506', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160507', 19, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160508', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160509', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160510', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160511', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160512', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160513', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160514', 20, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160515', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160516', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160517', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160518', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160519', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160520', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160521', 21, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160522', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160523', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160524', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160525', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160526', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160527', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160528', 22, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160529', 23, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160530', 23, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160531', 23, 5, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160601', 23, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160602', 23, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160603', 23, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160604', 23, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160605', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160606', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160607', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160608', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160609', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160610', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160611', 24, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160612', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160613', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160614', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160615', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160616', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160617', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160618', 25, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160619', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160620', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160621', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160622', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160623', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160624', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160625', 26, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160626', 27, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160627', 27, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160628', 27, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160629', 27, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160630', 27, 6, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160701', 27, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160702', 27, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160703', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160704', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160705', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160706', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160707', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160708', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160709', 28, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160710', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160711', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160712', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160713', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160714', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160715', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160716', 29, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160717', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160718', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160719', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160720', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160721', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160722', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160723', 30, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160724', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160725', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160726', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160727', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160728', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160729', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160730', 31, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160731', 32, 7, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160801', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160802', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160803', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160804', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160805', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160806', 32, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160807', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160808', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160809', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160810', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160811', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160812', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160813', 33, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160814', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160815', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160816', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160817', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160818', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160819', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160820', 34, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160821', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160822', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160823', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160824', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160825', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160826', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160827', 35, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160828', 36, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160829', 36, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160830', 36, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160831', 36, 8, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160901', 36, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160902', 36, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160903', 36, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160904', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160905', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160906', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160907', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160908', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160909', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160910', 37, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160911', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160912', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160913', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160914', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160915', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160916', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160917', 38, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160918', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160919', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160920', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160921', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160922', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160923', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160924', 39, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160925', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160926', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160927', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160928', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160929', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20160930', 40, 9, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161001', 40, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161002', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161003', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161004', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161005', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161006', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161007', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161008', 41, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161009', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161010', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161011', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161012', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161013', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161014', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161015', 42, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161016', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161017', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161018', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161019', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161020', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161021', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161022', 43, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161023', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161024', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161025', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161026', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161027', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161028', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161029', 44, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161030', 45, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161031', 45, 10, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161101', 45, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161102', 45, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161103', 45, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161104', 45, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161105', 45, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161106', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161107', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161108', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161109', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161110', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161111', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161112', 46, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161113', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161114', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161115', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161116', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161117', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161118', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161119', 47, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161120', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161121', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161122', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161123', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161124', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161125', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161126', 48, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161127', 49, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161128', 49, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161129', 49, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161130', 49, 11, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161201', 49, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161202', 49, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161203', 49, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161204', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161205', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161206', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161207', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161208', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161209', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161210', 50, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161211', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161212', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161213', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161214', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161215', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161216', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161217', 51, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161218', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161219', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161220', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161221', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161222', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161223', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161224', 52, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161225', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161226', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161227', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161228', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161229', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161230', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20161231', 53, 12, 2016)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270101', 1, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270102', 1, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270103', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270104', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270105', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270106', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270107', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270108', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270109', 2, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270110', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270111', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270112', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270113', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270114', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270115', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270116', 3, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270117', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270118', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270119', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270120', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270121', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270122', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270123', 4, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270124', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270125', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270126', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270127', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270128', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270129', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270130', 5, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270131', 6, 1, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270201', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270202', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270203', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270204', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270205', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270206', 6, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270207', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270208', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270209', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270210', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270211', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270212', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270213', 7, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270214', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270215', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270216', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270217', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270218', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270219', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270220', 8, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270221', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270222', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270223', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270224', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270225', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270226', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270227', 9, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270228', 10, 2, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270301', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270302', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270303', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270304', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270305', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270306', 10, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270307', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270308', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270309', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270310', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270311', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270312', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270313', 11, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270314', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270315', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270316', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270317', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270318', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270319', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270320', 12, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270321', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270322', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270323', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270324', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270325', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270326', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270327', 13, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270328', 14, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270329', 14, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270330', 14, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270331', 14, 3, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270401', 14, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270402', 14, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270403', 14, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270404', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270405', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270406', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270407', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270408', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270409', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270410', 15, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270411', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270412', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270413', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270414', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270415', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270416', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270417', 16, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270418', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270419', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270420', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270421', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270422', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270423', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270424', 17, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270425', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270426', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270427', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270428', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270429', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270430', 18, 4, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270501', 18, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270502', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270503', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270504', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270505', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270506', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270507', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270508', 19, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270509', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270510', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270511', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270512', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270513', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270514', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270515', 20, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270516', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270517', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270518', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270519', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270520', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270521', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270522', 21, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270523', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270524', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270525', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270526', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270527', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270528', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270529', 22, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270530', 23, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270531', 23, 5, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270601', 23, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270602', 23, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270603', 23, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270604', 23, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270605', 23, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270606', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270607', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270608', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270609', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270610', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270611', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270612', 24, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270613', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270614', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270615', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270616', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270617', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270618', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270619', 25, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270620', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270621', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270622', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270623', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270624', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270625', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270626', 26, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270627', 27, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270628', 27, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270629', 27, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270630', 27, 6, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270701', 27, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270702', 27, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270703', 27, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270704', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270705', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270706', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270707', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270708', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270709', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270710', 28, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270711', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270712', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270713', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270714', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270715', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270716', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270717', 29, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270718', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270719', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270720', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270721', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270722', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270723', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270724', 30, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270725', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270726', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270727', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270728', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270729', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270730', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270731', 31, 7, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270801', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270802', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270803', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270804', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270805', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270806', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270807', 32, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270808', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270809', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270810', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270811', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270812', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270813', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270814', 33, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270815', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270816', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270817', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270818', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270819', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270820', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270821', 34, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270822', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270823', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270824', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270825', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270826', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270827', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270828', 35, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270829', 36, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270830', 36, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270831', 36, 8, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270901', 36, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270902', 36, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270903', 36, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270904', 36, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270905', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270906', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270907', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270908', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270909', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270910', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270911', 37, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270912', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270913', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270914', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270915', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270916', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270917', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270918', 38, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270919', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270920', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270921', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270922', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270923', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270924', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270925', 39, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270926', 40, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270927', 40, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270928', 40, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270929', 40, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20270930', 40, 9, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271001', 40, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271002', 40, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271003', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271004', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271005', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271006', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271007', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271008', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271009', 41, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271010', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271011', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271012', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271013', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271014', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271015', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271016', 42, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271017', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271018', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271019', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271020', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271021', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271022', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271023', 43, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271024', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271025', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271026', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271027', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271028', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271029', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271030', 44, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271031', 45, 10, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271101', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271102', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271103', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271104', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271105', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271106', 45, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271107', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271108', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271109', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271110', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271111', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271112', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271113', 46, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271114', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271115', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271116', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271117', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271118', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271119', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271120', 47, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271121', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271122', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271123', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271124', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271125', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271126', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271127', 48, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271128', 49, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271129', 49, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271130', 49, 11, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271201', 49, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271202', 49, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271203', 49, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271204', 49, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271205', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271206', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271207', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271208', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271209', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271210', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271211', 50, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271212', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271213', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271214', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271215', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271216', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271217', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271218', 51, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271219', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271220', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271221', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271222', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271223', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271224', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271225', 52, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271226', 53, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271227', 53, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271228', 53, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271229', 53, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271230', 53, 12, 2027)
GO
INSERT [dwh1].[Zeit] ([Tag], [Woche], [Monat], [Year]) VALUES (N'20271231', 53, 12, 2027)
GO
ALTER TABLE [dwh1].[F_Einkaeufe] ADD  DEFAULT ((1)) FOR [Menge]
GO
ALTER TABLE [dwh1].[F_Einkaeufe] ADD  DEFAULT ((10)) FOR [Verkaufspreis]
GO
ALTER TABLE [dwh1].[F_Einkaeufe]  WITH CHECK ADD FOREIGN KEY([Artikel])
REFERENCES [dwh1].[Artikel] ([Artikel])
GO
ALTER TABLE [dwh1].[F_Einkaeufe]  WITH CHECK ADD FOREIGN KEY([Kassa])
REFERENCES [dwh1].[Kassa] ([Kassa])
GO
ALTER TABLE [dwh1].[F_Einkaeufe]  WITH CHECK ADD FOREIGN KEY([Kunde])
REFERENCES [dwh1].[Kunden] ([Kunde])
GO
ALTER TABLE [dwh1].[F_Einkaeufe]  WITH CHECK ADD FOREIGN KEY([Tag])
REFERENCES [dwh1].[Zeit] ([Tag])
GO
ALTER TABLE [dwh1].[F_Einkaeufe]  WITH CHECK ADD CHECK  (([Menge]>(0)))
GO
