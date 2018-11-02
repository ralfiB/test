CREATE TABLE [dbo].[AdmParBD](
	[PkIdBD] [int] IDENTITY(1,1) NOT NULL,
	[FkIdSysSrc] [int] NULL,
	[Environnement] [varchar](10) NULL,
	[FlagActif] [int] NULL,
	[Hote] [varchar](50) NULL,
	[Sid] [varchar](30) NULL,
	[Port] [int] NULL,
	[User] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
 CONSTRAINT [PK_ADMPARBD] PRIMARY KEY CLUSTERED 
(
	[PkIdBD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmParBD]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMPARBD_ADMREFSYS_ADMREFSY] FOREIGN KEY([FkIdSysSrc])
REFERENCES [dbo].[AdmRefSysSrc] ([PKIdSysSrc])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdBD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'PkIdBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdSysSrc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'FkIdSysSrc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Environnement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'Environnement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FlagActif' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'FlagActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hote' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'Hote'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'Sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Port' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage des base de données sources' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParBD'