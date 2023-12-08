
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Recipes__USER_ID__4E88ABD4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recipes]'))
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [FK__Recipes__USER_ID__4E88ABD4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Ingredien__RECIP__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ingredients]'))
ALTER TABLE [dbo].[Ingredients] DROP CONSTRAINT [FK__Ingredien__RECIP__5AEE82B9]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/5/2023 11:22:35 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 12/5/2023 11:22:35 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes]') AND type in (N'U'))
DROP TABLE [dbo].[Recipes]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 12/5/2023 11:22:35 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ingredients]') AND type in (N'U'))
DROP TABLE [dbo].[Ingredients]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 12/5/2023 11:22:35 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
DROP TABLE [dbo].[Images]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 12/5/2023 11:22:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[CREATED_DATE] [date] NULL,
	[CREATED_TIME] [time](7) NULL,
	[CREATED_USER] [varchar](100) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_TIME] [time](7) NULL,
	[UPDATED_USER] [varchar](100) NULL,
	[ID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[IMAGE_NAME] [varchar](100) NULL,
	[IMAGE_DATA] [varbinary](max) NULL,
	[IMAGE_TYPE] [varchar](10) NULL,
	[MODULE_TYPE] [varchar](100) NULL,
	[MODULE_ID] [decimal](18, 0) NULL,
	[ACTIVE] [char](1) NULL,
	[DELETE_FLAG] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 12/5/2023 11:22:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[CREATED_DATE] [date] NULL,
	[CREATED_TIME] [time](7) NULL,
	[CREATED_USER] [varchar](100) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_TIME] [time](7) NULL,
	[UPDATED_USER] [varchar](100) NULL,
	[ID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[INGREDIENT_NAME] [varchar](1000) NULL,
	[QUANTITY] [varchar](100) NULL,
	[ACTIVE] [char](1) NULL,
	[DELETE_FLAG] [char](1) NULL,
	[RECIPE_ID] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 12/5/2023 11:22:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[CREATED_DATE] [date] NULL,
	[CREATED_TIME] [time](7) NULL,
	[CREATED_USER] [varchar](100) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_TIME] [time](7) NULL,
	[UPDATED_USER] [varchar](100) NULL,
	[ID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[ACTIVE] [char](1) NULL,
	[DELETE_FLAG] [char](1) NULL,
	[USER_ID] [decimal](18, 0) NULL,
	[RECIPE_NAME] [varchar](100) NULL,
	[FAVOURITES] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/5/2023 11:22:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[CREATED_DATE] [date] NULL,
	[CREATED_TIME] [time](7) NULL,
	[CREATED_USER] [varchar](100) NULL,
	[UPDATED_DATE] [date] NULL,
	[UPDATED_TIME] [time](7) NULL,
	[UPDATED_USER] [varchar](100) NULL,
	[ID] [decimal](18, 0) IDENTITY(1,1) NOT NULL,
	[FIRSTNAME] [varchar](100) NULL,
	[LASTNAME] [varchar](100) NULL,
	[EMAIL] [varchar](100) NULL,
	[PASSWORD] [varchar](max) NULL,
	[LAST_PASSWORD] [varchar](max) NULL,
	[OTP] [int] NULL,
	[OTP_DATE] [date] NULL,
	[OTP_TIME] [time](7) NULL,
	[INGREDIENT_ID] [decimal](18, 0) NULL,
	[ACTIVE] [char](1) NULL,
	[DELETE_FLAG] [char](1) NULL,
	[USERNAME] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, NULL, CAST(N'2023-12-04' AS Date), CAST(N'14:05:25' AS Time), NULL, CAST(1 AS Decimal(18, 0)), N'r1', N'1cup', N'Y', N'Y', CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, CAST(2 AS Decimal(18, 0)), N'r2', N'1cup', N'Y', NULL, CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, CAST(3 AS Decimal(18, 0)), N'r3', N'1cup', N'Y', NULL, CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:17:45' AS Time), N'', NULL, NULL, N'', CAST(4 AS Decimal(18, 0)), N'ing1', N'20cup', N'Y', N'N', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:20:18' AS Time), N'', NULL, NULL, N'', CAST(5 AS Decimal(18, 0)), N'fd', N'fd', N'Y', N'N', CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:20:18' AS Time), N'', NULL, NULL, N'', CAST(6 AS Decimal(18, 0)), N'fdsfd', N'fdsfd', N'Y', N'N', CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:20:18' AS Time), N'', NULL, NULL, N'', CAST(7 AS Decimal(18, 0)), N'ghfh', N'fdd', N'Y', N'N', CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:21:14' AS Time), N'', NULL, NULL, N'', CAST(8 AS Decimal(18, 0)), N'sadfdsa', N'fhtugv', N'Y', N'N', CAST(2 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(9 AS Decimal(18, 0)), N'ing1', N'20cup', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:28:41' AS Time), N'', NULL, NULL, N'', CAST(10 AS Decimal(18, 0)), N'fgdgdsg', N'fgdgdsg', N'Y', N'N', CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:28:41' AS Time), N'', NULL, NULL, N'', CAST(11 AS Decimal(18, 0)), N'dgfds', N'gfdsgd', N'Y', N'N', CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(12 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(13 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(14 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(15 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(16 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(17 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(18 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(19 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(20 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(21 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(22 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(23 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(24 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(25 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(26 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(27 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(28 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(29 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(30 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', NULL, NULL, N'', CAST(31 AS Decimal(18, 0)), NULL, NULL, N'Y', N'N', CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(32 AS Decimal(18, 0)), N'fafd', N'fafd', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(33 AS Decimal(18, 0)), N'fadf', N'fdsafd', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(34 AS Decimal(18, 0)), N'fafd', N'fafd', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(35 AS Decimal(18, 0)), N'fadf', N'fadf', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(36 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(37 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(38 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(39 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(40 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(41 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(42 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(43 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(44 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Ingredients] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [INGREDIENT_NAME], [QUANTITY], [ACTIVE], [DELETE_FLAG], [RECIPE_ID]) VALUES (NULL, NULL, N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:43' AS Time), N'', CAST(45 AS Decimal(18, 0)), N'1', N'1', N'Y', NULL, CAST(5 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (NULL, NULL, NULL, CAST(N'2023-12-04' AS Date), CAST(N'14:22:08' AS Time), NULL, CAST(1 AS Decimal(18, 0)), N'fajfdjal', N'Y', N'N', NULL, N'abc', N'Y')
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:13:55' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'14:22:12' AS Time), N'', CAST(2 AS Decimal(18, 0)), N'kfdkl', N'Y', N'N', NULL, N'recipetest', NULL)
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:17:19' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'14:22:16' AS Time), N'', CAST(3 AS Decimal(18, 0)), N'kfdkl', N'Y', N'N', NULL, N'recipetest1', N'N')
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:20:18' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'14:22:21' AS Time), N'', CAST(4 AS Decimal(18, 0)), N'dfdfadf', N'Y', N'N', NULL, N'newtest', N'N')
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:27:52' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'20:57:42' AS Time), N'', CAST(5 AS Decimal(18, 0)), N'Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.
Test description to check the view functionality.111', N'Y', N'N', NULL, N'Coffee', N'Y')
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'22:28:41' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'22:40:26' AS Time), N'', CAST(6 AS Decimal(18, 0)), N'1', N'Y', N'N', NULL, N'fadfjhhdfghhdfgjhj', N'Y')
GO
INSERT [dbo].[Recipes] ([CREATED_DATE], [CREATED_TIME], [CREATED_USER], [UPDATED_DATE], [UPDATED_TIME], [UPDATED_USER], [ID], [DESCRIPTION], [ACTIVE], [DELETE_FLAG], [USER_ID], [RECIPE_NAME], [FAVOURITES]) VALUES (CAST(N'2023-12-03' AS Date), CAST(N'23:31:49' AS Time), N'', CAST(N'2023-12-04' AS Date), CAST(N'14:21:04' AS Time), N'', CAST(7 AS Decimal(18, 0)), N'fdsafds', N'Y', N'N', NULL, N'fafdafd', NULL)
GO
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD FOREIGN KEY([RECIPE_ID])
REFERENCES [dbo].[Recipes] ([ID])
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[Users] ([ID])
GO

alter table recipes add RECIPE_TYPE_ID decimal

create table RecipeType (CREATION_DATE date,CREATION_TIME time,CREATION_USER varchar(100), UPDATE_DATE date, UPDATE_TIME time,UPDATE_USER varchar(100),ID decimal primary key identity(1,1), RECIPETYPE_NAME varchar(100),DELETE_FLAG char,ACTIVE char) insert into RecipeType (CREATION_DATE ,CREATION_TIME ,CREATION_USER, UPDATE_DATE , UPDATE_TIME ,UPDATE_USER, RECIPETYPE_NAME ,DELETE_FLAG ,ACTIVE ) values

((select convert(varchar,getdate(),23)),(select convert(varchar,getdate(),108)),'', (select convert(varchar,getdate(),23)),(select convert(varchar,getdate(),108)),'', 'Veg','N','Y' ), ((select convert(varchar,getdate(),23)),(select convert(varchar,getdate(),108)),'', (select convert(varchar,getdate(),23)),(select convert(varchar,getdate(),108)),'', 'Non-Veg','N','Y' )