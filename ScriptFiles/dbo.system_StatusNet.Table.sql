USE [NXJC]
GO
/****** Object:  Table [dbo].[system_StatusNet]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StatusNet](
	[ID] [uniqueidentifier] NOT NULL,
	[Company] [varchar](64) NULL,
	[BranchFactory] [varchar](64) NULL,
	[IP] [varchar](64) NULL,
	[Servers] [varchar](32) NULL,
	[Status] [varchar](32) NULL,
	[Timestamp] [datetime] NULL,
	[Remark] [varchar](64) NULL,
 CONSTRAINT [PK_system_StatusNet] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_StatusNet] ADD  DEFAULT (newid()) FOR [ID]
GO
