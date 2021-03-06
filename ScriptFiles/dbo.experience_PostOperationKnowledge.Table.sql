USE [NXJC]
GO
/****** Object:  Table [dbo].[experience_PostOperationKnowledge]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_PostOperationKnowledge](
	[PostOperationKnowledgeId] [varchar](64) NOT NULL,
	[PostOperationKnowledgeName] [nvarchar](64) NULL,
	[Keyword] [varchar](256) NULL,
	[PostName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[PostOperationKnowledgeType] [varchar](64) NULL,
	[PostOperationKnowledgeGroup] [varchar](64) NOT NULL,
	[PostOperationKnowledgeText] [text] NULL,
	[Propounder] [varchar](32) NOT NULL,
	[ProposedTime] [datetime] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Remarks] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[PostOperationKnowledgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
