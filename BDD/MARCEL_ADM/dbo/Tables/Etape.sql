CREATE TABLE [dbo].[Etape](
	[PkEtape] [int] IDENTITY(1,1) NOT NULL,
	[FkTraitement] [int] NULL,
	[LibEtape] [varchar](500) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](500) NULL,
 CONSTRAINT [PK_ETAPE] PRIMARY KEY CLUSTERED 
(
	[PkEtape] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Etape]  WITH CHECK ADD  CONSTRAINT [FK_ETAPE_TRAITEMEN_TRAITEME] FOREIGN KEY([FkTraitement])
REFERENCES [dbo].[Traitement] ([PkTraitement])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkEtape' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'PkEtape'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkTraitement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'FkTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibEtape' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'LibEtape'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateDebut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateFin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Etape' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Etape'