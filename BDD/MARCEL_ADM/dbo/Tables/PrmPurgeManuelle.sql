CREATE TABLE [dbo].[PrmPurgeManuelle](
	[IdPrmPurgeManuelle] [int] IDENTITY(1,1) NOT NULL,
	[IdTypeMesure] [int] NOT NULL,
	[IdDateDebutJG] [int] NOT NULL,
	[IdDateFinJG] [int] NOT NULL,
	[Actif] [bit] NULL,
	[DateModification] [datetime] NULL,
	[ModifiePar] [varchar](5) NULL,
 CONSTRAINT [PkPrmPurgeManuelle] PRIMARY KEY CLUSTERED 
(
	[IdPrmPurgeManuelle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de la ligne' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle', @level2type=N'COLUMN',@level2name=N'IdPrmPurgeManuelle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant Technique IdTypeMesure à supprimer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle', @level2type=N'COLUMN',@level2name=N'IdTypeMesure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Début de purge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle', @level2type=N'COLUMN',@level2name=N'IdDateDebutJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fin de purge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle', @level2type=N'COLUMN',@level2name=N'IdDateFinJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag pour activer ou non la prise en compte de la ligne.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle', @level2type=N'COLUMN',@level2name=N'Actif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage technique. Liste les IdTypeMesure à purger des tables de faits.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPurgeManuelle'