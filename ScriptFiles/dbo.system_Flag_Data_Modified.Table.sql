USE [NXJC]
GO
/****** Object:  Table [dbo].[system_Flag_Data_Modified]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Flag_Data_Modified](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[flag_modified] [bit] NULL,
	[TypeModify] [int] NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_system_Flag_Data_Modified] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
