USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_TagsGroup]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[analyse_KPI_TagsGroup](
	[TagGroupId] [varchar](64) NOT NULL,
	[TagGroupName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[TagGroupType] [varchar](32) NOT NULL,
	[TagGroupJson] [varchar](4096) NULL,
	[Remarks] [varchar](1024) NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[analyse_KPI_TagsGroup] ADD  DEFAULT (newid()) FOR [TagGroupId]
GO
