USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[IndicatorName] [char](30) NULL,
	[January] [bigint] NULL,
	[February] [bigint] NULL,
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,
	[Remarks] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule] ADD  DEFAULT (newid()) FOR [ID]
GO
