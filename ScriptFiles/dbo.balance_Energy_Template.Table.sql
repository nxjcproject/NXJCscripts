USE [NXJC]
GO
/****** Object:  Table [dbo].[balance_Energy_Template]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Energy_Template](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[TemplateType] [varchar](64) NULL,
	[TemplateTypeDepth] [int] NULL,
	[ValueType] [varchar](32) NULL,
	[ProductionLineType] [nvarchar](64) NULL,
	[DataBaseName] [varchar](64) NULL,
	[DataTableName] [varchar](64) NULL,
	[ValueCoefficient] [decimal](18, 4) NULL,
	[ValueOffset] [decimal](18, 4) NULL,
	[ValueFormula] [varchar](2048) NULL,
	[AutoBalance] [bit] NULL,
	[VariableMark] [varchar](64) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK__balance___91EE66EF5F39C537] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
