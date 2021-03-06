USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_DCSWarningLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_DCSWarningLog](
	[DCSWarningLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[Label] [nvarchar](30) NULL,
	[StartingTime] [datetime] NULL,
	[EndingTime] [datetime] NULL,
	[Message] [nvarchar](50) NULL,
	[HandleInformation] [nvarchar](200) NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_shift_DCSWarningLog] PRIMARY KEY CLUSTERED 
(
	[DCSWarningLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
