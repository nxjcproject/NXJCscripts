USE [NXJC]
GO
/****** Object:  Table [dbo].[net_DataCollectionNet]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[net_DataCollectionNet](
	[NodeId] [varchar](128) NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[NodeName] [varchar](64) NOT NULL,
	[ParentNodeId] [varchar](128) NULL,
	[NodeType] [varchar](64) NOT NULL,
	[SwitchModels] [varchar](64) NULL,
	[IpAddress] [varchar](64) NULL,
	[RealtimeDataTable] [varchar](256) NULL,
 CONSTRAINT [PK_net_DataCollectionNet] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[net_DataCollectionNet] ADD  CONSTRAINT [DF_net_DataCollectionNet_NodeId]  DEFAULT (newid()) FOR [NodeId]
GO
