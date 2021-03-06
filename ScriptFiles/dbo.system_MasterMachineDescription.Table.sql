USE [NXJC]
GO
/****** Object:  Table [dbo].[system_MasterMachineDescription]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MasterMachineDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[VariableID] [varchar](64) NULL,
	[VariableName] [char](30) NULL,
	[VariableDescription] [varchar](max) NULL,
	[DataBaseName] [varchar](64) NULL,
	[TableName] [varchar](64) NULL,
	[Record] [bit] NULL,
	[ValidValues] [bit] NULL,
	[Remarks] [nvarchar](max) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[MachineHaltReason] [bit] NULL,
	[MachineHaltRecord] [bit] NULL,
	[OutputField] [varchar](64) NULL,
 CONSTRAINT [PK__system_M__3214EC27AB59D120] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
