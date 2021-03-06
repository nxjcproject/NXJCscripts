USE [NXJC]
GO
/****** Object:  Table [dbo].[table_PublicFormulaDay]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_PublicFormulaDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_PublicFormulaDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
