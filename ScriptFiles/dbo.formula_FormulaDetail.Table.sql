USE [NXJC]
GO
/****** Object:  Table [dbo].[formula_FormulaDetail]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_FormulaDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[VariableId] [nvarchar](64) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [nvarchar](50) NOT NULL,
	[LevelType] [varchar](64) NULL,
	[Name] [nvarchar](50) NULL,
	[SaveToHistory] [bit] NULL,
	[Formula] [nvarchar](400) NULL,
	[Denominator] [nvarchar](max) NULL,
	[CoalDustConsumption] [nvarchar](50) NULL,
	[Required] [bit] NULL,
	[AlarmType] [int] NULL,
	[EnergyAlarmValue] [decimal](8, 2) NULL,
	[PowerAlarmValue] [decimal](8, 2) NULL,
	[CoalDustConsumptionAlarm] [decimal](8, 2) NULL,
	[RelativeParameters] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_formula_FormulaDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[formula_FormulaDetail] ADD  CONSTRAINT [DF_formula_FormulaDetail_Visible]  DEFAULT ((1)) FOR [Visible]
GO
