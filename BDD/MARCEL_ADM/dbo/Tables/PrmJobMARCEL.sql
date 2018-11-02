CREATE TABLE [dbo].[PrmJobMARCEL](
	[PkIdJob] [int] IDENTITY(1,1) NOT NULL,
	[NomJob] [varchar](2000) NULL,
	[FlagActif] [bit] NOT NULL,
	[FlagEstEnCours] [bit] NOT NULL,
	[TypeRecurrence] [varchar](50) NOT NULL,
	[ValeurRecurrence] [varchar](2000) NOT NULL,
	[OccurrenceJourSemaineDansMois] [varchar](2000) NULL,
	[HeureDebutPlage] [varchar](5) NOT NULL,
	[HeureFinPlage] [varchar](5) NOT NULL,
	[FrequenceExecution] [tinyint] NOT NULL,
	[CodeFichierAttendus] [varchar](2000) NULL,
	[PrmChargementODS] [varchar](2000) NULL,
	[PrmAlimentation] [varchar](2000) NULL,
	[PrmProcessCube] [varchar](2000) NULL,
	[PrmProfondeurTraitement] [varchar](10) NULL,
	[PrmFluxSortant] [varchar](2000) NULL,
	[PrmMaintenance] [varchar](2000) NULL,
	[PrmRepriseHistorique] [bit] NULL,
	[DateDernierTraitementOK] [datetime] NULL,
	[DateDernierLancementAVide] [datetime] NULL,
	[PrmCalculDtmTdB] [varchar](2000) NULL,
 CONSTRAINT [PK_PRMJOBMARCEL] PRIMARY KEY CLUSTERED 
(
	[PkIdJob] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique du parametrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PkIdJob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du parametrage (ChargementODS, Maintenance, Alimentation, ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'NomJob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Variable du parametrage (optionnel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'FlagActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type de la variable de paramétrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'FlagEstEnCours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description du paramétrage (action attendue)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'TypeRecurrence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Activation/désactivation du paramétrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'ValeurRecurrence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OccurrenceJourSemaineDansMois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'OccurrenceJourSemaineDansMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HeureDebutPlage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'HeureDebutPlage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HeureFinPlage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'HeureFinPlage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FrequenceExecution' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'FrequenceExecution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeFichierAttendus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'CodeFichierAttendus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmChargementODS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmChargementODS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmAlimentation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmAlimentation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmProcessCube' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmProcessCube'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmProfondeurProcessCube' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmProfondeurTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Parametre d''extraction vers application tierce' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmFluxSortant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmMaintenance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmMaintenance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrmRepriseHistorique' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'PrmRepriseHistorique'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date de modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'DateDernierTraitementOK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auteur de la dernière modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL', @level2type=N'COLUMN',@level2name=N'DateDernierLancementAVide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage des job SQL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmJobMARCEL'