USE [NXJC]
GO
/****** Object:  Table [dbo].[formula_ConsumptionAlarmSetting]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formula_ConsumptionAlarmSetting](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[CoalAlarmValue] [decimal](8, 2) NULL,
	[RelativeParameters] [nvarchar](max) NULL,
 CONSTRAINT [PK_formula_ConsumptionAlarmSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
