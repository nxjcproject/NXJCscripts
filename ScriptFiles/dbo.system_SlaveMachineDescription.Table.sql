USE [NXJC]
GO
/****** Object:  Table [dbo].[system_SlaveMachineDescription]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_SlaveMachineDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[VariableName] [char](30) NULL,
	[DataBaseName] [varchar](64) NULL,
	[TableName] [varchar](64) NULL,
	[VariableDescription] [varchar](max) NULL,
	[ValidValues] [bit] NULL,
	[TimeDelay] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK__system_S__3214EC27B46E7C3E] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
