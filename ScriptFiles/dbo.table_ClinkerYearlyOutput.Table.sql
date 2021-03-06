USE [NXJC]
GO
/****** Object:  Table [dbo].[table_ClinkerYearlyOutput]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerYearlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSecondShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) NULL,
	[RawBatchProductionSecondShift] [decimal](18, 4) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) NULL,
	[RawBatchProductionSum] [decimal](18, 4) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSecondShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) NULL,
	[ClinkerProductionSecondShift] [decimal](18, 4) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) NULL,
	[ClinkerProductionSum] [decimal](18, 4) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) NULL,
	[PowerGenerationSecondShift] [decimal](18, 4) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) NULL,
	[PowerGenerationSum] [decimal](18, 4) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) NULL,
	[PowerSelfUseSecondShift] [decimal](18, 4) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) NULL,
	[PowerSelfUseSum] [decimal](18, 4) NULL,
	[SteamFirstShift] [decimal](18, 4) NULL,
	[SteamSecondShift] [decimal](18, 4) NULL,
	[SteamThirdShift] [decimal](18, 4) NULL,
	[SteamSum] [decimal](18, 4) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) NULL,
	[CoalDustProductionSecondShift] [decimal](18, 4) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) NULL,
	[CoalDustProductionSum] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[RawBatch] [decimal](18, 8) NULL,
	[CoalDust] [decimal](18, 8) NULL,
	[Kiln] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_ClinkerYearlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
