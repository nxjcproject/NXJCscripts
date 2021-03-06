USE [NXJC]
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyElectricity_valley]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_valley](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyElectricity_valley] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
