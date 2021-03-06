USE [NXJC]
GO
/****** Object:  Table [dbo].[system_Database]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[system_Database](
	[DatabaseID] [uniqueidentifier] NOT NULL,
	[ManagementDatabase] [varchar](max) NULL,
	[DCSProcessDatabase] [varchar](max) NULL,
	[MeterDatabase] [varchar](max) NULL,
 CONSTRAINT [PK_system_Database] PRIMARY KEY CLUSTERED 
(
	[DatabaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
