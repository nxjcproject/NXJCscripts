USE [NXJC]
GO
/****** Object:  Table [dbo].[system_EquipmentAccount]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EquipmentAccount](
	[EquipmentItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[EquipmentName] [varchar](64) NULL,
	[MonitorType] [int] NULL,
	[PowerSupply] [nvarchar](512) NULL,
	[VoltageGrade] [varchar](64) NULL,
	[RatedCT] [varchar](32) NULL,
	[AmmeterCode] [varchar](32) NULL,
	[ActualCT] [varchar](32) NULL,
	[Power] [varchar](64) NULL,
	[Unit] [varchar](32) NULL,
	[Current] [varchar](64) NULL,
	[PowerSupplyPosition] [nvarchar](512) NULL,
	[Remarks] [nvarchar](512) NULL,
 CONSTRAINT [PK_system_EquipmentAccount] PRIMARY KEY CLUSTERED 
(
	[EquipmentItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
