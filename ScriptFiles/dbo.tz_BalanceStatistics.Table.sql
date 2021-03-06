USE [NXJC]
GO
/****** Object:  Table [dbo].[tz_BalanceStatistics]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_BalanceStatistics](
	[BalanceId] [uniqueidentifier] NOT NULL,
	[BalanceName] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[TimeStamp] [varchar](32) NULL,
	[StatisticalType] [varchar](32) NULL,
 CONSTRAINT [PK_tz_BalanceStatistics] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tz_BalanceStatistics] ADD  CONSTRAINT [DF_tz_BalanceStatistics_BalanceId]  DEFAULT (newid()) FOR [BalanceId]
GO
