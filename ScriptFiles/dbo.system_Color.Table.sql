USE [NXJC]
GO
/****** Object:  Table [dbo].[system_Color]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Color](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationId] [varchar](64) NULL,
	[Color_HH] [varchar](16) NULL,
	[Color_H] [varchar](16) NULL,
	[Color_LL] [varchar](16) NULL,
	[Color_L] [varchar](16) NULL,
	[Color_BarBackground] [varchar](16) NULL,
	[Color_BarForeground] [varchar](16) NULL,
	[Color_MaxRangeAlarm] [varchar](16) NULL,
	[Color_MinRangeAlarm] [varchar](16) NULL,
 CONSTRAINT [PK_system_ALarmColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_Color] ADD  CONSTRAINT [DF_system_ALarmColor_ID]  DEFAULT (newid()) FOR [ID]
GO
