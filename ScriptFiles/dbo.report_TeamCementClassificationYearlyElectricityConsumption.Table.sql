USE [NXJC]
GO
/****** Object:  Table [dbo].[report_TeamCementClassificationYearlyElectricityConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_TeamCementClassificationYearlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[TeamA_Output] [bigint] NULL,
	[TeamA_Electricity] [bigint] NULL,
	[TeamA_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamA_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Output] [bigint] NULL,
	[TeamB_Electricity] [bigint] NULL,
	[TeamB_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Output] [bigint] NULL,
	[TeamC_Electricity] [bigint] NULL,
	[TeamC_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Output] [bigint] NULL,
	[TeamD_Electricity] [bigint] NULL,
	[TeamD_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Convert_ElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_TeamCementClassificationYearlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
