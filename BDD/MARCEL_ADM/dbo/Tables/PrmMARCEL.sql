CREATE TABLE [dbo].[PrmMARCEL](
	[IdPrmMarcel] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationFilter] [varchar](255) NOT NULL,
	[ConfiguredValue] [varchar](max) NOT NULL,
	[PackagePath] [varchar](255) NOT NULL,
	[ConfiguredValueType] [varchar](20) NOT NULL,
	[DateModification] [datetime] NULL,
	[ModifiePar] [varchar](5) NULL,
 CONSTRAINT [PK_PRMMARCEL] PRIMARY KEY CLUSTERED 
(
	[IdPrmMarcel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de la variable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'IdPrmMarcel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Domaine d''application de la variable configuration globale, ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'ConfigurationFilter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valeur de la variable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'ConfiguredValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chemin d''accès complet de la variable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'PackagePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type de la variable (string, int ), ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'ConfiguredValueType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date de modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'DateModification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auteur de la dernière modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL', @level2type=N'COLUMN',@level2name=N'ModifiePar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage technique. Stocke les variables d''environnment du package' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmMARCEL'