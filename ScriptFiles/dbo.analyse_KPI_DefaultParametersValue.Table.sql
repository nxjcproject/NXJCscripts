USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_DefaultParametersValue]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_DefaultParametersValue](
	[VariableId] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Type] [varchar](32) NULL,
	[DefaultValue] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_analyse_KPI_DefaultParametersValue] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[analyse_KPI_DefaultParametersValue] ADD  CONSTRAINT [DF_analyse_KPI_DefaultParametersValue_DefaultValue]  DEFAULT ((0)) FOR [DefaultValue]
GO
