USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_EnergyConsumptionAlarmLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_EnergyConsumptionAlarmLog](
	[EnergyConsumptionAlarmLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[EnergyConsumptionType] [nchar](4) NULL,
	[StartTime] [datetime] NULL,
	[TimeSpan] [nvarchar](100) NULL,
	[LevelCode] [nchar](50) NULL,
	[Name] [nvarchar](20) NULL,
	[StandardValue] [decimal](18, 4) NULL,
	[ActualValue] [decimal](18, 4) NULL,
	[Superscale] [decimal](18, 4) NULL,
	[Reason] [nvarchar](200) NULL,
	[VariableID] [varchar](64) NULL,
 CONSTRAINT [PK_shift_EnergyConsumptionAlarmLog] PRIMARY KEY CLUSTERED 
(
	[EnergyConsumptionAlarmLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
