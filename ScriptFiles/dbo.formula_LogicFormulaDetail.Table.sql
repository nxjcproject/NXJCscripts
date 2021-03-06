USE [NXJC]
GO
/****** Object:  Table [dbo].[formula_LogicFormulaDetail]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_LogicFormulaDetail](
	[FormulaItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ResultValueId] [varchar](64) NULL,
	[Formula] [nvarchar](400) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_formula_LogicFormulaDetail] PRIMARY KEY CLUSTERED 
(
	[FormulaItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[formula_LogicFormulaDetail] ADD  CONSTRAINT [DF_formula_LogicFormulaDetail_FormulaItemId]  DEFAULT (newid()) FOR [FormulaItemId]
GO
