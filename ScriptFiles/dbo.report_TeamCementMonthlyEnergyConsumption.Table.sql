USE [NXJC]
GO
/****** Object:  Table [dbo].[report_TeamCementMonthlyEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[TeamA_Electricity_Cement] [bigint] NULL,
	[TeamA_Electricity_CementGrinding] [bigint] NULL,
	[TeamA_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamA_Electricity_BagsBulk] [bigint] NULL,
	[TeamA_Output_Cement] [bigint] NULL,
	[TeamA_Output_BagsBulk] [bigint] NULL,
	[TeamA_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamA_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Electricity_Cement] [bigint] NULL,
	[TeamB_Electricity_CementGrinding] [bigint] NULL,
	[TeamB_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamB_Electricity_BagsBulk] [bigint] NULL,
	[TeamB_Output_Cement] [bigint] NULL,
	[TeamB_Output_BagsBulk] [bigint] NULL,
	[TeamB_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamB_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Electricity_Cement] [bigint] NULL,
	[TeamC_Electricity_CementGrinding] [bigint] NULL,
	[TeamC_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamC_Electricity_BagsBulk] [bigint] NULL,
	[TeamC_Output_Cement] [bigint] NULL,
	[TeamC_Output_BagsBulk] [bigint] NULL,
	[TeamC_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamC_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Electricity_Cement] [bigint] NULL,
	[TeamD_Electricity_CementGrinding] [bigint] NULL,
	[TeamD_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamD_Electricity_BagsBulk] [bigint] NULL,
	[TeamD_Output_Cement] [bigint] NULL,
	[TeamD_Output_BagsBulk] [bigint] NULL,
	[TeamD_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamD_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_Cement] [bigint] NULL,
	[Amountto_Electricity_CementGrinding] [bigint] NULL,
	[Amountto_Electricity_AdmixturePreparation] [bigint] NULL,
	[Amountto_Electricity_BagsBulk] [bigint] NULL,
	[Amountto_Output_Cement] [bigint] NULL,
	[Amountto_Output_BagsBulk] [bigint] NULL,
	[Amountto_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
