USE [NXJC]
GO
/****** Object:  Table [dbo].[system_CoalConsumptionAlarmParameterSetting]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_CoalConsumptionAlarmParameterSetting](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NULL,
	[Name] [char](20) NULL,
	[StandardValue] [decimal](18, 4) NULL,
	[AlarmValue] [decimal](18, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_CoalConsumptionAlarmParameterSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
