USE [NXJC]
GO
/****** Object:  Table [dbo].[material_MaterialChangeLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material_MaterialChangeLog](
	[MaterialChangeID] [uniqueidentifier] NOT NULL,
	[ContrastID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableType] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[MaterialValue] [varchar](64) NOT NULL,
	[EventValue] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ChangeStartTime] [datetime] NOT NULL,
	[ChangeEndTime] [datetime] NULL,
	[ErpCode] [varchar](64) NULL,
 CONSTRAINT [PK_material_MaterialChangeLog] PRIMARY KEY CLUSTERED 
(
	[MaterialChangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
