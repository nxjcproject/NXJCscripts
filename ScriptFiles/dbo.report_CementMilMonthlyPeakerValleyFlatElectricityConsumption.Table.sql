USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Peak_Electricity] [bigint] NULL,
	[Amountto_Valley_Electricity] [bigint] NULL,
	[Amountto_Flat_Electricity] [bigint] NULL,
	[Amountto_Sum_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
