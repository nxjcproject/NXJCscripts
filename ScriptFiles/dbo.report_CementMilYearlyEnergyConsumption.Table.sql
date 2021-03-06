USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementMilYearlyEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilYearlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[Electricity_Cement_Monthly] [bigint] NULL,
	[Electricity_Cement_Accumulative] [bigint] NULL,
	[Electricity_CementGrinding_Monthly] [bigint] NULL,
	[Electricity_CementGrinding_Accumulative] [bigint] NULL,
	[Electricity_AdmixturePreparation_Monthly] [bigint] NULL,
	[Electricity_AdmixturePreparation_Accumulative] [bigint] NULL,
	[Electricity_BagsBulk_Monthly] [bigint] NULL,
	[Electricity_BagsBulk_Accumulative] [bigint] NULL,
	[Output_Cement_Monthly] [bigint] NULL,
	[Output_Cement_Accumulative] [bigint] NULL,
	[Output_BagsBulk_Monthly] [bigint] NULL,
	[Output_BagsBulk_Accumulative] [bigint] NULL,
	[ElectricityConsumption_Cement_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Cement_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_CementGrinding_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_CementGrinding_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_BagsBulk_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_BagsBulk_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_CementMilYearlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
