USE [NXJC]
GO
/****** Object:  Table [dbo].[performance_EnergyRatingTemplate]    Script Date: 2016-04-18 8:30:18 ******/
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
