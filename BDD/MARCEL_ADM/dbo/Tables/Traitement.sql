CREATE TABLE [dbo].[Traitement](
	[PkTraitement] [int] IDENTITY(1,1) NOT NULL,
	[FkLancement] [int] NULL,
	[LibTraitement] [varchar](500) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](500) NULL,
 CONSTRAINT [PK_TRAITEMENT] PRIMARY KEY CLUSTERED 
(
	[PkTraitement] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Traitement]  WITH CHECK ADD  CONSTRAINT [FK_TRAITEME_LANCEMENT_LANCEMEN] FOREIGN KEY([FkLancement])
REFERENCES [dbo].[Lancement] ([PkLancement])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkTraitement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'PkTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkLancement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'FkLancement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibTraitement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'LibTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateDebut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateFin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Traitement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Traitement'