USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_OrganizationContrast]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_OrganizationContrast](
	[OrganizationID] [varchar](64) NOT NULL,
	[ClinkerOrganizationID] [varchar](512) NOT NULL,
	[FactoryOrganizationID] [varchar](64) NOT NULL,
 CONSTRAINT [PK_analyse_KPI_OrganizationContrast] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
