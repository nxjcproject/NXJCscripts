USE [NXJC]
GO
/****** Object:  Table [dbo].[equipment_EquipmentDetail]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equipment_EquipmentDetail](
	[EquipmentId] [varchar](64) NOT NULL,
	[EquipmentName] [varchar](64) NOT NULL,
	[EquipmentCommonId] [varchar](64) NOT NULL,
	[ParentEquipmentId] [varchar](64) NULL,
	[VariableId] [varchar](64) NULL,
	[OrganizationId] [varchar](64) NOT NULL,
	[ProductionLineId] [varchar](64) NULL,
	[DisplayIndex] [int] NOT NULL,
	[HasOutputPlan] [bit] NOT NULL,
	[Remark] [varchar](256) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_equipment_EquipmentDetail] PRIMARY KEY CLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_EquipmentId]  DEFAULT (newid()) FOR [EquipmentId]
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_DisplayIndex]  DEFAULT ((1)) FOR [DisplayIndex]
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
