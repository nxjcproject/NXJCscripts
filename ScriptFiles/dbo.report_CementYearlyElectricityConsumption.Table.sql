USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementYearlyElectricityConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementYearlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[Output_Monthly] [bigint] NULL,
	[Output_Accumulative] [bigint] NULL,
	[Electricity_Monthly] [bigint] NULL,
	[Electricity_Accumulative] [bigint] NULL,
	[ElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Accumulative] [decimal](8, 2) NULL,
	[Convert_ElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[Convert_ElectricityConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_CementYearlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
