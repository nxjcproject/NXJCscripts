USE [NXJC]
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyOutput]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSecondShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSecondShift] [decimal](18, 4) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) NULL,
	[CementProductionFirstShift] [decimal](18, 4) NULL,
	[CementProductionSecondShift] [decimal](18, 4) NULL,
	[CementProductionThirdShift] [decimal](18, 4) NULL,
	[CementProductionSum] [decimal](18, 4) NULL,
	[Cementmill] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
