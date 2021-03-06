USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_Standard_Detail]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_Standard_Detail](
	[StandardItemId] [uniqueidentifier] NOT NULL,
	[KeyId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[LevelType] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[StandardType] [varchar](32) NULL,
	[Unit] [varchar](32) NULL,
	[StandardValue] [decimal](18, 4) NOT NULL,
	[StandardLevel] [int] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_analyse_KPI_Standard] PRIMARY KEY CLUSTERED 
(
	[StandardItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[analyse_KPI_Standard_Detail] ADD  CONSTRAINT [DF_analyse_KPI_Standard_Detail_StandardItemId]  DEFAULT (newid()) FOR [StandardItemId]
GO
