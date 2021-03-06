USE [NXJC]
GO
/****** Object:  Table [dbo].[system_EnergyDataManualInputContrast]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EnergyDataManualInputContrast](
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NULL,
	[Type] [varchar](64) NULL,
	[Enabled] [bit] NULL,
	[Creator] [varchar](64) NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](256) NULL,
 CONSTRAINT [PK_system_EnergyDataManualInputContrast] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
