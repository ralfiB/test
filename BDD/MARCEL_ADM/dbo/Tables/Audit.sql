CREATE TABLE [dbo].[Audit](
	[PkAudit] [int] IDENTITY(1,1) NOT NULL,
	[TypeTraitement] [varchar](500) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[Statut] [varchar](500) NULL,
	[Operator] [varchar](500) NULL,
 CONSTRAINT [PK_AUDIT] PRIMARY KEY CLUSTERED 
(
	[PkAudit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkAudit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'PkAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TypeTraitement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'TypeTraitement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateDebut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'DateDebut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateFin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'DateFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Statut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'Statut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Operator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit', @level2type=N'COLUMN',@level2name=N'Operator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Audit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Audit'