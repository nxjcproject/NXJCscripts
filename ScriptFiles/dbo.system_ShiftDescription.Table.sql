USE [NXJC]
GO
/****** Object:  Table [dbo].[system_ShiftDescription]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ShiftDescription](
	[ShiftDescriptionID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Shifts] [nchar](2) NULL,
	[StartTime] [char](10) NULL,
	[EndTime] [char](10) NULL,
	[Description] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_system_ShiftDescription] PRIMARY KEY CLUSTERED 
(
	[ShiftDescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
