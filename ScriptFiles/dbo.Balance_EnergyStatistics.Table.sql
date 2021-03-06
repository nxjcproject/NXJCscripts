USE [NXJC]
GO
/****** Object:  Table [dbo].[Balance_EnergyStatistics]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Balance_EnergyStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[KeyId] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[ValueType] [varchar](32) NULL,
	[Value] [decimal](18, 4) NULL,
	[Remarks] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Balance_EnergyStatistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Balance_EnergyStatistics] ADD  CONSTRAINT [DF_Balance_EnergyStatistics_ID]  DEFAULT (newid()) FOR [ID]
GO
