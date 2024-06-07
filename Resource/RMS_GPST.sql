USE [RMS_GPST]
GO
/****** Object:  Table [dbo].[factgpstrprdprts]    Script Date: 07/06/2024 6:21:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factgpstrprdprts](
	[part_request_id] [int] IDENTITY(1,1) NOT NULL,
	[project_type] [nvarchar](100) NULL,
	[project_sub_type] [nvarchar](100) NULL,
	[grfo_comment_actions_summary] [nvarchar](1000) NULL,
	[project_requestor] [nvarchar](200) NULL,
	[base_part_number] [nvarchar](50) NULL,
	[part_description] [nvarchar](200) NULL,
	[solution_part_number] [nvarchar](50) NULL,
	[bu_name] [nvarchar](50) NULL,
	[customer_code] [nvarchar](100) NULL,
	[region_code] [nvarchar](50) NULL,
	[engineer_comments_notes] [nvarchar](1000) NULL,
	[process_step] [nvarchar](200) NULL,
	[engineering_owner] [nvarchar](50) NULL,
 CONSTRAINT [PK_factgpstrprdprts] PRIMARY KEY CLUSTERED 
(
	[part_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[factgpstrprdprts] ON 
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (1, N'adsa                                                                                                ', N'sdfs                                                                                                ', N'sdfs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', N'sdfs                                                                                                                                                                                                    ', N'sdfs                ', N'sdfs                                                                                                                                                                                                    ', N'dgf                 ', N'sfs                                               ', N'sfds                                                                                                ', N'sdfs                ', N'sfs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', N'fsdf                                                                                                                                                                                                    ', N'sf        ')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (2, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (3, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (4, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (5, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (6, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (7, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (8, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (9, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (10, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (11, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (12, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (13, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (14, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
INSERT [dbo].[factgpstrprdprts] ([part_request_id], [project_type], [project_sub_type], [grfo_comment_actions_summary], [project_requestor], [base_part_number], [part_description], [solution_part_number], [bu_name], [customer_code], [region_code], [engineer_comments_notes], [process_step], [engineering_owner]) VALUES (15, N'Test 1', N'Test 2', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3', N'Test 3')
GO
SET IDENTITY_INSERT [dbo].[factgpstrprdprts] OFF
GO
USE [master]
GO
ALTER DATABASE [RMS_GPST] SET  READ_WRITE 
GO
