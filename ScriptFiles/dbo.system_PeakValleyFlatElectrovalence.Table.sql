USE [NXJC]
GO
/****** Object:  Table [dbo].[system_PeakValleyFlatElectrovalence]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_PeakValleyFlatElectrovalence](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](50) NULL,
	[PeakElectrovalence] [decimal](6, 4) NULL,
	[ValleyElectrovalence] [decimal](6, 4) NULL,
	[FlatElectrovalence] [decimal](6, 4) NULL,
 CONSTRAINT [PK_system_PeakValleyFlatElectrovalence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
