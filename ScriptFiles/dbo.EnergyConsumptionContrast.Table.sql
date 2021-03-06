USE [NXJC]
GO
/****** Object:  Table [dbo].[EnergyConsumptionContrast]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnergyConsumptionContrast](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[type] [int] NULL,
	[ViewName] [char](30) NULL,
	[VariableName] [char](30) NULL,
	[VariableDescription] [varchar](max) NULL,
	[TableName] [char](30) NULL,
	[FieldName] [char](30) NULL,
	[Item] [char](30) NULL,
	[value] [decimal](18, 2) NULL,
	[Enabled] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[EnergyConsumptionContrast] ADD  CONSTRAINT [DF__EnergyConsum__ID__2CF2ADDF]  DEFAULT (newid()) FOR [ID]
GO
