USE [NXJC]
GO
/****** Object:  Table [dbo].[material_MaterialChangeContrast]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material_MaterialChangeContrast](
	[ContrastID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableType] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[MaterialColumn] [varchar](64) NOT NULL,
	[EventColumn] [varchar](64) NOT NULL,
	[ErpCode] [varchar](64) NULL,
	[EventDataBaseName] [varchar](64) NOT NULL,
	[EventDataTableName] [varchar](64) NOT NULL,
	[MaterialDataBaseName] [varchar](64) NOT NULL,
	[MaterialDataTableName] [varchar](64) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_material_MaterialChangeContrast] PRIMARY KEY CLUSTERED 
(
	[ContrastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
