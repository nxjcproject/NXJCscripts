USE [NXJC]
GO
/****** Object:  Table [dbo].[system_WorkingSection]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_WorkingSection](
	[WorkingSectionItemID] [uniqueidentifier] NOT NULL,
	[WorkingSectionID] [uniqueidentifier] NOT NULL,
	[WorkingSectionName] [nvarchar](50) NOT NULL,
	[Type] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[DisplayIndex] [int] NULL,
	[ElectricityQuantityId] [varchar](64) NULL,
	[OutputId] [varchar](64) NULL,
	[CoalWeightId] [varchar](64) NULL,
	[Creator] [varchar](64) NULL,
	[CreatedTime] [datetime] NULL,
	[Enabled] [bit] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_system_WorkingSection_old] PRIMARY KEY CLUSTERED 
(
	[WorkingSectionItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
