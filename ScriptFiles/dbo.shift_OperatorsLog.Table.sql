USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_OperatorsLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_OperatorsLog](
	[OperatorsLogID] [uniqueidentifier] NOT NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingSectionID] [uniqueidentifier] NULL,
	[StaffID] [nvarchar](50) NULL,
 CONSTRAINT [PK_shift_OperatorsLog_1] PRIMARY KEY CLUSTERED 
(
	[OperatorsLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
