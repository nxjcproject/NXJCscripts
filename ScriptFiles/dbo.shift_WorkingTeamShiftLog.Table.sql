USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_WorkingTeamShiftLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_WorkingTeamShiftLog](
	[WorkingTeamShiftLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ShiftDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Shifts] [nchar](2) NULL,
	[WorkingTeam] [nchar](2) NULL,
	[ChargeManID] [nvarchar](50) NULL,
	[PerformToObjectives] [nvarchar](200) NULL,
	[ProblemsAndSettlements] [nvarchar](200) NULL,
	[EquipmentSituation] [nvarchar](200) NULL,
	[AdvicesToNextShift] [nvarchar](200) NULL,
 CONSTRAINT [PK_shift_WorkingTeamShiftLog] PRIMARY KEY CLUSTERED 
(
	[WorkingTeamShiftLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
