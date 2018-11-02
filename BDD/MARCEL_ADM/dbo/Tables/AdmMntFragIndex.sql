CREATE TABLE [dbo].[AdmMntFragIndex](
	[IdAudit] [int] NOT NULL,
	[DatabaseName] [varchar](100) NOT NULL,
	[ObjectName] [varchar](100) NOT NULL,
	[IndexName] [varchar](100) NOT NULL,
	[ShemaName] [varchar](100) NOT NULL,
	[PartitionNum] [int] NULL,
	[AvgFragPercent] [smallint] NULL,
	[DateDebutDefrag] [datetime] NULL,
	[DateFinDefrag] [datetime] NULL,
	[Statut] [varchar](2) NULL,
	[Query] [varchar](1000) NULL,
	[StatutMajStat] [varchar](2) NULL
) ON [PRIMARY]