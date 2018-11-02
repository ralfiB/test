CREATE TABLE [dbo].[LogRejet](
	[IdLogRejet] [int] IDENTITY(1,1) NOT NULL,
	[FkIdAudit] [int] NULL,
	[PackageIS] [varchar](200) NULL,
	[CodeRejet] [varchar](10) NULL,
	[TableSource] [varchar](100) NULL,
	[TableCible] [varchar](100) NULL,
	[FkIdFichier] [int] NULL,
	[ChampCauseRejet] [varchar](100) NULL,
	[ValeurCauseRejet] [varchar](500) NULL,
	[ValeurPK] [varchar](500) NULL,
	[CodeErreurTechnique] [varchar](2000) NULL,
	[SourceErreurTechnique] [varchar](2000) NULL,
	[ColonneErreurTechnique] [varchar](2000) NULL,
 CONSTRAINT [PK_LOGREJET] PRIMARY KEY CLUSTERED 
(
	[IdLogRejet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogRejet]  WITH NOCHECK ADD  CONSTRAINT [FK_LOGREJET_REFERENCE_AUDIT] FOREIGN KEY([FkIdAudit])
REFERENCES [dbo].[Audit] ([PkAudit])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de rejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'IdLogRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Référence du traitement source du rejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'FkIdAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PackageIS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'PackageIS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'CodeRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TableSource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'TableSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TableCible' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'TableCible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdFichier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'FkIdFichier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ChampCauseRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'ChampCauseRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ValeurCauseRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'ValeurCauseRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ValeurPK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'ValeurPK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeErreurTechnique' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'CodeErreurTechnique'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SourceErreurTechnique' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'SourceErreurTechnique'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ColonneErreurTechnique' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet', @level2type=N'COLUMN',@level2name=N'ColonneErreurTechnique'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de suivi des rejets - alimentation du DWH et du DM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRejet'