USE [NXJC]
GO
/****** Object:  Table [dbo].[experience_EnergyProcessRecord]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_EnergyProcessRecord](
	[RecordItemId] [varchar](64) NOT NULL,
	[RecordName] [varchar](256) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Department] [varchar](64) NOT NULL,
	[RecordType] [varchar](64) NOT NULL,
	[RecordTypeGroup] [varchar](64) NULL,
	[Recorder] [varchar](32) NULL,
	[RecordTime] [datetime] NOT NULL,
	[RecordText] [ntext] NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remarks] [varchar](256) NULL,
 CONSTRAINT [PK_experience_ProductionProcessRecord] PRIMARY KEY CLUSTERED 
(
	[RecordItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
