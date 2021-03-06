USE [NXJC]
GO
/****** Object:  Table [dbo].[system_KPI]    Script Date: 2016-04-18 8:30:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_KPI](
	[ID] [uniqueidentifier] NOT NULL,
	[StandardCategory] [char](20) NULL,
	[Clinker_ComparableComprehensiveStandardCoalConsumption] [decimal](18, 4) NULL,
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[Cement_ComparableComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[Clinker_ComparableComprehensiveEnergyConsumption] [decimal](18, 4) NULL,
	[Cement_ComparableComprehensiveEnergyConsumption] [decimal](18, 4) NULL,
	[RawBatch_ElectricityConsumption] [decimal](18, 4) NULL,
	[Clinker_CoalConsumption] [decimal](18, 4) NULL,
	[Clinker_ElectricityConsumption] [decimal](18, 4) NULL,
	[Cement_ElectricityConsumption] [decimal](18, 4) NULL,
 CONSTRAINT [PK_system_KPI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[system_KPI] ADD  DEFAULT (newid()) FOR [ID]
GO
