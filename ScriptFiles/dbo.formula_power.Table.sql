USE [NXJC]
GO
/****** Object:  Table [dbo].[formula_power]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_power](
	[id_seed] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[LevelCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[PowerValue] [decimal](8, 2) NULL,
	[vDate] [datetime] NULL,
	[Flag_Availability] [int] NULL,
 CONSTRAINT [PK_formula_power] PRIMARY KEY CLUSTERED 
(
	[id_seed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
