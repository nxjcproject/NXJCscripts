USE [NXJC]
GO
/****** Object:  Table [dbo].[tz_Plan]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Plan](
	[KeyID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Date] [char](10) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[PlanType] [varchar](32) NOT NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK__tz_Plan__21F5BE2776B67ED5] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
