USE [NXJC]
GO
/****** Object:  Table [dbo].[plan_ProductionYearlyPlan]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_ProductionYearlyPlan](
	[QuotasItemID] [uniqueidentifier] NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NULL,
	[EquipmentId] [varchar](64) NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
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
	[Remarks] [varchar](256) NULL,
 CONSTRAINT [PK_plan_ProductionYearlyPlan] PRIMARY KEY CLUSTERED 
(
	[QuotasItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
