USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerYearlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[Electricity_RawBatch_Monthly] [bigint] NULL,
	[Electricity_RawBatch_Accumulative] [bigint] NULL,
	[Electricity_RawBatchMil_Monthly] [bigint] NULL,
	[Electricity_RawBatchMil_Accumulative] [bigint] NULL,
	[Electricity_Clinker_Monthly] [bigint] NULL,
	[Electricity_Clinker_Accumulative] [bigint] NULL,
	[Electricity_CoalDust_Monthly] [bigint] NULL,
	[Electricity_CoalDust_Accumulative] [bigint] NULL,
	[Consumption_CoalDust_Monthly] [bigint] NULL,
	[Consumption_CoalDust_Accumulative] [bigint] NULL,
	[Output_RawBatch_Monthly] [bigint] NULL,
	[Output_RawBatch_Accumulative] [bigint] NULL,
	[Output_Clinker_Monthly] [bigint] NULL,
	[Output_Clinker_Accumulative] [bigint] NULL,
	[Output_CoalDust_Monthly] [bigint] NULL,
	[Output_CoalDust_Accumulative] [bigint] NULL,
	[Output_Cogeneration_Monthly] [bigint] NULL,
	[Output_Cogeneration_Accumulative] [bigint] NULL,
	[ElectricityConsumption_RawBatch_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatch_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatchMill_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatchMill_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_CoalDust_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_CoalDust_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
