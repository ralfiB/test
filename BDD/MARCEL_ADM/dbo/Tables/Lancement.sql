CREATE TABLE [dbo].[Lancement](
	[PkLancement] [int] IDENTITY(1,1) NOT NULL,
	[FkAudit] [int] NULL,
	[LibLancement] [nvarchar](500) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](500) NULL,
 CONSTRAINT [PK_LANCEMENT] PRIMARY KEY CLUSTERED 
(
	[PkLancement] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lancement]  WITH NOCHECK ADD  CONSTRAINT [FK_LANCEMEN_AUDIT_LAN_AUDIT] FOREIGN KEY([FkAudit])
REFERENCES [dbo].[Audit] ([PkAudit])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkLancement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'PkLancement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkAudit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'FkAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibLancement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'LibLancement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateDebut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateFin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lancement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lancement'