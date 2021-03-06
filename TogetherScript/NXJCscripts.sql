USE [NXJC]
GO
/****** Object:  Table [dbo].[analyse_KPI_DefaultParametersValue]    Script Date: 2016-04-18 8:29:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_DefaultParametersValue](
	[VariableId] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Type] [varchar](32) NULL,
	[DefaultValue] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_analyse_KPI_DefaultParametersValue] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_OrganizationContrast]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_OrganizationContrast](
	[OrganizationID] [varchar](64) NOT NULL,
	[ClinkerOrganizationID] [varchar](512) NOT NULL,
	[FactoryOrganizationID] [varchar](64) NOT NULL,
 CONSTRAINT [PK_analyse_KPI_OrganizationContrast] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_Standard]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_Standard](
	[KeyId] [uniqueidentifier] NOT NULL,
	[StandardId] [varchar](64) NOT NULL,
	[StandardName] [varchar](128) NOT NULL,
	[StatisticalMethod] [varchar](64) NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[Version] [varchar](32) NOT NULL,
	[Creator] [varchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_analyse_KPI_Standard_1] PRIMARY KEY CLUSTERED 
(
	[KeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_Standard_Detail]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_Standard_Detail](
	[StandardItemId] [uniqueidentifier] NOT NULL,
	[KeyId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[LevelType] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[StandardType] [varchar](32) NULL,
	[Unit] [varchar](32) NULL,
	[StandardValue] [decimal](18, 4) NOT NULL,
	[StandardLevel] [int] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_analyse_KPI_Standard] PRIMARY KEY CLUSTERED 
(
	[StandardItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_TagContrast]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_TagContrast](
	[TagItemId] [varchar](64) NULL,
	[StandardId] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ValueTagId] [varchar](64) NULL,
	[DataBaseName] [varchar](128) NULL,
	[TableName] [varchar](128) NULL,
 CONSTRAINT [PK_analyse_KPI_TagContrast] PRIMARY KEY CLUSTERED 
(
	[StandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_Tags]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[analyse_KPI_Tags](
	[ANALYSE_DATA_ID] [uniqueidentifier] NOT NULL,
	[ANALYSE_DATA_TEXT] [varchar](64) NOT NULL,
	[ANALYSE_DATA_TAG] [varchar](128) NOT NULL,
	[ANALYSE_DATA_TABLE] [varchar](128) NULL,
	[ANALYSE_DATA_CATEGORY] [varchar](64) NOT NULL,
	[PRODUCTION_LINE_TYPE] [varchar](64) NULL,
	[USER_ID] [varchar](64) NULL,
	[ANALYSE_DATA_VALUE] [decimal](14, 4) NULL,
	[ANALYSE_DATA_GROUP] [varchar](64) NULL,
	[DISPLAY_INDEX] [int] NOT NULL,
	[OTHER_INFO] [varchar](256) NULL,
	[ENABLED] [bit] NOT NULL,
 CONSTRAINT [PK_system_KPI123] PRIMARY KEY CLUSTERED 
(
	[ANALYSE_DATA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[analyse_KPI_TagsGroup]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[analyse_KPI_TagsGroup](
	[TagGroupId] [varchar](64) NOT NULL,
	[TagGroupName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[TagGroupType] [varchar](32) NOT NULL,
	[TagGroupJson] [varchar](4096) NULL,
	[Remarks] [varchar](1024) NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TagGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[balance_BalanceMartieralsClass]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_BalanceMartieralsClass](
	[DataItemId] [uniqueidentifier] NOT NULL,
	[Class] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[UpdateDate] [datetime] NULL,
	[VariableId] [varchar](64) NULL,
	[DataValue] [decimal](18, 4) NULL,
	[Remark] [nvarchar](256) NULL,
 CONSTRAINT [PK_balance_BalanceMartieralsClass] PRIMARY KEY CLUSTERED 
(
	[DataItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[balance_Energy]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Energy](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[PublicVariableId] [varchar](64) NULL,
	[KeyId] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[ValueType] [varchar](32) NULL,
	[TotalPeakValleyFlat] [decimal](18, 4) NOT NULL,
	[MorePeak] [decimal](18, 4) NOT NULL,
	[Peak] [decimal](18, 4) NOT NULL,
	[Valley] [decimal](18, 4) NOT NULL,
	[MoreValley] [decimal](18, 4) NOT NULL,
	[Flat] [decimal](18, 4) NOT NULL,
	[First] [decimal](18, 4) NOT NULL,
	[Second] [decimal](18, 4) NOT NULL,
	[Third] [decimal](18, 4) NOT NULL,
	[TotalPeakValleyFlatB] [decimal](18, 4) NOT NULL,
	[MorePeakB] [decimal](18, 4) NOT NULL,
	[PeakB] [decimal](18, 4) NOT NULL,
	[ValleyB] [decimal](18, 4) NOT NULL,
	[MoreValleyB] [decimal](18, 4) NOT NULL,
	[FlatB] [decimal](18, 4) NOT NULL,
	[FirstB] [decimal](18, 4) NOT NULL,
	[SecondB] [decimal](18, 4) NOT NULL,
	[ThirdB] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK__balance___91EE66EF016F52AB] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[balance_Energy_ShareTemplate]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Energy_ShareTemplate](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[TemplateType] [varchar](64) NULL,
	[TemplateTypeDepth] [int] NULL,
	[ValueType] [varchar](32) NULL,
	[ProductionLineType] [nvarchar](64) NULL,
	[DataBaseName] [varchar](64) NULL,
	[DataTableName] [varchar](64) NULL,
	[ValueCoefficient] [decimal](18, 4) NULL,
	[ValueOffset] [decimal](18, 4) NULL,
	[ValueFormula] [varchar](2048) NULL,
	[AutoBalance] [bit] NULL,
	[VariableMark] [varchar](64) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_balance_Energy_ShareTemplate] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[balance_Energy_Template]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Energy_Template](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[TemplateType] [varchar](64) NULL,
	[TemplateTypeDepth] [int] NULL,
	[ValueType] [varchar](32) NULL,
	[ProductionLineType] [nvarchar](64) NULL,
	[DataBaseName] [varchar](64) NULL,
	[DataTableName] [varchar](64) NULL,
	[ValueCoefficient] [decimal](18, 4) NULL,
	[ValueOffset] [decimal](18, 4) NULL,
	[ValueFormula] [varchar](2048) NULL,
	[AutoBalance] [bit] NULL,
	[VariableMark] [varchar](64) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK__balance___91EE66EF5F39C537] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Balance_EnergyStatistics]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Balance_EnergyStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[KeyId] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[ValueType] [varchar](32) NULL,
	[Value] [decimal](18, 4) NULL,
	[Remarks] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Balance_EnergyStatistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[balance_Production]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[balance_Production](
	[VariableItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](128) NOT NULL,
	[VariableName] [varchar](64) NOT NULL,
	[PublicVariableId] [varchar](64) NULL,
	[KeyId] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableType] [varchar](32) NOT NULL,
	[ValueType] [varchar](32) NULL,
	[TotalPeakValleyFlat] [decimal](18, 4) NOT NULL,
	[MorePeak] [decimal](18, 4) NOT NULL,
	[Peak] [decimal](18, 4) NOT NULL,
	[Valley] [decimal](18, 4) NOT NULL,
	[MoreValley] [decimal](18, 4) NOT NULL,
	[Flat] [decimal](18, 4) NOT NULL,
	[First] [decimal](18, 4) NOT NULL,
	[Second] [decimal](18, 4) NOT NULL,
	[Third] [decimal](18, 4) NOT NULL,
	[TotalPeakValleyFlatB] [decimal](18, 4) NOT NULL,
	[MorePeakB] [decimal](18, 4) NOT NULL,
	[PeakB] [decimal](18, 4) NOT NULL,
	[ValleyB] [decimal](18, 4) NOT NULL,
	[MoreValleyB] [decimal](18, 4) NOT NULL,
	[FlatB] [decimal](18, 4) NOT NULL,
	[FirstB] [decimal](18, 4) NOT NULL,
	[SecondB] [decimal](18, 4) NOT NULL,
	[ThirdB] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_balance_Production] PRIMARY KEY CLUSTERED 
(
	[VariableItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EnergyConsumptionContrast]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnergyConsumptionContrast](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[type] [int] NULL,
	[ViewName] [char](30) NULL,
	[VariableName] [char](30) NULL,
	[VariableDescription] [varchar](max) NULL,
	[TableName] [char](30) NULL,
	[FieldName] [char](30) NULL,
	[Item] [char](30) NULL,
	[value] [decimal](18, 2) NULL,
	[Enabled] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[equipment_EquipmentCommonInfo]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[equipment_EquipmentDetail]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[experience_CaseAnalysis]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_CaseAnalysis](
	[CaseAnalysisId] [varchar](64) NOT NULL,
	[CaseAnalysisName] [varchar](64) NOT NULL,
	[Keyword] [varchar](256) NULL,
	[CaseAnalysisType] [varchar](64) NOT NULL,
	[CaseAnalysisLevel] [int] NOT NULL,
	[CaseAnalysisNature] [varchar](64) NOT NULL,
	[CaseAnalysisText] [text] NULL,
	[CaseAnalysisParticipants] [text] NOT NULL,
	[CaseAnalysisTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_experience_CaseAnalysis] PRIMARY KEY CLUSTERED 
(
	[CaseAnalysisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[experience_DowntimeTreatment]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[experience_EnergyProcessRecord]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_EnergyProcessRecord](
	[RecordItemId] [varchar](64) NOT NULL,
	[RecordName] [varchar](256) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Department] [varchar](64) NOT NULL,
	[RecordType] [varchar](64) NOT NULL,
	[RecordTypeGroup] [varchar](64) NULL,
	[Recorder] [varchar](32) NULL,
	[RecordTime] [datetime] NOT NULL,
	[RecordText] [ntext] NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remarks] [varchar](256) NULL,
 CONSTRAINT [PK_experience_ProductionProcessRecord] PRIMARY KEY CLUSTERED 
(
	[RecordItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[experience_EnergySavingSuggestions]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[experience_PostOperationKnowledge]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[experience_PostOperationKnowledge](
	[PostOperationKnowledgeId] [varchar](64) NOT NULL,
	[PostOperationKnowledgeName] [nvarchar](64) NULL,
	[Keyword] [varchar](256) NULL,
	[PostName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[PostOperationKnowledgeType] [varchar](64) NULL,
	[PostOperationKnowledgeGroup] [varchar](64) NOT NULL,
	[PostOperationKnowledgeText] [text] NULL,
	[Propounder] [varchar](32) NOT NULL,
	[ProposedTime] [datetime] NOT NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ModifyFlag] [int] NOT NULL,
	[Remarks] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[PostOperationKnowledgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[forecast_ProductionLineEnergyConsumptionReference]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionReference](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[January] [decimal](18, 2) NULL,
	[February] [decimal](18, 2) NULL,
	[March] [decimal](18, 2) NULL,
	[April] [decimal](18, 2) NULL,
	[May] [decimal](18, 2) NULL,
	[June] [decimal](18, 2) NULL,
	[July] [decimal](18, 2) NULL,
	[August] [decimal](18, 2) NULL,
	[September] [decimal](18, 2) NULL,
	[October] [decimal](18, 2) NULL,
	[November] [decimal](18, 2) NULL,
	[December] [decimal](18, 2) NULL,
	[Totals] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](256) NULL,
 CONSTRAINT [PK_forecast_ProductionLineEnergyConsumptionReference] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[forecast_ProductionLineEnergyConsumptionTemplate]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forecast_ProductionLineEnergyConsumptionTemplate](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nchar](50) NULL,
	[Type] [nchar](50) NOT NULL,
	[IdSort] [int] NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[IndicatorName] [nchar](50) NOT NULL,
	[January] [decimal](18, 2) NULL,
	[February] [decimal](18, 2) NULL,
	[March] [decimal](18, 2) NULL,
	[April] [decimal](18, 2) NULL,
	[May] [decimal](18, 2) NULL,
	[June] [decimal](18, 2) NULL,
	[July] [decimal](18, 2) NULL,
	[August] [decimal](18, 2) NULL,
	[September] [decimal](18, 2) NULL,
	[October] [decimal](18, 2) NULL,
	[November] [decimal](18, 2) NULL,
	[December] [decimal](18, 2) NULL,
	[Totals] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](256) NULL,
 CONSTRAINT [PK_forecast_ProductionLineEnergyConsumptionTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[formula_ConsumptionAlarmSetting]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formula_ConsumptionAlarmSetting](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[CoalAlarmValue] [decimal](8, 2) NULL,
	[RelativeParameters] [nvarchar](max) NULL,
 CONSTRAINT [PK_formula_ConsumptionAlarmSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[formula_FormulaDetail]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_FormulaDetail](
	[ID] [uniqueidentifier] NOT NULL,
	[VariableId] [nvarchar](64) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [nvarchar](50) NOT NULL,
	[LevelType] [varchar](64) NULL,
	[Name] [nvarchar](50) NULL,
	[SaveToHistory] [bit] NULL,
	[Formula] [nvarchar](400) NULL,
	[Denominator] [nvarchar](max) NULL,
	[CoalDustConsumption] [nvarchar](50) NULL,
	[Required] [bit] NULL,
	[AlarmType] [int] NULL,
	[EnergyAlarmValue] [decimal](8, 2) NULL,
	[PowerAlarmValue] [decimal](8, 2) NULL,
	[CoalDustConsumptionAlarm] [decimal](8, 2) NULL,
	[RelativeParameters] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Visible] [bit] NULL,
 CONSTRAINT [PK_formula_FormulaDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[formula_Log]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formula_Log](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_formula_Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[formula_LogicFormulaDetail]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_LogicFormulaDetail](
	[FormulaItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ResultValueId] [varchar](64) NULL,
	[Formula] [nvarchar](400) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_formula_LogicFormulaDetail] PRIMARY KEY CLUSTERED 
(
	[FormulaItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[formula_power]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formula_power](
	[id_seed] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[LevelCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[PowerValue] [decimal](8, 2) NULL,
	[vDate] [datetime] NULL,
	[Flag_Availability] [int] NULL,
 CONSTRAINT [PK_formula_power] PRIMARY KEY CLUSTERED 
(
	[id_seed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[material_MaterialChangeContrast]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material_MaterialChangeContrast](
	[ContrastID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[VariableType] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[MaterialColumn] [varchar](64) NOT NULL,
	[EventColumn] [varchar](64) NOT NULL,
	[ErpCode] [varchar](64) NULL,
	[EventDataBaseName] [varchar](64) NOT NULL,
	[EventDataTableName] [varchar](64) NOT NULL,
	[MaterialDataBaseName] [varchar](64) NOT NULL,
	[MaterialDataTableName] [varchar](64) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_material_MaterialChangeContrast] PRIMARY KEY CLUSTERED 
(
	[ContrastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[material_MaterialChangeLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material_MaterialChangeLog](
	[MaterialChangeID] [uniqueidentifier] NOT NULL,
	[ContrastID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableType] [varchar](64) NOT NULL,
	[ValueType] [varchar](64) NOT NULL,
	[MaterialValue] [varchar](64) NOT NULL,
	[EventValue] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ChangeStartTime] [datetime] NOT NULL,
	[ChangeEndTime] [datetime] NULL,
	[ErpCode] [varchar](64) NULL,
 CONSTRAINT [PK_material_MaterialChangeLog] PRIMARY KEY CLUSTERED 
(
	[MaterialChangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[material_MaterialDetail]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[net_DataCollectionNet]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[net_DataCollectionNet](
	[NodeId] [varchar](128) NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[NodeName] [varchar](64) NOT NULL,
	[ParentNodeId] [varchar](128) NULL,
	[NodeType] [varchar](64) NOT NULL,
	[SwitchModels] [varchar](64) NULL,
	[IpAddress] [varchar](64) NULL,
	[RealtimeDataTable] [varchar](256) NULL,
 CONSTRAINT [PK_net_DataCollectionNet] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[performance_EnergyRatingTemplate]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[performance_EnergyRatingTemplate](
	[PerformanceItemId] [varchar](64) NOT NULL,
	[PerformanceName] [varchar](64) NOT NULL,
	[PerformanceType] [varchar](64) NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[CalculateMethod] [varchar](32) NOT NULL,
	[ElectricityQuantityField] [varchar](64) NOT NULL,
	[OutputQuantityField] [varchar](64) NOT NULL,
	[PlanValue] [decimal](18, 4) NOT NULL,
	[CompleteValue] [decimal](18, 4) NOT NULL,
	[GradeValueI] [decimal](18, 4) NOT NULL,
	[GradeValueII] [decimal](18, 4) NOT NULL,
	[GradeValueIII] [decimal](18, 4) NOT NULL,
	[ScoreI] [int] NOT NULL,
	[ScoreII] [int] NOT NULL,
	[ScoreIII] [int] NOT NULL,
	[ActualScore] [int] NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
 CONSTRAINT [PK_performance_EnergyRatingTemplate] PRIMARY KEY CLUSTERED 
(
	[PerformanceItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plan_EnergyConsumptionPlan_Template]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_EnergyConsumptionPlan_Template](
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[DisplayIndex] [int] NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[PlanType] [varchar](32) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[ValueType] [varchar](32) NOT NULL,
	[CaculateType] [varchar](32) NOT NULL,
	[Denominator] [varchar](64) NULL,
 CONSTRAINT [PK_plan_EnergyConsumptionYearlyPlan_Template] PRIMARY KEY CLUSTERED 
(
	[QuotasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plan_EnergyConsumptionYearlyPlan]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_EnergyConsumptionYearlyPlan](
	[QuotasItemID] [uniqueidentifier] NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NULL,
	[DisplayIndex] [int] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[ProductionLineType] [varchar](32) NULL,
	[January] [decimal](18, 2) NULL,
	[February] [decimal](18, 2) NULL,
	[March] [decimal](18, 2) NULL,
	[April] [decimal](18, 2) NULL,
	[May] [decimal](18, 2) NULL,
	[June] [decimal](18, 2) NULL,
	[July] [decimal](18, 2) NULL,
	[August] [decimal](18, 2) NULL,
	[September] [decimal](18, 2) NULL,
	[October] [decimal](18, 2) NULL,
	[November] [decimal](18, 2) NULL,
	[December] [decimal](18, 2) NULL,
	[Totals] [decimal](18, 2) NULL,
	[Remarks] [varchar](256) NULL,
 CONSTRAINT [PK_plan_EnergyConsumptionYearlyPlan] PRIMARY KEY CLUSTERED 
(
	[QuotasItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plan_ProductionPlan_Template]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_ProductionPlan_Template](
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[DisplayIndex] [int] NOT NULL,
	[Type] [varchar](32) NOT NULL,
	[EquipmentCommonId] [varchar](32) NOT NULL,
	[VariableId] [varchar](64) NULL,
	[CaculateType] [varchar](32) NOT NULL,
 CONSTRAINT [PK_plan_ProductionPlan_Template] PRIMARY KEY CLUSTERED 
(
	[QuotasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plan_ProductionYearlyPlan]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plan_ProductionYearlyPlan](
	[QuotasItemID] [uniqueidentifier] NOT NULL,
	[QuotasID] [varchar](64) NOT NULL,
	[QuotasName] [varchar](64) NULL,
	[EquipmentId] [varchar](64) NOT NULL,
	[DisplayIndex] [int] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[January] [decimal](18, 2) NULL,
	[February] [decimal](18, 2) NULL,
	[March] [decimal](18, 2) NULL,
	[April] [decimal](18, 2) NULL,
	[May] [decimal](18, 2) NULL,
	[June] [decimal](18, 2) NULL,
	[July] [decimal](18, 2) NULL,
	[August] [decimal](18, 2) NULL,
	[September] [decimal](18, 2) NULL,
	[October] [decimal](18, 2) NULL,
	[November] [decimal](18, 2) NULL,
	[December] [decimal](18, 2) NULL,
	[Totals] [decimal](18, 2) NULL,
	[Remarks] [varchar](256) NULL,
 CONSTRAINT [PK_plan_ProductionYearlyPlan] PRIMARY KEY CLUSTERED 
(
	[QuotasItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RealtimeIncrementCumulant]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RealtimeIncrementCumulant](
	[ItemId] [uniqueidentifier] NOT NULL,
	[UpdateDateTime] [datetime] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableId] [varchar](64) NOT NULL,
	[Type] [varchar](64) NOT NULL,
	[CumulantClass] [decimal](18, 4) NULL,
	[CumulantLastClass] [decimal](18, 4) NULL,
	[CumulantDay] [decimal](18, 4) NULL,
 CONSTRAINT [PK_RealtimeIncrementCumulant] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementMilEnergyConsumption_TargetCompletion]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Monthly_Target] [bigint] NULL,
	[Today_Completion] [bigint] NULL,
	[Monthly_Accumulative] [bigint] NULL,
	[Monthly_Gap] [bigint] NULL,
	[Yearly_Target] [bigint] NULL,
	[Yearly_Accumulative] [bigint] NULL,
	[Yearly_Gap] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementMillProductionLineEnergyConsumptionSchedule]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementMillProductionLineEnergyConsumptionSchedule](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[IndicatorName] [char](30) NULL,
	[January] [bigint] NULL,
	[February] [bigint] NULL,
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,
	[Remarks] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementMilMonthlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilMonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Electricity_Cement] [bigint] NULL,
	[First_Electricity_CementGrinding] [bigint] NULL,
	[First_Electricity_AdmixturePreparation] [bigint] NULL,
	[First_Electricity_BagsBulk] [bigint] NULL,
	[First_Output_Cement] [bigint] NULL,
	[First_Output_BagsBulk] [bigint] NULL,
	[First_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[First_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Electricity_Cement] [bigint] NULL,
	[Second_Electricity_CementGrinding] [bigint] NULL,
	[Second_Electricity_AdmixturePreparation] [bigint] NULL,
	[Second_Electricity_BagsBulk] [bigint] NULL,
	[Second_Output_Cement] [bigint] NULL,
	[Second_Output_BagsBulk] [bigint] NULL,
	[Second_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Second_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Electricity_Cement] [bigint] NULL,
	[Third_Electricity_CementGrinding] [bigint] NULL,
	[Third_Electricity_AdmixturePreparation] [bigint] NULL,
	[Third_Electricity_BagsBulk] [bigint] NULL,
	[Third_Output_Cement] [bigint] NULL,
	[Third_Output_BagsBulk] [bigint] NULL,
	[Third_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Third_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_Cement] [bigint] NULL,
	[Amountto_Electricity_CementGrinding] [bigint] NULL,
	[Amountto_Electricity_AdmixturePreparation] [bigint] NULL,
	[Amountto_Electricity_BagsBulk] [bigint] NULL,
	[Amountto_Output_Cement] [bigint] NULL,
	[Amountto_Output_BagsBulk] [bigint] NULL,
	[Amountto_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Peak_Electricity] [bigint] NULL,
	[Amountto_Valley_Electricity] [bigint] NULL,
	[Amountto_Flat_Electricity] [bigint] NULL,
	[Amountto_Sum_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_CementMilYearlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CementMilYearlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[Electricity_Cement_Monthly] [bigint] NULL,
	[Electricity_Cement_Accumulative] [bigint] NULL,
	[Electricity_CementGrinding_Monthly] [bigint] NULL,
	[Electricity_CementGrinding_Accumulative] [bigint] NULL,
	[Electricity_AdmixturePreparation_Monthly] [bigint] NULL,
	[Electricity_AdmixturePreparation_Accumulative] [bigint] NULL,
	[Electricity_BagsBulk_Monthly] [bigint] NULL,
	[Electricity_BagsBulk_Accumulative] [bigint] NULL,
	[Output_Cement_Monthly] [bigint] NULL,
	[Output_Cement_Accumulative] [bigint] NULL,
	[Output_BagsBulk_Monthly] [bigint] NULL,
	[Output_BagsBulk_Accumulative] [bigint] NULL,
	[ElectricityConsumption_Cement_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Cement_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_CementGrinding_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_CementGrinding_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_BagsBulk_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_BagsBulk_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_CementMonthlyElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementMonthlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [float] NULL,
	[First_Output] [bigint] NULL,
	[First_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Convert_ElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementStatistics]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[LevelCode] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[VariableId] [nvarchar](64) NULL,
	[MaterialId] [nvarchar](64) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_report_CementStatistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementStatisticsNodeMaintenance]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementStatisticsNodeMaintenance](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[BindField] [varchar](64) NULL,
	[ParentVariableId] [varchar](64) NULL,
	[VariableId] [varchar](64) NULL,
	[Name] [nvarchar](32) NULL,
	[RowSpan] [int] NULL,
	[DIsplayed] [bit] NULL,
 CONSTRAINT [PK_report_CementStatisticsNodeMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementYearlyElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementYearlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[Output_Monthly] [bigint] NULL,
	[Output_Accumulative] [bigint] NULL,
	[Electricity_Monthly] [bigint] NULL,
	[Electricity_Accumulative] [bigint] NULL,
	[ElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Accumulative] [decimal](8, 2) NULL,
	[Convert_ElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[Convert_ElectricityConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[vDate] [char](10) NULL,
	[ElectricityConsumption] [bigint] NULL,
	[Clinker_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[CementProductionSum] [bigint] NULL,
	[ClinkerConsumptionSum] [bigint] NULL,
	[ClinkerMatching] [decimal](8, 2) NULL,
	[CementIntensity] [decimal](8, 1) NULL,
	[CementIntensityCorrectionFactor] [decimal](8, 4) NULL,
	[DistributionPowerConsumption] [decimal](8, 1) NULL,
	[Cement_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Cement_ComparableComprehensiveEnergyConsumption] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerEnergyConsumption_TargetCompletion]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerEnergyConsumption_TargetCompletion](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Monthly_Target] [bigint] NULL,
	[Today_Completion] [bigint] NULL,
	[Monthly_Accumulative] [bigint] NULL,
	[Monthly_Gap] [bigint] NULL,
	[Yearly_Target] [bigint] NULL,
	[Yearly_Accumulative] [bigint] NULL,
	[Yearly_Gap] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyCoalDustConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Clinker_Output] [bigint] NULL,
	[First_KilnHead_CoalDust] [bigint] NULL,
	[First_KilnTail_CoalDust] [bigint] NULL,
	[First_sum_CoalDust] [bigint] NULL,
	[First_CoalDustConsumption] [decimal](8, 2) NULL,
	[Second_Clinker_Output] [bigint] NULL,
	[Second_KilnHead_CoalDust] [bigint] NULL,
	[Second_KilnTail_CoalDust] [bigint] NULL,
	[Second_sum_CoalDust] [bigint] NULL,
	[Second_CoalDustConsumption] [decimal](8, 2) NULL,
	[Third_Clinker_Output] [bigint] NULL,
	[Third_KilnHead_CoalDust] [bigint] NULL,
	[Third_KilnTail_CoalDust] [bigint] NULL,
	[Third_sum_CoalDust] [bigint] NULL,
	[Third_CoalDustConsumption] [decimal](8, 2) NULL,
	[Amountto_Clinker_Output] [bigint] NULL,
	[Amountto_KilnHead_CoalDust] [bigint] NULL,
	[Amountto_KilnTail_CoalDust] [bigint] NULL,
	[Amountto_sum_CoalDust] [bigint] NULL,
	[Amountto_CoalDustConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_RawBatch_Output] [bigint] NULL,
	[First_Clinker_Output] [bigint] NULL,
	[First_CoalDust_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_RawBatch_Output] [bigint] NULL,
	[Second_Clinker_Output] [bigint] NULL,
	[Second_CoalDust_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_RawBatch_Output] [bigint] NULL,
	[Third_Clinker_Output] [bigint] NULL,
	[Third_CoalDust_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_RawBatch_Output] [decimal](18, 4) NULL,
	[Amountto_Clinker_Output] [decimal](18, 4) NULL,
	[Amountto_CoalDust_Output] [decimal](18, 4) NULL,
	[Amountto_Peak_Electricity] [decimal](18, 4) NULL,
	[Amountto_Valley_Electricity] [decimal](18, 4) NULL,
	[Amountto_Flat_Electricity] [decimal](18, 4) NULL,
	[Amountto_Sum_Electricity] [decimal](18, 4) NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_ClinkerMonthlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Electricity_RawBatch] [bigint] NULL,
	[First_Electricity_RawBatchGrinding] [bigint] NULL,
	[First_Electricity_Clinker] [bigint] NULL,
	[First_Electricity_CoalDust] [bigint] NULL,
	[First_Consumption_CoalDust] [bigint] NULL,
	[First_Output_RawBatch] [bigint] NULL,
	[First_Output_Clinker] [bigint] NULL,
	[First_Output_CoalDust] [bigint] NULL,
	[First_Output_Cogeneration] [bigint] NULL,
	[First_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[First_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[First_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[First_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Second_Electricity_RawBatch] [bigint] NULL,
	[Second_Electricity_RawBatchGrinding] [bigint] NULL,
	[Second_Electricity_Clinker] [bigint] NULL,
	[Second_Electricity_CoalDust] [bigint] NULL,
	[Second_Consumption_CoalDust] [bigint] NULL,
	[Second_Output_RawBatch] [bigint] NULL,
	[Second_Output_Clinker] [bigint] NULL,
	[Second_Output_CoalDust] [bigint] NULL,
	[Second_Output_Cogeneration] [bigint] NULL,
	[Second_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Second_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Second_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Second_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Third_Electricity_RawBatch] [bigint] NULL,
	[Third_Electricity_RawBatchGrinding] [bigint] NULL,
	[Third_Electricity_Clinker] [bigint] NULL,
	[Third_Electricity_CoalDust] [bigint] NULL,
	[Third_Consumption_CoalDust] [bigint] NULL,
	[Third_Output_RawBatch] [bigint] NULL,
	[Third_Output_Clinker] [bigint] NULL,
	[Third_Output_CoalDust] [bigint] NULL,
	[Third_Output_Cogeneration] [bigint] NULL,
	[Third_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Third_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Third_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Third_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_RawBatch] [bigint] NULL,
	[Amountto_Electricity_RawBatchGrinding] [bigint] NULL,
	[Amountto_Electricity_Clinker] [bigint] NULL,
	[Amountto_Electricity_CoalDust] [bigint] NULL,
	[Amountto_Consumption_CoalDust] [bigint] NULL,
	[Amountto_Output_RawBatch] [bigint] NULL,
	[Amountto_Output_Clinker] [bigint] NULL,
	[Amountto_Output_CoalDust] [bigint] NULL,
	[Amountto_Output_Cogeneration] [bigint] NULL,
	[Amountto_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveCoalConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[IndicatorName] [char](30) NULL,
	[January] [bigint] NULL,
	[February] [bigint] NULL,
	[March] [bigint] NULL,
	[April] [bigint] NULL,
	[May] [bigint] NULL,
	[June] [bigint] NULL,
	[July] [bigint] NULL,
	[August] [bigint] NULL,
	[September] [bigint] NULL,
	[October] [bigint] NULL,
	[November] [bigint] NULL,
	[December] [bigint] NULL,
	[Annual] [bigint] NULL,
	[Remarks] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerStatistics]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerStatistics](
	[ID] [uniqueidentifier] NOT NULL,
	[LevelCode] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[VariableId] [nvarchar](64) NULL,
	[MaterialId] [nvarchar](64) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_report_ClinkerStatistics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerStatisticsNodeMaintenance]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[BindField] [varchar](64) NULL,
	[ParentVariableId] [varchar](64) NULL,
	[VariableId] [varchar](64) NULL,
	[Name] [nvarchar](32) NULL,
	[RowSpan] [int] NULL,
	[DIsplayed] [bit] NULL,
 CONSTRAINT [PK_report_NodeMaintenance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[vDate] [char](10) NULL,
	[ElectricityConsumption] [bigint] NULL,
	[CoalDust] [bigint] NULL,
	[Qnet] [bigint] NULL,
	[Diesel] [decimal](8, 2) NULL,
	[CogenerationSupply] [bigint] NULL,
	[CogenerationProduction] [bigint] NULL,
	[CogenerationSelfUse] [bigint] NULL,
	[ClinkerOutput] [bigint] NULL,
	[ClinkerIntensity] [decimal](8, 1) NULL,
	[ClinkerIntensityCorrectionFactor] [decimal](8, 4) NULL,
	[Clinker_ComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveElectricityConsumption] [decimal](8, 1) NULL,
	[Clinker_CoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_ComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveCoalDustConsumption] [decimal](8, 1) NULL,
	[Clinker_DieselConsumption] [decimal](8, 3) NULL,
	[CogenerationSupplyCorrection] [decimal](8, 1) NULL,
	[Clinker_ComprehensiveEnergyConsumption] [decimal](8, 1) NULL,
	[Clinker_ComparableComprehensiveEnergyConsumption] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_ClinkerYearlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[Electricity_RawBatch_Monthly] [bigint] NULL,
	[Electricity_RawBatch_Accumulative] [bigint] NULL,
	[Electricity_RawBatchMil_Monthly] [bigint] NULL,
	[Electricity_RawBatchMil_Accumulative] [bigint] NULL,
	[Electricity_Clinker_Monthly] [bigint] NULL,
	[Electricity_Clinker_Accumulative] [bigint] NULL,
	[Electricity_CoalDust_Monthly] [bigint] NULL,
	[Electricity_CoalDust_Accumulative] [bigint] NULL,
	[Consumption_CoalDust_Monthly] [bigint] NULL,
	[Consumption_CoalDust_Accumulative] [bigint] NULL,
	[Output_RawBatch_Monthly] [bigint] NULL,
	[Output_RawBatch_Accumulative] [bigint] NULL,
	[Output_Clinker_Monthly] [bigint] NULL,
	[Output_Clinker_Accumulative] [bigint] NULL,
	[Output_CoalDust_Monthly] [bigint] NULL,
	[Output_CoalDust_Accumulative] [bigint] NULL,
	[Output_Cogeneration_Monthly] [bigint] NULL,
	[Output_Cogeneration_Accumulative] [bigint] NULL,
	[ElectricityConsumption_RawBatch_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatch_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatchMill_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_RawBatchMill_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker_Accumulative] [decimal](8, 2) NULL,
	[ElectricityConsumption_CoalDust_Monthly] [decimal](8, 2) NULL,
	[ElectricityConsumption_CoalDust_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption_Accumulative] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption_Monthly] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption_Accumulative] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_CoalMilMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_CoalMilMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Peak_Electricity] [bigint] NULL,
	[Amountto_Valley_Electricity] [bigint] NULL,
	[Amountto_Flat_Electricity] [bigint] NULL,
	[Amountto_Sum_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_MonthlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_MonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Electricity_RawBatch] [decimal](18, 4) NULL,
	[Electricity_Clinker] [decimal](18, 4) NULL,
	[Electricity_Cement] [decimal](18, 4) NULL,
	[Consumption_CoalDust] [decimal](18, 4) NULL,
	[Output_RawBatch] [decimal](18, 4) NULL,
	[Output_Clinker] [decimal](18, 4) NULL,
	[Output_Cement] [decimal](18, 4) NULL,
	[Output_Cogeneration] [decimal](18, 4) NULL,
	[ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[ComprehensiveElectricityOutput] [decimal](8, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_RawBatchMilMonthlyPeakerValleyFlatElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_RawBatchMilMonthlyPeakerValleyFlatElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[First_Output] [bigint] NULL,
	[First_Peak_Electricity] [bigint] NULL,
	[First_Valley_Electricity] [bigint] NULL,
	[First_Flat_Electricity] [bigint] NULL,
	[First_Sum_Electricity] [bigint] NULL,
	[First_ElectricityConsumption] [decimal](8, 2) NULL,
	[First_Cost] [decimal](8, 2) NULL,
	[Second_Output] [bigint] NULL,
	[Second_Peak_Electricity] [bigint] NULL,
	[Second_Valley_Electricity] [bigint] NULL,
	[Second_Flat_Electricity] [bigint] NULL,
	[Second_Sum_Electricity] [bigint] NULL,
	[Second_ElectricityConsumption] [decimal](8, 2) NULL,
	[Second_Cost] [decimal](8, 2) NULL,
	[Third_Output] [bigint] NULL,
	[Third_Peak_Electricity] [bigint] NULL,
	[Third_Valley_Electricity] [bigint] NULL,
	[Third_Flat_Electricity] [bigint] NULL,
	[Third_Sum_Electricity] [bigint] NULL,
	[Third_ElectricityConsumption] [decimal](8, 2) NULL,
	[Third_Cost] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Peak_Electricity] [bigint] NULL,
	[Amountto_Valley_Electricity] [bigint] NULL,
	[Amountto_Flat_Electricity] [bigint] NULL,
	[Amountto_Sum_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Cost] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_TeamCementClassificationMonthlyElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_TeamCementClassificationMonthlyElectricityConsumption](
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[TeamA_Output] [bigint] NULL,
	[TeamA_Electricity] [bigint] NULL,
	[TeamA_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamA_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Output] [bigint] NULL,
	[TeamB_Electricity] [bigint] NULL,
	[TeamB_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Output] [bigint] NULL,
	[TeamC_Electricity] [bigint] NULL,
	[TeamC_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Output] [bigint] NULL,
	[TeamD_Electricity] [bigint] NULL,
	[TeamD_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Convert_ElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_TeamCementClassificationYearlyElectricityConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_TeamCementClassificationYearlyElectricityConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[TeamA_Output] [bigint] NULL,
	[TeamA_Electricity] [bigint] NULL,
	[TeamA_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamA_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Output] [bigint] NULL,
	[TeamB_Electricity] [bigint] NULL,
	[TeamB_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Output] [bigint] NULL,
	[TeamC_Electricity] [bigint] NULL,
	[TeamC_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Output] [bigint] NULL,
	[TeamD_Electricity] [bigint] NULL,
	[TeamD_ElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Convert_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Output] [bigint] NULL,
	[Amountto_Electricity] [bigint] NULL,
	[Amountto_ElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Convert_ElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[report_TeamCementMonthlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[TeamA_Electricity_Cement] [bigint] NULL,
	[TeamA_Electricity_CementGrinding] [bigint] NULL,
	[TeamA_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamA_Electricity_BagsBulk] [bigint] NULL,
	[TeamA_Output_Cement] [bigint] NULL,
	[TeamA_Output_BagsBulk] [bigint] NULL,
	[TeamA_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamA_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Electricity_Cement] [bigint] NULL,
	[TeamB_Electricity_CementGrinding] [bigint] NULL,
	[TeamB_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamB_Electricity_BagsBulk] [bigint] NULL,
	[TeamB_Output_Cement] [bigint] NULL,
	[TeamB_Output_BagsBulk] [bigint] NULL,
	[TeamB_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamB_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Electricity_Cement] [bigint] NULL,
	[TeamC_Electricity_CementGrinding] [bigint] NULL,
	[TeamC_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamC_Electricity_BagsBulk] [bigint] NULL,
	[TeamC_Output_Cement] [bigint] NULL,
	[TeamC_Output_BagsBulk] [bigint] NULL,
	[TeamC_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamC_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Electricity_Cement] [bigint] NULL,
	[TeamD_Electricity_CementGrinding] [bigint] NULL,
	[TeamD_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamD_Electricity_BagsBulk] [bigint] NULL,
	[TeamD_Output_Cement] [bigint] NULL,
	[TeamD_Output_BagsBulk] [bigint] NULL,
	[TeamD_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamD_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_Cement] [bigint] NULL,
	[Amountto_Electricity_CementGrinding] [bigint] NULL,
	[Amountto_Electricity_AdmixturePreparation] [bigint] NULL,
	[Amountto_Electricity_BagsBulk] [bigint] NULL,
	[Amountto_Output_Cement] [bigint] NULL,
	[Amountto_Output_BagsBulk] [bigint] NULL,
	[Amountto_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_TeamCementYearlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_TeamCementYearlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[TeamA_Electricity_Cement] [bigint] NULL,
	[TeamA_Electricity_CementGrinding] [bigint] NULL,
	[TeamA_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamA_Electricity_BagsBulk] [bigint] NULL,
	[TeamA_Output_Cement] [bigint] NULL,
	[TeamA_Output_BagsBulk] [bigint] NULL,
	[TeamA_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamA_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_Electricity_Cement] [bigint] NULL,
	[TeamB_Electricity_CementGrinding] [bigint] NULL,
	[TeamB_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamB_Electricity_BagsBulk] [bigint] NULL,
	[TeamB_Output_Cement] [bigint] NULL,
	[TeamB_Output_BagsBulk] [bigint] NULL,
	[TeamB_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamB_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_Electricity_Cement] [bigint] NULL,
	[TeamC_Electricity_CementGrinding] [bigint] NULL,
	[TeamC_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamC_Electricity_BagsBulk] [bigint] NULL,
	[TeamC_Output_Cement] [bigint] NULL,
	[TeamC_Output_BagsBulk] [bigint] NULL,
	[TeamC_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamC_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_Electricity_Cement] [bigint] NULL,
	[TeamD_Electricity_CementGrinding] [bigint] NULL,
	[TeamD_Electricity_AdmixturePreparation] [bigint] NULL,
	[TeamD_Electricity_BagsBulk] [bigint] NULL,
	[TeamD_Output_Cement] [bigint] NULL,
	[TeamD_Output_BagsBulk] [bigint] NULL,
	[TeamD_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[TeamD_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_Cement] [bigint] NULL,
	[Amountto_Electricity_CementGrinding] [bigint] NULL,
	[Amountto_Electricity_AdmixturePreparation] [bigint] NULL,
	[Amountto_Electricity_BagsBulk] [bigint] NULL,
	[Amountto_Output_Cement] [bigint] NULL,
	[Amountto_Output_BagsBulk] [bigint] NULL,
	[Amountto_ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CementGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_BagsBulk] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_TeamClinkerMonthlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_TeamClinkerMonthlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[TeamA_Electricity_RawBatch] [bigint] NULL,
	[TeamA_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamA_Electricity_Clinker] [bigint] NULL,
	[TeamA_Electricity_CoalDust] [bigint] NULL,
	[TeamA_Consumption_CoalDust] [bigint] NULL,
	[TeamA_Output_RawBatch] [bigint] NULL,
	[TeamA_Output_Clinker] [bigint] NULL,
	[TeamA_Output_CoalDust] [bigint] NULL,
	[TeamA_Output_Cogeneration] [bigint] NULL,
	[TeamA_ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,
	[TeamA_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL,
	[TeamA_ElectricityConsumption_Clinker] [decimal](18, 4) NULL,
	[TeamA_ElectricityConsumption_CoalDust] [decimal](18, 4) NULL,
	[TeamA_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[TeamA_ComprehensiveCoalConsumption] [decimal](18, 4) NULL,
	[TeamB_Electricity_RawBatch] [bigint] NULL,
	[TeamB_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamB_Electricity_Clinker] [bigint] NULL,
	[TeamB_Electricity_CoalDust] [bigint] NULL,
	[TeamB_Consumption_CoalDust] [bigint] NULL,
	[TeamB_Output_RawBatch] [bigint] NULL,
	[TeamB_Output_Clinker] [bigint] NULL,
	[TeamB_Output_CoalDust] [bigint] NULL,
	[TeamB_Output_Cogeneration] [bigint] NULL,
	[TeamB_ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,
	[TeamB_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL,
	[TeamB_ElectricityConsumption_Clinker] [decimal](18, 4) NULL,
	[TeamB_ElectricityConsumption_CoalDust] [decimal](18, 4) NULL,
	[TeamB_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[TeamB_ComprehensiveCoalConsumption] [decimal](18, 4) NULL,
	[TeamC_Electricity_RawBatch] [bigint] NULL,
	[TeamC_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamC_Electricity_Clinker] [bigint] NULL,
	[TeamC_Electricity_CoalDust] [bigint] NULL,
	[TeamC_Consumption_CoalDust] [bigint] NULL,
	[TeamC_Output_RawBatch] [bigint] NULL,
	[TeamC_Output_Clinker] [bigint] NULL,
	[TeamC_Output_CoalDust] [bigint] NULL,
	[TeamC_Output_Cogeneration] [bigint] NULL,
	[TeamC_ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,
	[TeamC_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL,
	[TeamC_ElectricityConsumption_Clinker] [decimal](18, 4) NULL,
	[TeamC_ElectricityConsumption_CoalDust] [decimal](18, 4) NULL,
	[TeamC_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[TeamC_ComprehensiveCoalConsumption] [decimal](18, 4) NULL,
	[TeamD_Electricity_RawBatch] [bigint] NULL,
	[TeamD_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamD_Electricity_Clinker] [bigint] NULL,
	[TeamD_Electricity_CoalDust] [bigint] NULL,
	[TeamD_Consumption_CoalDust] [bigint] NULL,
	[TeamD_Output_RawBatch] [bigint] NULL,
	[TeamD_Output_Clinker] [bigint] NULL,
	[TeamD_Output_CoalDust] [bigint] NULL,
	[TeamD_Output_Cogeneration] [bigint] NULL,
	[TeamD_ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,
	[TeamD_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL,
	[TeamD_ElectricityConsumption_Clinker] [decimal](18, 4) NULL,
	[TeamD_ElectricityConsumption_CoalDust] [decimal](18, 4) NULL,
	[TeamD_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[TeamD_ComprehensiveCoalConsumption] [decimal](18, 4) NULL,
	[Amountto_Electricity_RawBatch] [bigint] NULL,
	[Amountto_Electricity_RawBatchGrinding] [bigint] NULL,
	[Amountto_Electricity_Clinker] [bigint] NULL,
	[Amountto_Electricity_CoalDust] [bigint] NULL,
	[Amountto_Consumption_CoalDust] [bigint] NULL,
	[Amountto_Output_RawBatch] [bigint] NULL,
	[Amountto_Output_Clinker] [bigint] NULL,
	[Amountto_Output_CoalDust] [bigint] NULL,
	[Amountto_Output_Cogeneration] [bigint] NULL,
	[Amountto_ElectricityConsumption_RawBatch] [decimal](18, 4) NULL,
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](18, 4) NULL,
	[Amountto_ElectricityConsumption_Clinker] [decimal](18, 4) NULL,
	[Amountto_ElectricityConsumption_CoalDust] [decimal](18, 4) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](18, 4) NULL,
	[Amountto_ComprehensiveCoalConsumption] [decimal](18, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_TeamClinkerYearlyProcessEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_TeamClinkerYearlyProcessEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[TeamA_Electricity_RawBatch] [bigint] NULL,
	[TeamA_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamA_Electricity_Clinker] [bigint] NULL,
	[TeamA_Electricity_CoalDust] [bigint] NULL,
	[TeamA_Consumption_CoalDust] [bigint] NULL,
	[TeamA_Output_RawBatch] [bigint] NULL,
	[TeamA_Output_Clinker] [bigint] NULL,
	[TeamA_Output_CoalDust] [bigint] NULL,
	[TeamA_Output_Cogeneration] [bigint] NULL,
	[TeamA_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[TeamA_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[TeamA_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamA_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[TeamB_Electricity_RawBatch] [bigint] NULL,
	[TeamB_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamB_Electricity_Clinker] [bigint] NULL,
	[TeamB_Electricity_CoalDust] [bigint] NULL,
	[TeamB_Consumption_CoalDust] [bigint] NULL,
	[TeamB_Output_RawBatch] [bigint] NULL,
	[TeamB_Output_Clinker] [bigint] NULL,
	[TeamB_Output_CoalDust] [bigint] NULL,
	[TeamB_Output_Cogeneration] [bigint] NULL,
	[TeamB_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[TeamB_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[TeamB_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamB_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[TeamC_Electricity_RawBatch] [bigint] NULL,
	[TeamC_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamC_Electricity_Clinker] [bigint] NULL,
	[TeamC_Electricity_CoalDust] [bigint] NULL,
	[TeamC_Consumption_CoalDust] [bigint] NULL,
	[TeamC_Output_RawBatch] [bigint] NULL,
	[TeamC_Output_Clinker] [bigint] NULL,
	[TeamC_Output_CoalDust] [bigint] NULL,
	[TeamC_Output_Cogeneration] [bigint] NULL,
	[TeamC_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[TeamC_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[TeamC_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamC_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[TeamD_Electricity_RawBatch] [bigint] NULL,
	[TeamD_Electricity_RawBatchGrinding] [bigint] NULL,
	[TeamD_Electricity_Clinker] [bigint] NULL,
	[TeamD_Electricity_CoalDust] [bigint] NULL,
	[TeamD_Consumption_CoalDust] [bigint] NULL,
	[TeamD_Output_RawBatch] [bigint] NULL,
	[TeamD_Output_Clinker] [bigint] NULL,
	[TeamD_Output_CoalDust] [bigint] NULL,
	[TeamD_Output_Cogeneration] [bigint] NULL,
	[TeamD_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[TeamD_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[TeamD_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[TeamD_ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[Amountto_Electricity_RawBatch] [bigint] NULL,
	[Amountto_Electricity_RawBatchGrinding] [bigint] NULL,
	[Amountto_Electricity_Clinker] [bigint] NULL,
	[Amountto_Electricity_CoalDust] [bigint] NULL,
	[Amountto_Consumption_CoalDust] [bigint] NULL,
	[Amountto_Output_RawBatch] [bigint] NULL,
	[Amountto_Output_Clinker] [bigint] NULL,
	[Amountto_Output_CoalDust] [bigint] NULL,
	[Amountto_Output_Cogeneration] [bigint] NULL,
	[Amountto_ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_RawBatchGrinding] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[Amountto_ElectricityConsumption_CoalDust] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[Amountto_ComprehensiveCoalConsumption] [decimal](8, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[report_YearlyEnergyConsumption]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[report_YearlyEnergyConsumption](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[Name] [varchar](max) NULL,
	[Electricity_RawBatch] [bigint] NULL,
	[Electricity_Clinker] [bigint] NULL,
	[Electricity_Cement] [bigint] NULL,
	[Consumption_CoalDust] [bigint] NULL,
	[Output_RawBatch] [bigint] NULL,
	[Output_Clinker] [bigint] NULL,
	[Output_Cement] [bigint] NULL,
	[Output_Cogeneration] [bigint] NULL,
	[ElectricityConsumption_RawBatch] [decimal](8, 2) NULL,
	[ElectricityConsumption_Clinker] [decimal](8, 2) NULL,
	[ElectricityConsumption_Cement] [decimal](8, 2) NULL,
	[ComprehensiveElectricityConsumption] [decimal](8, 2) NULL,
	[ComprehensiveCoalConsumption] [decimal](8, 2) NULL,
	[ComprehensiveElectricityOutput] [decimal](8, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_CenterControlRecord]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_CenterControlRecord](
	[KeyID] [uniqueidentifier] NOT NULL,
	[ProductionPrcessId] [varchar](64) NULL,
	[ProductionPrcessName] [varchar](64) NULL,
	[RecordType] [int] NULL,
	[RecordName] [varchar](20) NULL,
	[OrganizationID] [varchar](64) NULL,
	[DatabaseID] [varchar](64) NULL,
	[TemplateUrl] [varchar](128) NULL,
	[DisplayIndex] [int] NULL,
 CONSTRAINT [PK_shift_CenterControlRecord] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_CenterControlRecordItems]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_CenterControlRecordItems](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyId] [uniqueidentifier] NULL,
	[ContrastID] [varchar](64) NULL,
	[DataType] [int] NULL,
	[DisplayIndex] [int] NULL,
	[DCSTableName] [char](30) NULL,
	[Enabled] [bit] NULL,
 CONSTRAINT [PK_shift_CenterControlRecordItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_DCSWarningLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_DCSWarningLog](
	[DCSWarningLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[Label] [nvarchar](30) NULL,
	[StartingTime] [datetime] NULL,
	[EndingTime] [datetime] NULL,
	[Message] [nvarchar](50) NULL,
	[HandleInformation] [nvarchar](200) NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_shift_DCSWarningLog] PRIMARY KEY CLUSTERED 
(
	[DCSWarningLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_DispatchingLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_DispatchingLog](
	[DispatchingLogItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[DispatchingDate] [varchar](32) NOT NULL,
	[DispatchtingText] [ntext] NULL,
	[Creator] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_shift_DispatchingLog] PRIMARY KEY CLUSTERED 
(
	[DispatchingLogItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_EnergyConsumptionAlarmLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_EnergyConsumptionAlarmLog](
	[EnergyConsumptionAlarmLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[EnergyConsumptionType] [nchar](4) NULL,
	[StartTime] [datetime] NULL,
	[TimeSpan] [nvarchar](100) NULL,
	[LevelCode] [nchar](50) NULL,
	[Name] [nvarchar](20) NULL,
	[StandardValue] [decimal](18, 4) NULL,
	[ActualValue] [decimal](18, 4) NULL,
	[Superscale] [decimal](18, 4) NULL,
	[Reason] [nvarchar](200) NULL,
	[VariableID] [varchar](64) NULL,
 CONSTRAINT [PK_shift_EnergyConsumptionAlarmLog] PRIMARY KEY CLUSTERED 
(
	[EnergyConsumptionAlarmLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_MachineHaltLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_MachineHaltLog](
	[MachineHaltLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[EquipmentID] [uniqueidentifier] NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[Label] [nvarchar](30) NOT NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[StartTime] [datetime] NULL,
	[HaltTime] [datetime] NULL,
	[RecoverTime] [datetime] NULL,
	[ReasonID] [char](8) NULL,
	[ReasonText] [nvarchar](200) NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_shift_MachineHaltLog] PRIMARY KEY CLUSTERED 
(
	[MachineHaltLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_OperatorsLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_OperatorsLog](
	[OperatorsLogID] [uniqueidentifier] NOT NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingSectionID] [uniqueidentifier] NULL,
	[StaffID] [nvarchar](50) NULL,
 CONSTRAINT [PK_shift_OperatorsLog_1] PRIMARY KEY CLUSTERED 
(
	[OperatorsLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_SlaverHaltDelayAlarmLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_SlaverHaltDelayAlarmLog](
	[MachineHaltLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamShiftLogID] [uniqueidentifier] NULL,
	[Label] [nvarchar](30) NOT NULL,
	[EquipmentName] [nvarchar](50) NULL,
	[MasterLabel] [nvarchar](30) NOT NULL,
	[MasterEquipmentName] [nvarchar](50) NULL,
	[MasterHaltTime] [datetime] NULL,
	[WarmingTime] [datetime] NULL,
	[detail] [nvarchar](200) NULL,
	[ReasonText] [nvarchar](200) NULL,
	[KeyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift_SlaverHaltDelayAlarmLog] PRIMARY KEY CLUSTERED 
(
	[MachineHaltLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shift_WorkingTeamShiftLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[shift_WorkingTeamShiftLog](
	[WorkingTeamShiftLogID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[ShiftDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Shifts] [nchar](2) NULL,
	[WorkingTeam] [nchar](2) NULL,
	[ChargeManID] [nvarchar](50) NULL,
	[PerformToObjectives] [nvarchar](200) NULL,
	[ProblemsAndSettlements] [nvarchar](200) NULL,
	[EquipmentSituation] [nvarchar](200) NULL,
	[AdvicesToNextShift] [nvarchar](200) NULL,
 CONSTRAINT [PK_shift_WorkingTeamShiftLog] PRIMARY KEY CLUSTERED 
(
	[WorkingTeamShiftLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_AlarmCycle]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_AlarmCycle](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[CycleCode] [int] NULL,
	[TimeSpan] [int] NULL,
 CONSTRAINT [PK_system_AlarmCycle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_CementTypesAndConvertCoefficient]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_CementTypesAndConvertCoefficient](
	[ID] [uniqueidentifier] NOT NULL,
	[CementID] [int] NULL,
	[CementTypes] [char](30) NULL,
	[ConvertCoefficient] [decimal](6, 4) NULL,
	[Intensity] [decimal](8, 1) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_CementTypesAndConvertCoefficient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_CoalConsumptionAlarmParameterSetting]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_CoalConsumptionAlarmParameterSetting](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NULL,
	[Name] [char](20) NULL,
	[StandardValue] [decimal](18, 4) NULL,
	[AlarmValue] [decimal](18, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_CoalConsumptionAlarmParameterSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_Color]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Color](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationId] [varchar](64) NULL,
	[Color_HH] [varchar](16) NULL,
	[Color_H] [varchar](16) NULL,
	[Color_LL] [varchar](16) NULL,
	[Color_L] [varchar](16) NULL,
	[Color_BarBackground] [varchar](16) NULL,
	[Color_BarForeground] [varchar](16) NULL,
	[Color_MaxRangeAlarm] [varchar](16) NULL,
	[Color_MinRangeAlarm] [varchar](16) NULL,
 CONSTRAINT [PK_system_ALarmColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_Database]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[system_Database](
	[DatabaseID] [uniqueidentifier] NOT NULL,
	[ManagementDatabase] [varchar](max) NULL,
	[DCSProcessDatabase] [varchar](max) NULL,
	[MeterDatabase] [varchar](max) NULL,
 CONSTRAINT [PK_system_Database] PRIMARY KEY CLUSTERED 
(
	[DatabaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_DCSCumulantCoefficient]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_DCSCumulantCoefficient](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[CumulantName_Report] [char](30) NULL,
	[Description] [varchar](max) NULL,
	[Coefficient] [decimal](6, 4) NULL,
 CONSTRAINT [PK_system_DCSCumulantCoefficient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_ElectricityConsumptionAlarmParameterSetting]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ElectricityConsumptionAlarmParameterSetting](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[Name] [char](100) NULL,
	[StandardValue] [decimal](18, 4) NULL,
	[AlarmValue] [decimal](18, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_ElectricityConsumptionAlarmParameterSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_EnergyConversionConversionCoefficient]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EnergyConversionConversionCoefficient](
	[ID] [uniqueidentifier] NOT NULL,
	[Energy] [char](20) NULL,
	[Qnet] [int] NULL,
	[ConversionCoefficient] [decimal](6, 4) NULL,
 CONSTRAINT [PK_system_EnergyConversionConversionCoefficient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_EnergyDataManualInput]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EnergyDataManualInput](
	[DataItemId] [uniqueidentifier] NOT NULL,
	[VariableId] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[TimeStamp] [varchar](64) NULL,
	[DataValue] [decimal](18, 4) NULL,
	[UpdateCycle] [varchar](30) NULL,
	[Version] [int] NULL,
	[Remark] [nvarchar](256) NULL,
 CONSTRAINT [PK_system_EnergyDataManualInput] PRIMARY KEY CLUSTERED 
(
	[DataItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_EnergyDataManualInputContrast]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_EnergyDataManualInputContrast](
	[VariableId] [varchar](64) NOT NULL,
	[VariableName] [varchar](64) NULL,
	[Type] [varchar](64) NULL,
	[Enabled] [bit] NULL,
	[Creator] [varchar](64) NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](256) NULL,
 CONSTRAINT [PK_system_EnergyDataManualInputContrast] PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_EquipmentAccount]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[system_Error]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Error](
	[ID] [uniqueidentifier] NOT NULL,
	[vDate] [datetime] NULL,
	[OrganizationID] [varchar](64) NULL,
	[AmmeterNumber] [varchar](30) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_Error] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_Flag_Data_Modified]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[system_History_Flag_Data_Modified]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_History_Flag_Data_Modified](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TypeModify] [int] NULL,
	[DateModified] [datetime] NULL,
	[DateAccepted] [datetime] NULL,
 CONSTRAINT [PK_system_History_Flag_Data_Modified] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_KPI]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[system_MachineHaltReason]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MachineHaltReason](
	[ReasonItemID] [varchar](64) NOT NULL,
	[MachineHaltReasonID] [char](8) NOT NULL,
	[ReasonText] [nvarchar](100) NULL,
	[Remarks] [nvarchar](100) NULL,
	[ReasonStatisticsTypeId] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_system_MachineHaltReason] PRIMARY KEY CLUSTERED 
(
	[ReasonItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_MachineHaltReasonStatisticsType]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MachineHaltReasonStatisticsType](
	[ReasonStatisticsTypeId] [varchar](64) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[LevelCode] [varchar](64) NULL,
	[Enabled] [bit] NOT NULL,
	[Creator] [varchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_system_MachineHaltReasonStatisticsType] PRIMARY KEY CLUSTERED 
(
	[ReasonStatisticsTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_MasterMachineDescription]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_MasterMachineDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[VariableID] [varchar](64) NULL,
	[VariableName] [char](30) NULL,
	[VariableDescription] [varchar](max) NULL,
	[DataBaseName] [varchar](64) NULL,
	[TableName] [varchar](64) NULL,
	[Record] [bit] NULL,
	[ValidValues] [bit] NULL,
	[Remarks] [nvarchar](max) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[MachineHaltReason] [bit] NULL,
	[MachineHaltRecord] [bit] NULL,
	[OutputField] [varchar](64) NULL,
 CONSTRAINT [PK__system_M__3214EC27AB59D120] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_Organization]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_Organization](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[LevelCode] [varchar](20) NULL,
	[DatabaseID] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[LevelType] [varchar](64) NULL,
	[CoefficientAltitude] [decimal](8, 4) NULL,
	[RawToClinkerCoff] [decimal](18, 4) NULL,
	[ENABLED] [bit] NULL,
	[LegalRepresentative] [nvarchar](30) NULL,
	[Address] [nvarchar](max) NULL,
	[Contacts] [nchar](10) NULL,
	[ContactInfo] [varchar](max) NULL,
	[CommissioningDate] [datetime] NULL,
	[Products] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_Organization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_Organization_Instrumentation]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[system_PeakValleyFlatElectrovalence]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_PeakValleyFlatElectrovalence](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](50) NULL,
	[PeakElectrovalence] [decimal](6, 4) NULL,
	[ValleyElectrovalence] [decimal](6, 4) NULL,
	[FlatElectrovalence] [decimal](6, 4) NULL,
 CONSTRAINT [PK_system_PeakValleyFlatElectrovalence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_PVF]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_PVF](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[StartUsing] [date] NULL,
	[EndUsing] [date] NULL,
	[Flag] [bit] NULL,
	[KeyID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_system_PVF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_PVF_Detail]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_PVF_Detail](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[StartTime] [char](10) NULL,
	[EndTime] [char](10) NULL,
	[Type] [char](10) NULL,
 CONSTRAINT [PK_system_PVF_Detail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_ReportDescription]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ReportDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [char](100) NULL,
	[StoreName] [char](100) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_system_ReportDescription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_ShiftArrangement]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ShiftArrangement](
	[ShiftArrangementItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[WorkingTeam] [nchar](2) NOT NULL,
	[ShiftDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_system_ShiftArrangement] PRIMARY KEY CLUSTERED 
(
	[ShiftArrangementItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_ShiftDescription]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_ShiftDescription](
	[ShiftDescriptionID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Shifts] [nchar](2) NULL,
	[StartTime] [char](10) NULL,
	[EndTime] [char](10) NULL,
	[Description] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_system_ShiftDescription] PRIMARY KEY CLUSTERED 
(
	[ShiftDescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_SlaveMachineDescription]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_SlaveMachineDescription](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[KeyID] [uniqueidentifier] NULL,
	[VariableName] [char](30) NULL,
	[DataBaseName] [varchar](64) NULL,
	[TableName] [varchar](64) NULL,
	[VariableDescription] [varchar](max) NULL,
	[ValidValues] [bit] NULL,
	[TimeDelay] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK__system_S__3214EC27B46E7C3E] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_StaffInfo]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StaffInfo](
	[StaffInfoItemId] [uniqueidentifier] NOT NULL,
	[StaffInfoID] [nvarchar](50) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[WorkingTeamName] [nchar](2) NULL,
	[WorkingSectionID] [uniqueidentifier] NULL,
	[Name] [nvarchar](20) NULL,
	[Sex] [bit] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_system_StaffInfo_1] PRIMARY KEY CLUSTERED 
(
	[StaffInfoItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_StatusLog]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StatusLog](
	[ID] [uniqueidentifier] NOT NULL,
	[vDate] [datetime] NULL,
	[IP] [varchar](64) NULL,
	[TypeEvents] [varchar](64) NULL,
	[NameEvents] [varchar](64) NULL,
 CONSTRAINT [PK_system_StatusLog] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_StatusNet]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_StatusNet](
	[ID] [uniqueidentifier] NOT NULL,
	[Company] [varchar](64) NULL,
	[BranchFactory] [varchar](64) NULL,
	[IP] [varchar](64) NULL,
	[Servers] [varchar](32) NULL,
	[Status] [varchar](32) NULL,
	[Timestamp] [datetime] NULL,
	[Remark] [varchar](64) NULL,
 CONSTRAINT [PK_system_StatusNet] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_TenDaysRealtimeAlarm]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_TenDaysRealtimeAlarm](
	[AlarmItemId] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[VariableID] [varchar](64) NULL,
	[GroupId] [varchar](64) NOT NULL,
	[AlarmType] [nvarchar](20) NOT NULL,
	[AlarmLevel] [int] NOT NULL,
	[AlarmDateTime] [datetime] NOT NULL,
	[KeyId] [uniqueidentifier] NOT NULL,
	[Eanbled] [bit] NOT NULL,
	[AlarmDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_system_TenDaysRealtimeAlarm] PRIMARY KEY CLUSTERED 
(
	[AlarmItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_TypeDictionary]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_TypeDictionary](
	[TYPE_ID] [varchar](64) NOT NULL,
	[TYPE_NAME] [varchar](64) NOT NULL,
	[GROUP_ID] [varchar](64) NOT NULL,
	[DISPLAY_INDEX] [int] NOT NULL,
	[REMARK] [varchar](128) NULL,
	[ENABLED] [bit] NOT NULL,
 CONSTRAINT [PK_system_TypeDictionary] PRIMARY KEY CLUSTERED 
(
	[TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_UserFiles]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_UserFiles](
	[FileItemId] [varchar](64) NOT NULL,
	[FileName] [varchar](128) NOT NULL,
	[FileGroupId] [varchar](128) NOT NULL,
	[FileClassify] [varchar](64) NOT NULL,
	[FilePath] [varchar](512) NOT NULL,
	[FileType] [varchar](32) NOT NULL,
	[FileSize] [float] NOT NULL,
	[UserId] [varchar](32) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_system_UserFiles] PRIMARY KEY CLUSTERED 
(
	[FileItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_WorkingSection]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_WorkingSection](
	[WorkingSectionItemID] [uniqueidentifier] NOT NULL,
	[WorkingSectionID] [uniqueidentifier] NOT NULL,
	[WorkingSectionName] [nvarchar](50) NOT NULL,
	[Type] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[DisplayIndex] [int] NULL,
	[ElectricityQuantityId] [varchar](64) NULL,
	[OutputId] [varchar](64) NULL,
	[CoalWeightId] [varchar](64) NULL,
	[Creator] [varchar](64) NULL,
	[CreatedTime] [datetime] NULL,
	[Enabled] [bit] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_system_WorkingSection_old] PRIMARY KEY CLUSTERED 
(
	[WorkingSectionItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[system_WorkingTeam]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[system_WorkingTeam](
	[ID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Name] [nchar](2) NULL,
	[ChargeManID] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
 CONSTRAINT [PK_system_WorkingTeam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_AmmeterPeakerValleyFlatDay]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[AmmeterNumber] [char](30) NULL,
	[AmmeterName] [char](30) NULL,
	[ElectricRoom] [char](40) NULL,
	[Peak_Electricity] [decimal](18, 4) NULL,
	[Valley_Electricity] [decimal](18, 4) NULL,
	[Flat_Electricity] [decimal](18, 4) NULL,
	[Sum_Electricity] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_AmmeterPeakerValleyFlatDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_AmmeterPeakerValleyFlatMonth]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatMonth](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[AmmeterNumber] [char](30) NULL,
	[AmmeterName] [char](30) NULL,
	[ElectricRoom] [char](40) NULL,
	[Peak_Electricity] [decimal](18, 4) NULL,
	[Valley_Electricity] [decimal](18, 4) NULL,
	[Flat_Electricity] [decimal](18, 4) NULL,
	[Sum_Electricity] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_AmmeterPeakerValleyFlatMonth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_AmmeterPeakerValleyFlatYear]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_AmmeterPeakerValleyFlatYear](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[AmmeterNumber] [char](30) NULL,
	[AmmeterName] [char](30) NULL,
	[ElectricRoom] [char](40) NULL,
	[Peak_Electricity] [decimal](18, 4) NULL,
	[Valley_Electricity] [decimal](18, 4) NULL,
	[Flat_Electricity] [decimal](18, 4) NULL,
	[Sum_Electricity] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_AmmeterPeakerValleyFlatYear] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyElectricity_flat]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_flat](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyElectricity_flat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyElectricity_peak]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_peak](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyElectricity_peak] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyElectricity_sum]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_sum](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyElectricity_sum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyElectricity_valley]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyElectricity_valley](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyElectricity_valley] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillMonthlyOutput]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillMonthlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSecondShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSecondShift] [decimal](18, 4) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) NULL,
	[CementProductionFirstShift] [decimal](18, 4) NULL,
	[CementProductionSecondShift] [decimal](18, 4) NULL,
	[CementProductionThirdShift] [decimal](18, 4) NULL,
	[CementProductionSum] [decimal](18, 4) NULL,
	[Cementmill] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_CementMillMonthlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillYearlyElectricity_sum]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillYearlyElectricity_sum](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](30) NULL,
	[CementGrindingFirstShift] [decimal](18, 4) NULL,
	[CementGrindingSecondShift] [decimal](18, 4) NULL,
	[CementGrindingThirdShift] [decimal](18, 4) NULL,
	[CementGrindingSum] [decimal](18, 4) NULL,
	[AdmixturePreparationFirstShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSecondShift] [decimal](18, 4) NULL,
	[AdmixturePreparationThirdShift] [decimal](18, 4) NULL,
	[AdmixturePreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPreparationSum] [decimal](18, 4) NULL,
	[AmounttoCementPackagingFirstShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSecondShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingThirdShift] [decimal](18, 4) NULL,
	[AmounttoCementPackagingSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_CementMillYearlyElectricity_sum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_CementMillYearlyOutput]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_CementMillYearlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[CementTypes] [char](20) NULL,
	[ClinkerConsumptionFirstShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSecondShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionThirdShift] [decimal](18, 4) NULL,
	[ClinkerConsumptionSum] [decimal](18, 4) NULL,
	[PlasterConsumptionFirstShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSecondShift] [decimal](18, 4) NULL,
	[PlasterConsumptionThirdShift] [decimal](18, 4) NULL,
	[PlasterConsumptionSum] [decimal](18, 4) NULL,
	[CementProductionFirstShift] [decimal](18, 4) NULL,
	[CementProductionSecondShift] [decimal](18, 4) NULL,
	[CementProductionThirdShift] [decimal](18, 4) NULL,
	[CementProductionSum] [decimal](18, 4) NULL,
	[Cementmill] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_CementMillYearlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_ClinkerMonthlyElectricity_flat]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_flat](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerMonthlyElectricity_flat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerMonthlyElectricity_peak]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_peak](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerMonthlyElectricity_peak] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerMonthlyElectricity_sum]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_sum](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerMonthlyElectricity_sum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerMonthlyElectricity_valley]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyElectricity_valley](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerMonthlyElectricity_valley] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerMonthlyOutput]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerMonthlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSecondShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) NULL,
	[RawBatchProductionSecondShift] [decimal](18, 4) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) NULL,
	[RawBatchProductionSum] [decimal](18, 4) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSecondShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) NULL,
	[ClinkerProductionSecondShift] [decimal](18, 4) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) NULL,
	[ClinkerProductionSum] [decimal](18, 4) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) NULL,
	[PowerGenerationSecondShift] [decimal](18, 4) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) NULL,
	[PowerGenerationSum] [decimal](18, 4) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) NULL,
	[PowerSelfUseSecondShift] [decimal](18, 4) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) NULL,
	[PowerSelfUseSum] [decimal](18, 4) NULL,
	[SteamFirstShift] [decimal](18, 4) NULL,
	[SteamSecondShift] [decimal](18, 4) NULL,
	[SteamThirdShift] [decimal](18, 4) NULL,
	[SteamSum] [decimal](18, 4) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) NULL,
	[CoalDustProductionSecondShift] [decimal](18, 4) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) NULL,
	[CoalDustProductionSum] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[RawBatch] [decimal](18, 8) NULL,
	[CoalDust] [decimal](18, 8) NULL,
	[Kiln] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_ClinkerMonthlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerYearlyElectricity_sum]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerYearlyElectricity_sum](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[RawMaterialPreparationFirstShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSecondShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationThirdShift] [decimal](18, 4) NULL,
	[RawMaterialPreparationSum] [decimal](18, 4) NULL,
	[RawBatchGrindingFirstShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSecondShift] [decimal](18, 4) NULL,
	[RawBatchGrindingThirdShift] [decimal](18, 4) NULL,
	[RawBatchGrindingSum] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationFirstShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSecondShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationThirdShift] [decimal](18, 4) NULL,
	[AmounttoRawBatchPreparationSum] [decimal](18, 4) NULL,
	[CoalMillSystemFirstShift] [decimal](18, 4) NULL,
	[CoalMillSystemSecondShift] [decimal](18, 4) NULL,
	[CoalMillSystemThirdShift] [decimal](18, 4) NULL,
	[CoalMillSystemSum] [decimal](18, 4) NULL,
	[FiringSystemFirstShift] [decimal](18, 4) NULL,
	[FiringSystemSecondShift] [decimal](18, 4) NULL,
	[FiringSystemThirdShift] [decimal](18, 4) NULL,
	[FiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFiringSystemFirstShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSecondShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemThirdShift] [decimal](18, 4) NULL,
	[AmounttoFiringSystemSum] [decimal](18, 4) NULL,
	[AmounttoFirstShift] [decimal](18, 4) NULL,
	[AmounttoSecondShift] [decimal](18, 4) NULL,
	[AmounttoThirdShift] [decimal](18, 4) NULL,
	[AmounttoSum] [decimal](18, 4) NULL,
	[RawBatchHomogenizeFirstShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSecondShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeThirdShift] [decimal](18, 4) NULL,
	[RawBatchHomogenizeSum] [decimal](18, 4) NULL,
	[KilnSystemFirstShift] [decimal](18, 4) NULL,
	[KilnSystemSecondShift] [decimal](18, 4) NULL,
	[KilnSystemThirdShift] [decimal](18, 4) NULL,
	[KilnSystemSum] [decimal](18, 4) NULL,
	[ExhaustDisposeFirstShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSecondShift] [decimal](18, 4) NULL,
	[ExhaustDisposeThirdShift] [decimal](18, 4) NULL,
	[ExhaustDisposeSum] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_ClinkerYearlyElectricity_sum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_ClinkerYearlyOutput]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_ClinkerYearlyOutput](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[vDate] [nchar](2) NULL,
	[LimestoneConsumptionFirstShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSecondShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionThirdShift] [decimal](18, 4) NULL,
	[LimestoneConsumptionSum] [decimal](18, 4) NULL,
	[RawBatchProductionFirstShift] [decimal](18, 4) NULL,
	[RawBatchProductionSecondShift] [decimal](18, 4) NULL,
	[RawBatchProductionThirdShift] [decimal](18, 4) NULL,
	[RawBatchProductionSum] [decimal](18, 4) NULL,
	[RawBatchConsumptionFirstShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSecondShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionThirdShift] [decimal](18, 4) NULL,
	[RawBatchConsumptionSum] [decimal](18, 4) NULL,
	[ClinkerProductionFirstShift] [decimal](18, 4) NULL,
	[ClinkerProductionSecondShift] [decimal](18, 4) NULL,
	[ClinkerProductionThirdShift] [decimal](18, 4) NULL,
	[ClinkerProductionSum] [decimal](18, 4) NULL,
	[PowerGenerationFirstShift] [decimal](18, 4) NULL,
	[PowerGenerationSecondShift] [decimal](18, 4) NULL,
	[PowerGenerationThirdShift] [decimal](18, 4) NULL,
	[PowerGenerationSum] [decimal](18, 4) NULL,
	[PowerSelfUseFirstShift] [decimal](18, 4) NULL,
	[PowerSelfUseSecondShift] [decimal](18, 4) NULL,
	[PowerSelfUseThirdShift] [decimal](18, 4) NULL,
	[PowerSelfUseSum] [decimal](18, 4) NULL,
	[SteamFirstShift] [decimal](18, 4) NULL,
	[SteamSecondShift] [decimal](18, 4) NULL,
	[SteamThirdShift] [decimal](18, 4) NULL,
	[SteamSum] [decimal](18, 4) NULL,
	[CoalDustProductionFirstShift] [decimal](18, 4) NULL,
	[CoalDustProductionSecondShift] [decimal](18, 4) NULL,
	[CoalDustProductionThirdShift] [decimal](18, 4) NULL,
	[CoalDustProductionSum] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnHeadCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[KilnTailCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionFirstShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSecondShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionThirdShift] [decimal](18, 4) NULL,
	[AmounttoCoalDustConsumptionSum] [decimal](18, 4) NULL,
	[RawBatch] [decimal](18, 8) NULL,
	[CoalDust] [decimal](18, 8) NULL,
	[Kiln] [decimal](18, 8) NULL,
 CONSTRAINT [PK_table_ClinkerYearlyOutput] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[table_FormulaDay]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_FormulaDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_FormulaDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_FormulaGroupDay]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_FormulaGroupDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[FirstGroup] [decimal](18, 4) NULL,
	[SecondGroup] [decimal](18, 4) NULL,
	[ThirdGroup] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_FormulaGroupDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_FormulaMonth]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_FormulaMonth](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_FormulaMonth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_FormulaYear]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_FormulaYear](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_FormulaYear] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_PublicFormulaDay]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_PublicFormulaDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_PublicFormulaDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_PublicFormulaGroupDay]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_PublicFormulaGroupDay](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[FirstGroup] [decimal](18, 4) NULL,
	[SecondGroup] [decimal](18, 4) NULL,
	[ThirdGroup] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_PublicFormulaGroupDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_PublicFormulaMonth]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_PublicFormulaMonth](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_PublicFormulaMonth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table_PublicFormulaYear]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[table_PublicFormulaYear](
	[ID] [uniqueidentifier] NOT NULL,
	[KeyID] [uniqueidentifier] NULL,
	[LevelCode] [char](20) NULL,
	[ProcessName] [varchar](max) NULL,
	[Peak] [decimal](18, 4) NULL,
	[Valley] [decimal](18, 4) NULL,
	[Flat] [decimal](18, 4) NULL,
	[Amountto] [decimal](18, 4) NULL,
 CONSTRAINT [PK_table_PublicFormulaYear] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_erp]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_erp](
	[OrganizationID] [varchar](64) NULL,
	[vDate] [char](10) NULL,
	[Qnet] [bigint] NULL,
	[Diesel] [decimal](8, 2) NULL,
	[ClinkerIntensity] [decimal](8, 1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[temp_ProcessValue]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[temp_ProcessValue](
	[ID] [uniqueidentifier] NULL,
	[OrganizationID] [varchar](64) NULL,
	[vDate] [datetime] NULL,
	[VariableID] [varchar](64) NULL,
	[LevelCode] [varchar](64) NULL,
	[Value] [decimal](18, 4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tz_Balance]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Balance](
	[BalanceId] [uniqueidentifier] NOT NULL,
	[BalanceName] [varchar](64) NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[TemplateId] [varchar](64) NULL,
	[TemplateType] [varchar](32) NULL,
	[DataBaseName] [varchar](64) NULL,
	[DataTableName] [varchar](256) NOT NULL,
	[StaticsCycle] [varchar](32) NOT NULL,
	[TimeStamp] [varchar](32) NOT NULL,
	[BalanceStatus] [int] NOT NULL,
	[Editor] [varchar](32) NULL,
	[EditTime] [datetime] NULL,
	[Remarks] [varchar](256) NULL,
	[FirstWorkingTeam] [nchar](2) NULL,
	[SecondWorkingTeam] [nchar](2) NULL,
	[ThirdWorkingTeam] [nchar](2) NULL,
 CONSTRAINT [PK__tz_Balan__A760D5BEEE8376A3] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tz_BalanceStatistics]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_BalanceStatistics](
	[BalanceId] [uniqueidentifier] NOT NULL,
	[BalanceName] [varchar](64) NULL,
	[OrganizationID] [varchar](64) NULL,
	[TimeStamp] [varchar](32) NULL,
	[StatisticalType] [varchar](32) NULL,
 CONSTRAINT [PK_tz_BalanceStatistics] PRIMARY KEY CLUSTERED 
(
	[BalanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tz_Formula]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Formula](
	[KeyID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[AlarmPeriod] [int] NULL,
	[Type] [int] NULL,
	[ENABLE] [bit] NULL,
	[State] [int] NULL,
 CONSTRAINT [PK_tz_Formula] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tz_Material]    Script Date: 2016-04-18 8:29:32 ******/
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
/****** Object:  Table [dbo].[tz_Plan]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Plan](
	[KeyID] [uniqueidentifier] NOT NULL,
	[OrganizationID] [varchar](64) NOT NULL,
	[Date] [char](10) NOT NULL,
	[ProductionLineType] [varchar](32) NOT NULL,
	[PlanType] [varchar](32) NOT NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK__tz_Plan__21F5BE2776B67ED5] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tz_Report]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tz_Report](
	[OrganizationID] [varchar](64) NULL,
	[ReportID] [uniqueidentifier] NULL,
	[ReportName] [nvarchar](max) NULL,
	[Date] [char](10) NULL,
	[TableName] [char](100) NULL,
	[CreationDate] [datetime] NULL,
	[Version] [datetime] NULL,
	[ModifierID] [int] NULL,
	[Statue] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[KeyID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tz_Report] PRIMARY KEY CLUSTERED 
(
	[KeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[测试电表采集周期]    Script Date: 2016-04-18 8:29:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[测试电表采集周期](
	[vDate] [datetime] NULL,
	[Events] [nvarchar](50) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[analyse_KPI_DefaultParametersValue] ADD  CONSTRAINT [DF_analyse_KPI_DefaultParametersValue_DefaultValue]  DEFAULT ((0)) FOR [DefaultValue]
GO
ALTER TABLE [dbo].[analyse_KPI_Standard_Detail] ADD  CONSTRAINT [DF_analyse_KPI_Standard_Detail_StandardItemId]  DEFAULT (newid()) FOR [StandardItemId]
GO
ALTER TABLE [dbo].[analyse_KPI_TagContrast] ADD  CONSTRAINT [DF_analyse_KPI_TagContrast_TagItemId]  DEFAULT (newid()) FOR [TagItemId]
GO
ALTER TABLE [dbo].[analyse_KPI_Tags] ADD  CONSTRAINT [DF_system_KPI123_ANALYSIS_DATA_ID]  DEFAULT (newid()) FOR [ANALYSE_DATA_ID]
GO
ALTER TABLE [dbo].[analyse_KPI_Tags] ADD  CONSTRAINT [DF_system_KPI123_DISPLAY_INDEX]  DEFAULT ((1)) FOR [DISPLAY_INDEX]
GO
ALTER TABLE [dbo].[analyse_KPI_Tags] ADD  CONSTRAINT [DF_system_KPI123_ENABLED]  DEFAULT ((1)) FOR [ENABLED]
GO
ALTER TABLE [dbo].[analyse_KPI_TagsGroup] ADD  DEFAULT (newid()) FOR [TagGroupId]
GO
ALTER TABLE [dbo].[Balance_EnergyStatistics] ADD  CONSTRAINT [DF_Balance_EnergyStatistics_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[EnergyConsumptionContrast] ADD  CONSTRAINT [DF__EnergyConsum__ID__2CF2ADDF]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_EquipmentId]  DEFAULT (newid()) FOR [EquipmentId]
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_DisplayIndex]  DEFAULT ((1)) FOR [DisplayIndex]
GO
ALTER TABLE [dbo].[equipment_EquipmentDetail] ADD  CONSTRAINT [DF_equipment_EquipmentDetail_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[formula_FormulaDetail] ADD  CONSTRAINT [DF_formula_FormulaDetail_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[formula_LogicFormulaDetail] ADD  CONSTRAINT [DF_formula_LogicFormulaDetail_FormulaItemId]  DEFAULT (newid()) FOR [FormulaItemId]
GO
ALTER TABLE [dbo].[material_MaterialDetail] ADD  CONSTRAINT [DF_material_MaterialDetail_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[net_DataCollectionNet] ADD  CONSTRAINT [DF_net_DataCollectionNet_NodeId]  DEFAULT (newid()) FOR [NodeId]
GO
ALTER TABLE [dbo].[report_CementMilEnergyConsumption_TargetCompletion] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementMillProductionLineEnergyConsumptionSchedule] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementMilMonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementMilMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementMilYearlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementMonthlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementStatistics] ADD  CONSTRAINT [DF_report_CementStatistics_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementStatistics] ADD  CONSTRAINT [DF_report_CementStatistics_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[report_CementStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_CementStatisticsNodeMaintenance_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_CementStatisticsNodeMaintenance_RowSpan]  DEFAULT ((1)) FOR [RowSpan]
GO
ALTER TABLE [dbo].[report_CementStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_CementStatisticsNodeMaintenance_DIsplayed]  DEFAULT ((1)) FOR [DIsplayed]
GO
ALTER TABLE [dbo].[report_CementYearlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CementYearlyPerUnitDistributionPowerConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerEnergyConsumption_TargetCompletion] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerMonthlyCoalDustConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerMonthlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerProductionLineEnergyConsumptionSchedule] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerStatistics] ADD  CONSTRAINT [DF_report_ClinkerStatistics_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerStatistics] ADD  CONSTRAINT [DF_report_ClinkerStatistics_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_RowSpan]  DEFAULT ((1)) FOR [RowSpan]
GO
ALTER TABLE [dbo].[report_ClinkerStatisticsNodeMaintenance] ADD  CONSTRAINT [DF_report_NodeMaintenance_DIsplayed]  DEFAULT ((1)) FOR [DIsplayed]
GO
ALTER TABLE [dbo].[report_ClinkerYearlyPerUnitDistributionEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_ClinkerYearlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_CoalMilMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_MonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_RawBatchMilMonthlyPeakerValleyFlatElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_TeamCementClassificationYearlyElectricityConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_TeamCementMonthlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_TeamCementYearlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_TeamClinkerMonthlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_TeamClinkerYearlyProcessEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[report_YearlyEnergyConsumption] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_Color] ADD  CONSTRAINT [DF_system_ALarmColor_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_Error] ADD  CONSTRAINT [DF_system_Error_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_KPI] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_ReportDescription] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_ShiftArrangement] ADD  CONSTRAINT [DF_system_ShiftArrangement_ShiftArrangementItemId]  DEFAULT (newid()) FOR [ShiftArrangementItemId]
GO
ALTER TABLE [dbo].[system_StatusLog] ADD  CONSTRAINT [DF__system_Statu__ID__2CFD9AD7]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_StatusNet] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileItemId]  DEFAULT (newid()) FOR [FileItemId]
GO
ALTER TABLE [dbo].[system_UserFiles] ADD  CONSTRAINT [DF_system_UserFiles_FileSize]  DEFAULT ((1.0)) FOR [FileSize]
GO
ALTER TABLE [dbo].[tz_BalanceStatistics] ADD  CONSTRAINT [DF_tz_BalanceStatistics_BalanceId]  DEFAULT (newid()) FOR [BalanceId]
GO
