USE [NXJC]
GO
/****** Object:  Table [dbo].[system_CementTypesAndConvertCoefficient]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_CementTypesAndConvertCoefficient](
	[ID] [uniqueidentifier] NOT NULL,
	[CementID] [int] NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[Intensity] [decimal](8, 1) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_CementTypesAndConvertCoefficient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
