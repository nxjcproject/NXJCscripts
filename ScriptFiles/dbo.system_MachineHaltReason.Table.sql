USE [NXJC]
GO
/****** Object:  Table [dbo].[system_MachineHaltReason]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MachineHaltReason](
	[ReasonItemID] [varchar](64) NOT NULL,
	[MachineHaltReasonID] [char](8) NOT NULL,
	[ReasonText] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[ReasonStatisticsTypeId] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_system_MachineHaltReason] PRIMARY KEY CLUSTERED 
(
	[ReasonItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
