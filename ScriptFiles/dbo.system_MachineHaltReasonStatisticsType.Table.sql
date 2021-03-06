USE [NXJC]
GO
/****** Object:  Table [dbo].[system_MachineHaltReasonStatisticsType]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MachineHaltReasonStatisticsType](
	[ReasonStatisticsTypeId] [varchar](64) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[LevelCode] [varchar](64) NULL,
	[Enabled] [bit] NOT NULL,
	[Creator] [varchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_system_MachineHaltReasonStatisticsType] PRIMARY KEY CLUSTERED 
(
	[ReasonStatisticsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
