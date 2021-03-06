USE [NXJC]
GO
/****** Object:  Table [dbo].[experience_EnergySavingSuggestions]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_EnergySavingSuggestions](
	[SuggestionsId] [varchar](64) NOT NULL,
	[SuggestionsName] [nvarchar](64) NULL,
	[Keyword] [varchar](256) NULL,
	[PostName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[SuggestionsType] [varchar](64) NULL,
	[SuggestionsGroup] [varchar](64) NOT NULL,
	[SuggestionsText] [text] NULL,
	[Propounder] [varchar](32) NOT NULL,
	[ProposedTime] [datetime] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Remarks] [nvarchar](2048) NULL,
 CONSTRAINT [PK_experience_EnergySavingSuggestions] PRIMARY KEY CLUSTERED 
(
	[SuggestionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
