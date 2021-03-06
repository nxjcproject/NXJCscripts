USE [NXJC]
GO
/****** Object:  Table [dbo].[experience_CaseAnalysis]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_CaseAnalysis](
	[CaseAnalysisId] [varchar](64) NOT NULL,
	[CaseAnalysisName] [varchar](64) NOT NULL,
	[Keyword] [varchar](256) NULL,
	[CaseAnalysisType] [varchar](64) NOT NULL,
	[CaseAnalysisLevel] [int] NOT NULL,
	[CaseAnalysisNature] [varchar](64) NOT NULL,
	[CaseAnalysisText] [text] NULL,
	[CaseAnalysisParticipants] [text] NOT NULL,
	[CaseAnalysisTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_experience_CaseAnalysis] PRIMARY KEY CLUSTERED 
(
	[CaseAnalysisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
