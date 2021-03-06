USE [NXJC]
GO
/****** Object:  Table [dbo].[table_AmmeterPeakerValleyFlatMonth]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatMonth](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[AmmeterNumber] [char](30) NULL,
	[AmmeterName] [char](30) NULL,
	[ElectricRoom] [char](40) NULL,
	[Peak_Electricity] [decimal](18, 4) NULL,
	[Valley_Electricity] [decimal](18, 4) NULL,
	[Flat_Electricity] [decimal](18, 4) NULL,
	[Sum_Electricity] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_AmmeterPeakerValleyFlatMonth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
