USE [NXJC]
GO
/****** Object:  Table [dbo].[tz_Report]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Report](
	[OrganizationID] [varchar](64) NULL,
	[ReportID] [uniqueidentifier] NULL,
	[ReportName] [nvarchar](max) NULL,
	[Date] [char](10) NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[KeyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tz_Report] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
