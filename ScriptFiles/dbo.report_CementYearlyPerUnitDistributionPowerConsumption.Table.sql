USE [NXJC]
GO
/****** Object:  Table [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[vDate] [char](10) NULL,
	[ElectricityConsumption] [bigint] NULL,
	[Clinker_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[CementProductionSum] [bigint] NULL,
	[ClinkerConsumptionSum] [bigint] NULL,
	[ClinkerMatching] [decimal](8, 2) NULL,
	[CementIntensity] [decimal](8, 1) NULL,
	[CementIntensityCorrectionFactor] [decimal](8, 4) NULL,
	[DistributionPowerConsumption] [decimal](8, 1) NULL,
	[Cement_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveEnergyConsumption] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
