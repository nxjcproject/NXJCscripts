USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_RawBatch_Output] [bigint] NULL,
	[First_Clinker_Output] [bigint] NULL,
	[First_CoalDust_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_RawBatch_Output] [bigint] NULL,
	[Second_Clinker_Output] [bigint] NULL,
	[Second_CoalDust_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_RawBatch_Output] [bigint] NULL,
	[Third_Clinker_Output] [bigint] NULL,
	[Third_CoalDust_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_RawBatch_Output] [decimal](18, 4) NULL,
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,
	[Amountto_CoalDust_Output] [decimal](18, 4) NULL,
	[Amountto_Peak_Electricity] [decimal](18, 4) NULL,
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
