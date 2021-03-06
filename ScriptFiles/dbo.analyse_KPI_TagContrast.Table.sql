USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_TagContrast]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_TagContrast](
	[TagItemId] [varchar](64) NULL,
	[StandardId] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ValueTagId] [varchar](64) NULL,
	[DataBaseName] [varchar](128) NULL,
	[TableName] [varchar](128) NULL,
 CONSTRAINT [PK_analyse_KPI_TagContrast] PRIMARY KEY CLUSTERED 
(
	[StandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[analyse_KPI_TagContrast] ADD  CONSTRAINT [DF_analyse_KPI_TagContrast_TagItemId]  DEFAULT (newid()) FOR [TagItemId]
GO
