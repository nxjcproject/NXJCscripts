USE [NXJC]
GO
/****** Object:  Table [dbo].[system_UserFiles]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_UserFiles](
	[FileItemId] [varchar](64) NOT NULL,
	[FileName] [varchar](128) NOT NULL,
	[FileGroupId] [varchar](128) NOT NULL,
	[FileClassify] [varchar](64) NOT NULL,
	[FilePath] [varchar](512) NOT NULL,
	[FileType] [varchar](32) NOT NULL,
	[FileSize] [float] NOT NULL,
	[UserId] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_system_UserFiles] PRIMARY KEY CLUSTERED 
(
	[FileItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileItemId]  DEFAULT (newid()) FOR [FileItemId]
GO
ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileSize]  DEFAULT ((1.0)) FOR [FileSize]
GO
