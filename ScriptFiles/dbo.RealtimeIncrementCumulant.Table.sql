USE [NXJC]
GO
/****** Object:  Table [dbo].[RealtimeIncrementCumulant]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RealtimeIncrementCumulant](
	[ItemId] [uniqueidentifier] NOT NULL,
	[UpdateDateTime] [datetime] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[Type] [varchar](64) NOT NULL,
	[CumulantClass] [decimal](18, 4) NULL,
	[CumulantLastClass] [decimal](18, 4) NULL,
	[CumulantDay] [decimal](18, 4) NULL,
 CONSTRAINT [PK_RealtimeIncrementCumulant] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
