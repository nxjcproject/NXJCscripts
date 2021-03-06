USE [NXJC]
GO
/****** Object:  Table [dbo].[temp_ProcessValue]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_ProcessValue](
	[ID] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[vDate] [datetime] NULL,
	[VariableID] [varchar](64) NULL,
	[LevelCode] [varchar](64) NULL,
	[Value] [decimal](18, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
