
USE [RMS_APV]
GO
/****** Object:  Table [dbo].[location_part_demand_history]    Script Date: 07/06/2024 6:19:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location_part_demand_history](
	[part] [nvarchar](50) NOT NULL,
	[dh_qty] [float] NOT NULL,
	[shiptocust] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Part_Dimention]    Script Date: 07/06/2024 6:19:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Part_Dimention](
	[material] [nvarchar](50) NOT NULL,
	[material_desc] [nvarchar](1000) NULL,
	[mg3] [nvarchar](256) NULL,
	[pbg] [nvarchar](20) NULL,
	[cost] [decimal](18, 0) NULL,
	[gfcst] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Part_Dim_1] PRIMARY KEY CLUSTERED 
(
	[material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[location_part_demand_history] ([part], [dh_qty], [shiptocust]) VALUES (N'0010-4562', 10, N'PHLIPS0010')
GO
INSERT [dbo].[location_part_demand_history] ([part], [dh_qty], [shiptocust]) VALUES (N'0010-4562', 20, N'HP0125')
GO
INSERT [dbo].[location_part_demand_history] ([part], [dh_qty], [shiptocust]) VALUES (N'0010-4662', 50, N'PHLIPS0020')
GO
INSERT [dbo].[location_part_demand_history] ([part], [dh_qty], [shiptocust]) VALUES (N'0010-4662', 60, N'HP0325')
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0010-4562', N'sddsf', N'14', NULL, CAST(6 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0020-4563', N'sddsf', N'15', NULL, CAST(7 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0030-4564', N'sddsf', N'16', NULL, CAST(8 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0040-4565', N'sddsf', N'17', NULL, CAST(9 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0050-4566', N'sddsf', N'18', NULL, CAST(10 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0060-4567', N'sddsf', N'19', NULL, CAST(11 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0070-4568', N'sddsf', N'20', NULL, CAST(12 AS Decimal(18, 0)), CAST(10 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0080-4569', N'sddsf', N'21', NULL, CAST(13 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0090-4570', N'sddsf', N'22', NULL, CAST(14 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0100-4571', N'sddsf', N'23', NULL, CAST(15 AS Decimal(18, 0)), CAST(13 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0110-4572', N'sddsf', N'24', NULL, CAST(16 AS Decimal(18, 0)), CAST(14 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0120-4573', N'sddsf', N'25', NULL, CAST(17 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0130-4574', N'sddsf', N'26', NULL, CAST(18 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0140-4575', N'sddsf', N'27', NULL, CAST(19 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0150-4576', N'sddsf', N'28', NULL, CAST(20 AS Decimal(18, 0)), CAST(18 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0160-4577', N'sddsf', N'29', NULL, CAST(21 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0170-4578', N'sddsf', N'30', NULL, CAST(22 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0180-4579', N'sddsf', N'31', NULL, CAST(23 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0190-4580', N'sddsf', N'32', NULL, CAST(24 AS Decimal(18, 0)), CAST(22 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0200-4581', N'sddsf', N'33', NULL, CAST(25 AS Decimal(18, 0)), CAST(23 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0210-4582', N'sddsf', N'34', NULL, CAST(26 AS Decimal(18, 0)), CAST(24 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0220-4583', N'sddsf', N'35', NULL, CAST(27 AS Decimal(18, 0)), CAST(25 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0230-4584', N'sddsf', N'36', NULL, CAST(28 AS Decimal(18, 0)), CAST(26 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0240-4585', N'sddsf', N'37', NULL, CAST(29 AS Decimal(18, 0)), CAST(27 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0250-4586', N'sddsf', N'38', NULL, CAST(30 AS Decimal(18, 0)), CAST(28 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0260-4587', N'sddsf', N'39', NULL, CAST(31 AS Decimal(18, 0)), CAST(29 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0270-4588', N'sddsf', N'40', NULL, CAST(32 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0280-4589', N'sddsf', N'41', NULL, CAST(33 AS Decimal(18, 0)), CAST(31 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0290-4590', N'sddsf', N'42', NULL, CAST(34 AS Decimal(18, 0)), CAST(32 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0300-4591', N'sddsf', N'43', NULL, CAST(35 AS Decimal(18, 0)), CAST(33 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0310-4592', N'sddsf', N'44', NULL, CAST(36 AS Decimal(18, 0)), CAST(34 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0320-4593', N'sddsf', N'45', NULL, CAST(37 AS Decimal(18, 0)), CAST(35 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0330-4594', N'sddsf', N'46', NULL, CAST(38 AS Decimal(18, 0)), CAST(36 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0340-4595', N'sddsf', N'47', NULL, CAST(39 AS Decimal(18, 0)), CAST(37 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0350-4596', N'sddsf', N'48', NULL, CAST(40 AS Decimal(18, 0)), CAST(38 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0360-4597', N'sddsf', N'49', NULL, CAST(41 AS Decimal(18, 0)), CAST(39 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0370-4598', N'sddsf', N'50', NULL, CAST(42 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0380-4599', N'sddsf', N'51', NULL, CAST(43 AS Decimal(18, 0)), CAST(41 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0390-4600', N'sddsf', N'52', NULL, CAST(44 AS Decimal(18, 0)), CAST(42 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0400-4601', N'sddsf', N'53', NULL, CAST(45 AS Decimal(18, 0)), CAST(43 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0410-4602', N'sddsf', N'54', NULL, CAST(46 AS Decimal(18, 0)), CAST(44 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0420-4603', N'sddsf', N'55', NULL, CAST(47 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0430-4604', N'sddsf', N'56', NULL, CAST(48 AS Decimal(18, 0)), CAST(46 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0440-4605', N'sddsf', N'57', NULL, CAST(49 AS Decimal(18, 0)), CAST(47 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0450-4606', N'sddsf', N'58', NULL, CAST(50 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0460-4607', N'sddsf', N'59', NULL, CAST(51 AS Decimal(18, 0)), CAST(49 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0470-4608', N'sddsf', N'60', NULL, CAST(52 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0480-4609', N'sddsf', N'61', NULL, CAST(53 AS Decimal(18, 0)), CAST(51 AS Decimal(18, 0)))
GO
INSERT [dbo].[Part_Dimention] ([material], [material_desc], [mg3], [pbg], [cost], [gfcst]) VALUES (N'0490-4610', N'sddsf', N'62', NULL, CAST(54 AS Decimal(18, 0)), CAST(52 AS Decimal(18, 0)))
GO
USE [master]
GO
ALTER DATABASE [RMS_APV] SET  READ_WRITE 
GO
