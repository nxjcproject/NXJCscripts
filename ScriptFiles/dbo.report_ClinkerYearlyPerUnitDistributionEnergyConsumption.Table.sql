USE [NXJC]
GO
/****** Object:  Table [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[vDate] [char](10) NULL,
	[ElectricityConsumption] [bigint] NULL,
	[CoalDust] [bigint] NULL,
	[Qnet] [bigint] NULL,
	[Diesel] [decimal](8, 2) NULL,
	[CogenerationSupply] [bigint] NULL,
	[CogenerationProduction] [bigint] NULL,
	[CogenerationSelfUse] [bigint] NULL,
	[ClinkerOutput] [bigint] NULL,
	[ClinkerIntensity] [decimal](8, 1) NULL,
	[ClinkerIntensityCorrectionFactor] [decimal](8, 4) NULL,
	[Clinker_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_CoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_ComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_DieselConsumption] [decimal](8, 3) NULL,
	[CogenerationSupplyCorrection] [decimal](8, 1) NULL,
	[Clinker_ComprehensiveEnergyConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveEnergyConsumption] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
