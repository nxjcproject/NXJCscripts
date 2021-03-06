USE [NXJC]
GO
/****** Object:  Table [dbo].[system_TenDaysRealtimeAlarm]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_TenDaysRealtimeAlarm](
	[AlarmItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableID] [varchar](64) NULL,
	[GroupId] [varchar](64) NOT NULL,
	[AlarmType] [nvarchar](20) NOT NULL,
	[AlarmLevel] [int] NOT NULL,
	[AlarmDateTime] [datetime] NOT NULL,
	[KeyId] [uniqueidentifier] NOT NULL,
	[Eanbled] [bit] NOT NULL,
	[AlarmDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_system_TenDaysRealtimeAlarm] PRIMARY KEY CLUSTERED 
(
	[AlarmItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
