CREATE TABLE [dbo].[AdmRefFic](
	[PKIdFic] [int] IDENTITY(1,1) NOT NULL,
	[FKIdSystemeSource] [int] NULL,
	[CodeFichier] [varchar](50) NULL,
	[MasqueFichier] [varchar](100) NULL,
	[Separateur] [varchar](1) NULL,
	[DescriptionFichier] [varchar](2000) NULL,
	[CodeTableCibleChargement] [varchar](50) NULL,
	[CleDedoublonnage] [varchar](200) NULL,
	[FlagActif] [bit] NULL,
	[VersionCI] [varchar](100) NULL,
	[DateModificationStructure] [datetime] NULL,
	[FlagVerificationEntete] [bit] NULL,
	[TypeEncodage] [varchar](50) NULL,
	[NbLigneASupprimer] [int] NULL,
	[CaractereSeparationDecimal] [varchar](1) NULL,
 CONSTRAINT [PK_ADMREFFIC] PRIMARY KEY CLUSTERED 
(
	[PKIdFic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmRefFic]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMREFFI_ADMREFDOM_ADMREFSY] FOREIGN KEY([FKIdSystemeSource])
REFERENCES [dbo].[AdmRefSysSrc] ([PKIdSysSrc])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PKIdFic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'PKIdFic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aplication source du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'FKIdSystemeSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code du fichier (CHR81, CHR 82, ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'CodeFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'masque de fichier (J<AAAAMMJJ>_PCE_<AAAAMMJJhhmmss>_CHR81_VIC_01)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'MasqueFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Séparateur de champ dans le fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'Separateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'DescriptionFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeTableCibleChargement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'CodeTableCibleChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clé dédoublonnage de lignes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'CleDedoublonnage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag indiquant la prise en compte ou non de la publication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'FlagActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Version du CI décrivant le fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'VersionCI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date modification CI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'DateModificationStructure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag indiquant la nécessité de tester les valeurs de l''en-tête ou non' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'FlagVerificationEntete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type encodage du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'TypeEncodage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de ligne à supprimer avant première ligne de données' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'NbLigneASupprimer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indique le caractère de séparation décimal pour le fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic', @level2type=N'COLUMN',@level2name=N'CaractereSeparationDecimal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de référence des fichiers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefFic'