CREATE TABLE [dbo].[PrmPurge](
	[IdPrmPurge] [int] IDENTITY(1,1) NOT NULL,
	[Libelle] [varchar](50) NULL,
	[Repertoire] [varchar](200) NULL,
	[Profondeur] [int] NULL,
	[Actif] [bit] NULL,
 CONSTRAINT [PkPrmPurge] PRIMARY KEY CLUSTERED 
(
	[IdPrmPurge] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de la ligne' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge', @level2type=N'COLUMN',@level2name=N'IdPrmPurge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant fonctionnel.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge', @level2type=N'COLUMN',@level2name=N'Libelle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Répertoire cible à purger.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge', @level2type=N'COLUMN',@level2name=N'Repertoire'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de jour à conserver.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge', @level2type=N'COLUMN',@level2name=N'Profondeur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag pour activer ou non la prise en compte de la ligne.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge', @level2type=N'COLUMN',@level2name=N'Actif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage technique. Liste les répertoire à purger et les leurs paramètres.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurge'