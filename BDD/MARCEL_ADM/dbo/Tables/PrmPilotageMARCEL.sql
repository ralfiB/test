CREATE TABLE [dbo].[PrmPilotageMARCEL](
	[IdPrmPilotage] [int] IDENTITY(1,1) NOT NULL,
	[NomPrm] [varchar](100) NOT NULL,
	[ValeurPrm] [varchar](500) NOT NULL,
	[TypePrm] [varchar](100) NOT NULL,
	[PrecisionPrm] [varchar](10) NULL,
	[DescriptionPrm] [varchar](255) NOT NULL,
	[ParametrageActif] [bit] NULL,
	[DateModification] [datetime] NULL,
	[ModifiePar] [varchar](50) NULL,
 CONSTRAINT [PK_PRMPILOTAGEMARCEL] PRIMARY KEY CLUSTERED 
(
	[IdPrmPilotage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique du parametrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'IdPrmPilotage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du parametrage (ChargementODS, Maintenance, Alimentation, ...)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'NomPrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Variable du parametrage (optionnel)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'ValeurPrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type de la variable de paramétrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'TypePrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PrecisionPrm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'PrecisionPrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description du paramétrage (action attendue)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'DescriptionPrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Activation/désactivation du paramétrage' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'ParametrageActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date de modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'DateModification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auteur de la dernière modification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL', @level2type=N'COLUMN',@level2name=N'ModifiePar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage des lancements IS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmPilotageMARCEL'