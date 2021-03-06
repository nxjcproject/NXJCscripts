USE [NXJC]
GO
/****** Object:  Table [dbo].[tz_Balance]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Balance](
	[BalanceId] [uniqueidentifier] NOT NULL,
	[BalanceName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[TemplateId] [varchar](64) NULL,
	[TemplateType] [varchar](32) NULL,
	[DataBaseName] [varchar](64) NULL,
	[DataTableName] [varchar](256) NOT NULL,
	[StaticsCycle] [varchar](32) NOT NULL,
	[TimeStamp] [varchar](32) NOT NULL,
	[BalanceStatus] [int] NOT NULL,
	[Editor] [varchar](32) NULL,
	[EditTime] [datetime] NULL,
	[Remarks] [varchar](256) NULL,
	[FirstWorkingTeam] [nchar](2) NULL,
	[SecondWorkingTeam] [nchar](2) NULL,
	[ThirdWorkingTeam] [nchar](2) NULL,
 CONSTRAINT [PK__tz_Balan__A760D5BEEE8376A3] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
