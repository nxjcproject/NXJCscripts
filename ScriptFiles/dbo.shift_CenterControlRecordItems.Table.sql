USE [NXJC]
GO
/****** Object:  Table [dbo].[shift_CenterControlRecordItems]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_CenterControlRecordItems](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyId] [uniqueidentifier] NULL,
	[ContrastID] [varchar](64) NULL,
	[DataType] [int] NULL,
	[DisplayIndex] [int] NULL,
	[DCSTableName] [char](30) NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK_shift_CenterControlRecordItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
