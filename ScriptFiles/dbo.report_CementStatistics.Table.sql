USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementStatistics]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[LevelCode] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[VariableId] [nvarchar](64) NULL,
	[MaterialId] [nvarchar](64) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_report_CementStatistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_CementStatistics] ADD  CONSTRAINT [DF_report_CementStatistics_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementStatistics] ADD  CONSTRAINT [DF_report_CementStatistics_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
