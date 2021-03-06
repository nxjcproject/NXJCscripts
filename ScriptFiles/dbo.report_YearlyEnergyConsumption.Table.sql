USE [NXJC]
GO
/****** Object:  Table [dbo].[report_YearlyEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_YearlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Electricity_RawBatch] [bigint] NULL,
	[Electricity_Clinker] [bigint] NULL,
	[Electricity_Cement] [bigint] NULL,
	[Consumption_CoalDust] [bigint] NULL,
	[Output_RawBatch] [bigint] NULL,
	[Output_Clinker] [bigint] NULL,
	[Output_Cement] [bigint] NULL,
	[Output_Cogeneration] [bigint] NULL,
	[ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[ComprehensiveElectricityOutput] [decimal](8, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_YearlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
