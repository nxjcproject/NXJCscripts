USE [NXJC]
GO
/****** Object:  Table [dbo].[system_StaffInfo]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StaffInfo](
	[StaffInfoItemId] [uniqueidentifier] NOT NULL,
	[StaffInfoID] [nvarchar](50) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamName] [nchar](2) NULL,
	[WorkingSectionID] [uniqueidentifier] NULL,
	[Name] [nvarchar](20) NULL,
	[Sex] [bit] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_system_StaffInfo_1] PRIMARY KEY CLUSTERED 
(
	[StaffInfoItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
