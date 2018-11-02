CREATE TABLE [dbo].[AdmParTable](
	[PkIdTable] [int] IDENTITY(1,1) NOT NULL,
	[FkIdBD] [int] NULL,
	[Schema] [varchar](30) NULL,
	[NomTable] [varchar](30) NULL,
	[FlagActif] [int] NULL,
	[DateChargement] [datetime] NULL,
 CONSTRAINT [PK_ADMPARTABLE] PRIMARY KEY CLUSTERED 
(
	[PkIdTable] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmParTable]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMPARTA_ADMPARBD__ADMPARBD] FOREIGN KEY([FkIdBD])
REFERENCES [dbo].[AdmParBD] ([PkIdBD])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdTable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'PkIdTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdBD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'FkIdBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Schema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'Schema'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NomTable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'NomTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FlagActif' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'FlagActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateChargement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable', @level2type=N'COLUMN',@level2name=N'DateChargement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmParTable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParTable'