USE [NXJC]
GO
/****** Object:  Table [dbo].[plan_EnergyConsumptionPlan_Template]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_EnergyConsumptionPlan_Template](
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[DisplayIndex] [int] NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[PlanType] [varchar](32) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ValueType] [varchar](32) NOT NULL,
	[CaculateType] [varchar](32) NOT NULL,
	[Denominator] [varchar](64) NULL,
 CONSTRAINT [PK_plan_EnergyConsumptionYearlyPlan_Template] PRIMARY KEY CLUSTERED 
(
	[QuotasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
