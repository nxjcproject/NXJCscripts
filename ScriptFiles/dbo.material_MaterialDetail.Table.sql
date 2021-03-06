USE [NXJC]
GO
/****** Object:  Table [dbo].[material_MaterialDetail]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material_MaterialDetail](
	[MaterialId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[Name] [nvarchar](64) NULL,
	[KeyID] [uniqueidentifier] NOT NULL,
	[Type] [varchar](64) NULL,
	[Unit] [varchar](64) NULL,
	[MaterialErpCode] [varchar](64) NULL,
	[TagTableName] [varchar](64) NULL,
	[Formula] [varchar](1024) NULL,
	[Coefficient] [decimal](6, 4) NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_material_MaterialDetail] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[material_MaterialDetail] ADD  CONSTRAINT [DF_material_MaterialDetail_Visible]  DEFAULT ((1)) FOR [Visible]
GO
