CREATE TABLE [dbo].[Flux](
	[PkFlux] [int] IDENTITY(1,1) NOT NULL,
	[FkEtape] [int] NULL,
	[LibFlux] [varchar](500) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](500) NULL,
 CONSTRAINT [PK_FLUX] PRIMARY KEY CLUSTERED 
(
	[PkFlux] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Flux]  WITH CHECK ADD  CONSTRAINT [FK_FLUX_ETAPE_FLU_ETAPE] FOREIGN KEY([FkEtape])
REFERENCES [dbo].[Etape] ([PkEtape])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkFlux' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'PkFlux'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkEtape' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'FkEtape'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibFlux' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'LibFlux'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateDebut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateFin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flux' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Flux'