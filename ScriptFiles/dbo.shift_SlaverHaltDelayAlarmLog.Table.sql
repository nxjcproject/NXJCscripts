USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_SlaverHaltDelayAlarmLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_SlaverHaltDelayAlarmLog](
	[MachineHaltLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[Label] [nvarchar](30) NOT NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[MasterLabel] [nvarchar](30) NOT NULL,
	[MasterEquipmentName] [nvarchar](50) NULL,
	[MasterHaltTime] [datetime] NULL,
	[WarmingTime] [datetime] NULL,
	[detail] [nvarchar](200) NULL,
	[ReasonText] [nvarchar](200) NULL,
	[KeyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift_SlaverHaltDelayAlarmLog] PRIMARY KEY CLUSTERED 
(
	[MachineHaltLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
