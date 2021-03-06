USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementMonthlyElectricityConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementMonthlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [float] NULL,
	[First_Output] [bigint] NULL,
	[First_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Convert_ElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_CementMonthlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
