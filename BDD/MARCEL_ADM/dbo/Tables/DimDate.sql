CREATE TABLE [dbo].[DimDate](
	[IdDate] [int] NOT NULL,
	[DateSQL] [datetime] NOT NULL,
	[DateAffichage] [varchar](10) NOT NULL,
	[CodeAnneeMois] [varchar](6) NULL,
	[NumeroMois] [tinyint] NULL,
	[LibelleMois] [varchar](10) NULL,
	[Saison] [varchar](15) NULL,
	[Annee] [varchar](4) NULL,
	[NumeroJOMois] [tinyint] NULL,
	[NumeroJour] [tinyint] NULL,
	[LibelleJour] [varchar](10) NULL,
	[CodeAnneeSemaine] [varchar](7) NULL,
	[NumeroSemaine] [tinyint] NULL,
	[NombreJoursMois] [tinyint] NULL,
	[EstDernierJourMois] [tinyint] NULL,
 CONSTRAINT [PkDimDate] PRIMARY KEY NONCLUSTERED 
(
	[IdDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifinat date: date au format AAAAMMJJ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'IdDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date au format datetime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'DateSQL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Transcodification date au format alphanumérique JJ/MM/AAAA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'DateAffichage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code de l''année dans le mois (concaténation année+mois)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'CodeAnneeMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumeroMois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'NumeroMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Libellé du mois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'LibelleMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Saison gazière : regroupement de mois en saison hiver ou été' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'Saison'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Année calendaire' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'Annee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumeroJOMois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'NumeroJOMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumeroJour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'NumeroJour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibelleJour' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'LibelleJour'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code de l''année dans le mois (concaténation année+mois)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'CodeAnneeSemaine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumeroSemaine' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'NumeroSemaine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NombreJoursMois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'NombreJoursMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EstDernierJourMois' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate', @level2type=N'COLUMN',@level2name=N'EstDernierJourMois'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de remise à plat du calendrier. Période de 10 ans depuis le 01/01/2008' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DimDate'