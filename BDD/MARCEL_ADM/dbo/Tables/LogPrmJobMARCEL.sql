CREATE TABLE [dbo].[LogPrmJobMARCEL](
	[PkIdLog] [int] IDENTITY(1,1) NOT NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](50) NULL,
	[LogMessage] [varchar](2000) NULL,
	[FkIdJob] [int] NULL,
	[CodeFichierAttendus] [varchar](2000) NULL,
	[PrmChargementODS] [varchar](2000) NULL,
	[PrmAlimentation] [varchar](2000) NULL,
	[PrmProcessCube] [varchar](2000) NULL,
	[PrmProfondeurTraitement] [varchar](2000) NULL,
	[PrmFluxSortant] [varchar](2000) NULL,
	[PrmMaintenance] [varchar](2000) NULL,
	[PrmRepriseHistorique] [bit] NULL,
	[PrmCalculDtmTdB] [varchar](2000) NULL,
 CONSTRAINT [PK_LOGPRMJOBMARCEL] PRIMARY KEY CLUSTERED 
(
	[PkIdLog] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique du parametrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PkIdLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du parametrage (ChargementODS, Maintenance, Alimentation, ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Variable du parametrage (optionnel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description du paramétrage (action attendue)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Activation/désactivation du paramétrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'LogMessage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdJob' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'FkIdJob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeFichierAttendus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'CodeFichierAttendus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmChargementODS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmChargementODS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmAlimentation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmAlimentation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmProcessCube' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmProcessCube'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmProfondeurProcessCube' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmProfondeurTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmFluxSortant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmFluxSortant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmMaintenance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmMaintenance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmRepriseHistorique' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmRepriseHistorique'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de log des jobs SQL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogPrmJobMARCEL'