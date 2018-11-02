CREATE TABLE [dbo].[AdmFicTrtTransfert](
	[PkIdFicTrtTransfert] [int] IDENTITY(1,1) NOT NULL,
	[FkIdFic] [int] NULL,
	[FkIdAudit] [int] NULL,
	[DateDebutChargement] [datetime] NULL,
	[DateFinChargement] [datetime] NULL,
	[StatutTransfertFichier] [varchar](50) NULL,
	[NomFichier] [varchar](3000) NULL,
	[TailleFichier] [decimal](15, 2) NULL,
 CONSTRAINT [PK_ADMFICTRTTRANSFERT] PRIMARY KEY CLUSTERED 
(
	[PkIdFicTrtTransfert] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmFicTrtTransfert]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMFICTRTRANSFERT_ADMREFFIC] FOREIGN KEY([FkIdFic])
REFERENCES [dbo].[AdmRefFic] ([PKIdFic])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdFicTrtTransfert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'PkIdFicTrtTransfert'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant technique du type de publication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'FkIdFic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant technique du chargement en cours ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'FkIdAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date début transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'DateDebutChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date fin transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'DateFinChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut transfert du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'StatutTransfertFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'NomFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'taille du fichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert', @level2type=N'COLUMN',@level2name=N'TailleFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmFicTrtTransfert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtTransfert'