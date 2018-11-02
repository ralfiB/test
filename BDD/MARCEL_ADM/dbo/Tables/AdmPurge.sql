CREATE TABLE [dbo].[AdmPurge](
	[IdAdmPurge] [int] IDENTITY(1,1) NOT NULL,
	[NomFichier] [varchar](300) NULL,
	[Profondeur] [int] NULL,
	[FlagStatutIntegration] [bit] NULL,
	[DateDerniereModification] [datetime] NULL,
	[Statut] [varchar](20) NULL,
	[DateSuppression] [datetime] NULL,
 CONSTRAINT [PK_ADMPURGE] PRIMARY KEY CLUSTERED 
(
	[IdAdmPurge] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de la variable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'IdAdmPurge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du fichier supprimé (avec chemin d''accès complet).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'NomFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Rappel de la profondeur paramétrée pour le répertoire.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'Profondeur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Détermine si la valeur de AdmFicTrt.StatutIntegrationFichier doit être vérifiée.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'FlagStatutIntegration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Propriété Windows du fichier inspecté.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'DateDerniereModification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Etat du fichier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date de suppression du fichier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge', @level2type=N'COLUMN',@level2name=N'DateSuppression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de logs des fichiers supprimés.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmPurge'