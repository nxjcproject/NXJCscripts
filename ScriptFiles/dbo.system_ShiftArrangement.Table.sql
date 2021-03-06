USE [NXJC]
GO
/****** Object:  Table [dbo].[system_ShiftArrangement]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ShiftArrangement](
	[ShiftArrangementItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[WorkingTeam] [nchar](2) NOT NULL,
	[ShiftDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_system_ShiftArrangement] PRIMARY KEY CLUSTERED 
(
	[ShiftArrangementItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_ShiftArrangement] ADD  CONSTRAINT [DF_system_ShiftArrangement_ShiftArrangementItemId]  DEFAULT (newid()) FOR [ShiftArrangementItemId]
GO
