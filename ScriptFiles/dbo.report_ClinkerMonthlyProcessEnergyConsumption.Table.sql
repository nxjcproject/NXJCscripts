USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Electricity_RawBatch] [bigint] NULL,
	[First_Electricity_RawBatchGrinding] [bigint] NULL,
	[First_Electricity_Clinker] [bigint] NULL,
	[First_Electricity_CoalDust] [bigint] NULL,
	[First_Consumption_CoalDust] [bigint] NULL,
	[First_Output_RawBatch] [bigint] NULL,
	[First_Output_Clinker] [bigint] NULL,
	[First_Output_CoalDust] [bigint] NULL,
	[First_Output_Cogeneration] [bigint] NULL,
	[First_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[First_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[First_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Second_Electricity_RawBatch] [bigint] NULL,
	[Second_Electricity_RawBatchGrinding] [bigint] NULL,
	[Second_Electricity_Clinker] [bigint] NULL,
	[Second_Electricity_CoalDust] [bigint] NULL,
	[Second_Consumption_CoalDust] [bigint] NULL,
	[Second_Output_RawBatch] [bigint] NULL,
	[Second_Output_Clinker] [bigint] NULL,
	[Second_Output_CoalDust] [bigint] NULL,
	[Second_Output_Cogeneration] [bigint] NULL,
	[Second_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Second_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Second_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Third_Electricity_RawBatch] [bigint] NULL,
	[Third_Electricity_RawBatchGrinding] [bigint] NULL,
	[Third_Electricity_Clinker] [bigint] NULL,
	[Third_Electricity_CoalDust] [bigint] NULL,
	[Third_Consumption_CoalDust] [bigint] NULL,
	[Third_Output_RawBatch] [bigint] NULL,
	[Third_Output_Clinker] [bigint] NULL,
	[Third_Output_CoalDust] [bigint] NULL,
	[Third_Output_Cogeneration] [bigint] NULL,
	[Third_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Third_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Third_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_RawBatch] [bigint] NULL,
	[Amountto_Electricity_RawBatchGrinding] [bigint] NULL,
	[Amountto_Electricity_Clinker] [bigint] NULL,
	[Amountto_Electricity_CoalDust] [bigint] NULL,
	[Amountto_Consumption_CoalDust] [bigint] NULL,
	[Amountto_Output_RawBatch] [bigint] NULL,
	[Amountto_Output_Clinker] [bigint] NULL,
	[Amountto_Output_CoalDust] [bigint] NULL,
	[Amountto_Output_Cogeneration] [bigint] NULL,
	[Amountto_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveCoalConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
