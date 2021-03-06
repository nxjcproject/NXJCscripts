USE [NXJC]
GO
/****** Object:  Table [dbo].[table_ClinkerYearlyElectricity_sum]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerYearlyElectricity_sum](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerYearlyElectricity_sum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
