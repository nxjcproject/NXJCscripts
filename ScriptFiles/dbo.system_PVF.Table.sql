USE [NXJC]
GO
/****** Object:  Table [dbo].[system_PVF]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_PVF](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[StartUsing] [date] NULL,
	[EndUsing] [date] NULL,
	[Flag] [bit] NULL,
	[KeyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_system_PVF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
