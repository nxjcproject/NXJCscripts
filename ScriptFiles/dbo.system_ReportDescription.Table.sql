USE [NXJC]
GO
/****** Object:  Table [dbo].[system_ReportDescription]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ReportDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [char](100) NULL,
	[StoreName] [char](100) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_ReportDescription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_ReportDescription] ADD  DEFAULT (newid()) FOR [ID]
GO
