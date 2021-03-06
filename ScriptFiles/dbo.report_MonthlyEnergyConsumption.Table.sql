USE [NXJC]
GO
/****** Object:  Table [dbo].[report_MonthlyEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_MonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Electricity_RawBatch] [decimal](18, 4) NULL,
	[Electricity_Clinker] [decimal](18, 4) NULL,
	[Electricity_Cement] [decimal](18, 4) NULL,
	[Consumption_CoalDust] [decimal](18, 4) NULL,
	[Output_RawBatch] [decimal](18, 4) NULL,
	[Output_Clinker] [decimal](18, 4) NULL,
	[Output_Cement] [decimal](18, 4) NULL,
	[Output_Cogeneration] [decimal](18, 4) NULL,
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
ALTER TABLE [dbo].[report_MonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
