USE [NXJC]
GO
/****** Object:  Table [dbo].[balance_Energy]    Script Date: 2016-04-18 8:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Energy](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[PublicVariableId] [varchar](64) NULL,
	[KeyId] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[ValueType] [varchar](32) NULL,
	[TotalPeakValleyFlat] [decimal](18, 4) NOT NULL,
	[MorePeak] [decimal](18, 4) NOT NULL,
	[Peak] [decimal](18, 4) NOT NULL,
	[Valley] [decimal](18, 4) NOT NULL,
	[MoreValley] [decimal](18, 4) NOT NULL,
	[Flat] [decimal](18, 4) NOT NULL,
	[First] [decimal](18, 4) NOT NULL,
	[Second] [decimal](18, 4) NOT NULL,
	[Third] [decimal](18, 4) NOT NULL,
	[TotalPeakValleyFlatB] [decimal](18, 4) NOT NULL,
	[MorePeakB] [decimal](18, 4) NOT NULL,
	[PeakB] [decimal](18, 4) NOT NULL,
	[ValleyB] [decimal](18, 4) NOT NULL,
	[MoreValleyB] [decimal](18, 4) NOT NULL,
	[FlatB] [decimal](18, 4) NOT NULL,
	[FirstB] [decimal](18, 4) NOT NULL,
	[SecondB] [decimal](18, 4) NOT NULL,
	[ThirdB] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK__balance___91EE66EF016F52AB] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
