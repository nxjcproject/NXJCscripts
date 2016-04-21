USE [NXJC]
GO
/****** Object:  Table [dbo].[temp_erp]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_erp](
	[OrganizationID] [varchar](64) NULL,
	[vDate] [char](10) NULL,
	[Qnet] [bigint] NULL,
	[Diesel] [decimal](8, 2) NULL,
	[ClinkerIntensity] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
