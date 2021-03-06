USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_CenterControlRecord]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_CenterControlRecord](
	[KeyID] [uniqueidentifier] NOT NULL,
	[ProductionPrcessId] [varchar](64) NULL,
	[ProductionPrcessName] [varchar](64) NULL,
	[RecordType] [int] NULL,
	[RecordName] [varchar](20) NULL,
	[OrganizationID] [varchar](64) NULL,
	[DatabaseID] [varchar](64) NULL,
	[TemplateUrl] [varchar](128) NULL,
	[DisplayIndex] [int] NULL,
 CONSTRAINT [PK_shift_CenterControlRecord] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
