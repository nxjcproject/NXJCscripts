USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementMilMonthlyEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilMonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Electricity_Cement] [bigint] NULL,
	[First_Electricity_CementGrinding] [bigint] NULL,
	[First_Electricity_AdmixturePreparation] [bigint] NULL,
	[First_Electricity_BagsBulk] [bigint] NULL,
	[First_Output_Cement] [bigint] NULL,
	[First_Output_BagsBulk] [bigint] NULL,
	[First_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[First_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Electricity_Cement] [bigint] NULL,
	[Second_Electricity_CementGrinding] [bigint] NULL,
	[Second_Electricity_AdmixturePreparation] [bigint] NULL,
	[Second_Electricity_BagsBulk] [bigint] NULL,
	[Second_Output_Cement] [bigint] NULL,
	[Second_Output_BagsBulk] [bigint] NULL,
	[Second_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Second_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Electricity_Cement] [bigint] NULL,
	[Third_Electricity_CementGrinding] [bigint] NULL,
	[Third_Electricity_AdmixturePreparation] [bigint] NULL,
	[Third_Electricity_BagsBulk] [bigint] NULL,
	[Third_Output_Cement] [bigint] NULL,
	[Third_Output_BagsBulk] [bigint] NULL,
	[Third_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Third_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
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
ALTER TABLE [dbo].[report_CementMilMonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
