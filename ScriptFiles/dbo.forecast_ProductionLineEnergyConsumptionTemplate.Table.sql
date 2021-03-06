USE [NXJC]
GO
/****** Object:  Table [dbo].[forecast_ProductionLineEnergyConsumptionTemplate]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionTemplate](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nchar](50) NULL,
	[Type] [nchar](50) NOT NULL,
	[IdSort] [int] NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[IndicatorName] [nchar](50) NOT NULL,
	[January] [decimal](18, 2) NULL,
	[February] [decimal](18, 2) NULL,
	[March] [decimal](18, 2) NULL,
	[April] [decimal](18, 2) NULL,
	[May] [decimal](18, 2) NULL,
	[June] [decimal](18, 2) NULL,
	[July] [decimal](18, 2) NULL,
	[August] [decimal](18, 2) NULL,
	[September] [decimal](18, 2) NULL,
	[October] [decimal](18, 2) NULL,
	[November] [decimal](18, 2) NULL,
	[December] [decimal](18, 2) NULL,
	[Totals] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](256) NULL,
 CONSTRAINT [PK_forecast_ProductionLineEnergyConsumptionTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
