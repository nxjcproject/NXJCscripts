USE [NXJC]
GO
/****** Object:  Table [dbo].[system_Organization_Instrumentation]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Organization_Instrumentation](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[LevelCode] [varchar](20) NULL,
	[DatabaseID] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ENABLED] [bit] NULL,
	[LegalRepresentative] [nvarchar](30) NULL,
	[Address] [nvarchar](max) NULL,
	[Contacts] [nchar](10) NULL,
	[ContactInfo] [varchar](max) NULL,
	[CommissioningDate] [datetime] NULL,
	[Products] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_Organization_Instrumentation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
