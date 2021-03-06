USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementMilEnergyConsumption_TargetCompletion]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Monthly_Target] [bigint] NULL,
	[Today_Completion] [bigint] NULL,
	[Monthly_Accumulative] [bigint] NULL,
	[Monthly_Gap] [bigint] NULL,
	[Yearly_Target] [bigint] NULL,
	[Yearly_Accumulative] [bigint] NULL,
	[Yearly_Gap] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion] ADD  DEFAULT (newid()) FOR [ID]
GO
