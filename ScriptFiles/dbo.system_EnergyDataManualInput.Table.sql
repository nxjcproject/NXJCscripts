USE [NXJC]
GO
/****** Object:  Table [dbo].[system_EnergyDataManualInput]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EnergyDataManualInput](
	[DataItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[TimeStamp] [varchar](64) NULL,
	[DataValue] [decimal](18, 4) NULL,
	[UpdateCycle] [varchar](30) NULL,
	[Version] [int] NULL,
	[Remark] [nvarchar](256) NULL,
 CONSTRAINT [PK_system_EnergyDataManualInput] PRIMARY KEY CLUSTERED 
(
	[DataItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
