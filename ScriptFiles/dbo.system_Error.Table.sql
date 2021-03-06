USE [NXJC]
GO
/****** Object:  Table [dbo].[system_Error]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Error](
	[ID] [uniqueidentifier] NOT NULL,
	[vDate] [datetime] NULL,
	[OrganizationID] [varchar](64) NULL,
	[AmmeterNumber] [varchar](30) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_Error] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_Error] ADD  CONSTRAINT [DF_system_Error_ID]  DEFAULT (newid()) FOR [ID]
GO
