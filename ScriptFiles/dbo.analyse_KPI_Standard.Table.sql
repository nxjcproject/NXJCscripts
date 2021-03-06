USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_Standard]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_Standard](
	[KeyId] [uniqueidentifier] NOT NULL,
	[StandardId] [varchar](64) NOT NULL,
	[StandardName] [varchar](128) NOT NULL,
	[StatisticalMethod] [varchar](64) NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[Version] [varchar](32) NOT NULL,
	[Creator] [varchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_analyse_KPI_Standard_1] PRIMARY KEY CLUSTERED 
(
	[KeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
