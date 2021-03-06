USE [NXJC]
GO
/****** Object:  Table [dbo].[system_StatusLog]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StatusLog](
	[ID] [uniqueidentifier] NOT NULL,
	[vDate] [datetime] NULL,
	[IP] [varchar](64) NULL,
	[TypeEvents] [varchar](64) NULL,
	[NameEvents] [varchar](64) NULL,
 CONSTRAINT [PK_system_StatusLog] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_StatusLog] ADD  CONSTRAINT [DF__system_Statu__ID__2CFD9AD7]  DEFAULT (newid()) FOR [ID]
GO
