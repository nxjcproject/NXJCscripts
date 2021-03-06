USE [NXJC]
GO
/****** Object:  Table [dbo].[experience_DowntimeTreatment]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[experience_DowntimeTreatment](
	[DowntimeTreatmentItemId] [varchar](64) NOT NULL,
	[DowntimeTreatmentName] [varchar](128) NOT NULL,
	[ReasonItemID] [varchar](64) NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Phenomenon] [text] NOT NULL,
	[Treatment] [text] NOT NULL,
	[Remarks] [nvarchar](2048) NULL,
 CONSTRAINT [PK_experience_DowntimePhenomenonAndTreatment] PRIMARY KEY CLUSTERED 
(
	[DowntimeTreatmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
