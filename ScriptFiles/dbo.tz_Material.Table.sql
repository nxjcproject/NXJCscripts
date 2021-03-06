USE [NXJC]
GO
/****** Object:  Table [dbo].[tz_Material]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Material](
	[KeyID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Type] [int] NULL,
	[Enable] [bit] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_tz_Material] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
