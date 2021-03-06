USE [NXJC]
GO
/****** Object:  Table [dbo].[equipment_EquipmentCommonInfo]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_EquipmentCommonInfo](
	[EquipmentCommonId] [varchar](64) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NULL,
 CONSTRAINT [PK_equipment_EquipmentCommonInfo] PRIMARY KEY CLUSTERED 
(
	[EquipmentCommonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
