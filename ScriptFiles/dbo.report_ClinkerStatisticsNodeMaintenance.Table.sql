USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerStatisticsNodeMaintenance]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[BindField] [varchar](64) NULL,
	[ParentVariableId] [varchar](64) NULL,
	[VariableId] [varchar](64) NULL,
	[Name] [nvarchar](32) NULL,
	[RowSpan] [int] NULL,
	[DIsplayed] [bit] NULL,
 CONSTRAINT [PK_report_NodeMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_RowSpan]  DEFAULT ((1)) FOR [RowSpan]
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_DIsplayed]  DEFAULT ((1)) FOR [DIsplayed]
GO
