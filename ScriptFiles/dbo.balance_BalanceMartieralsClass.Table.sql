USE [NXJC]
GO
/****** Object:  Table [dbo].[balance_BalanceMartieralsClass]    Script Date: 2016-04-18 8:30:17 ******/
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
