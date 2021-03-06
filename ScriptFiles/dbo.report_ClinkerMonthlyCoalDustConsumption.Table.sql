USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyCoalDustConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Clinker_Output] [bigint] NULL,
	[First_KilnHead_CoalDust] [bigint] NULL,
	[First_KilnTail_CoalDust] [bigint] NULL,
	[First_sum_CoalDust] [bigint] NULL,
	[First_CoalDustConsumption] [decimal](8, 2) NULL,
	[Second_Clinker_Output] [bigint] NULL,
	[Second_KilnHead_CoalDust] [bigint] NULL,
	[Second_KilnTail_CoalDust] [bigint] NULL,
	[Second_sum_CoalDust] [bigint] NULL,
	[Second_CoalDustConsumption] [decimal](8, 2) NULL,
	[Third_Clinker_Output] [bigint] NULL,
	[Third_KilnHead_CoalDust] [bigint] NULL,
	[Third_KilnTail_CoalDust] [bigint] NULL,
	[Third_sum_CoalDust] [bigint] NULL,
	[Third_CoalDustConsumption] [decimal](8, 2) NULL,
	[Amountto_Clinker_Output] [bigint] NULL,
	[Amountto_KilnHead_CoalDust] [bigint] NULL,
	[Amountto_KilnTail_CoalDust] [bigint] NULL,
	[Amountto_sum_CoalDust] [bigint] NULL,
	[Amountto_CoalDustConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
