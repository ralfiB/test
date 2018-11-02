CREATE TABLE [dbo].[AdmFicTrt](
	[PkIdFicTrt] [int] IDENTITY(1,1) NOT NULL,
	[FkIdFic] [int] NULL,
	[FkIdAudit] [int] NULL,
	[DateDebutChargement] [datetime] NULL,
	[DateFinChargement] [datetime] NULL,
	[StatutChargementFichier] [varchar](50) NULL,
	[NbLigneTraite] [int] NULL,
	[NbLigneIntegre] [int] NULL,
	[NbLigneRejete] [int] NULL,
	[NomFichier] [varchar](3000) NULL,
	[DateReferenceGaziere] [bigint] NULL,
	[DatePublication] [bigint] NULL,
	[TailleFichier] [decimal](15, 2) NULL,
	[StatutIntegrationFichier] [varchar](2) NULL,
 CONSTRAINT [PK_ADMFICTRT] PRIMARY KEY CLUSTERED 
(
	[PkIdFicTrt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmFicTrt]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMFICTR_ADMREFFIC_ADMREFFI] FOREIGN KEY([FkIdFic])
REFERENCES [dbo].[AdmRefFic] ([PKIdFic])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdFicTrt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'PkIdFicTrt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant technique du type de publication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'FkIdFic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant technique du chargement en cours ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'FkIdAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date début transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'DateDebutChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date fin transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'DateFinChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'StatutChargementFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de lignes du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'NbLigneTraite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de lignes intégrées dans les tables sources de l''ODS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'NbLigneIntegre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de lignes rejetées' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'NbLigneRejete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'NomFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date d''effet du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'DateReferenceGaziere'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date de publication du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'DatePublication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'taille du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'TailleFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StatutIntegrationFichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt', @level2type=N'COLUMN',@level2name=N'StatutIntegrationFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmFicTrt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrt'