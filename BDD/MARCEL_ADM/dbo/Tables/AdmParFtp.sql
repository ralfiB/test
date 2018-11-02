CREATE TABLE [dbo].[AdmParFtp](
	[PkIdFtpIn] [int] IDENTITY(1,1) NOT NULL,
	[FKIdSysSrc] [int] NULL,
	[Environnement] [varchar](10) NULL,
	[FlagActif] [int] NULL,
	[Type] [varchar](2) NULL,
	[Adresse] [varchar](50) NULL,
	[Ip] [varchar](14) NULL,
	[Port] [int] NULL,
	[User] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[RepertoireSource] [varchar](50) NULL,
	[RepertoireDestination] [varchar](50) NULL,
	[Sens] [varchar](3) NULL,
 CONSTRAINT [PK_ADMPARFTP] PRIMARY KEY CLUSTERED 
(
	[PkIdFtpIn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmParFtp]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMPARFT_ADMREFSYS_ADMREFSY] FOREIGN KEY([FKIdSysSrc])
REFERENCES [dbo].[AdmRefSysSrc] ([PKIdSysSrc])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdFtpIn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'PkIdFtpIn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FKIdSysSrc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'FKIdSysSrc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Environnement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Environnement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FlagActif' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'FlagActif'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adresse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Adresse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Port' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RepertoireSource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'RepertoireSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RepertoireDestination' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'RepertoireDestination'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sens' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp', @level2type=N'COLUMN',@level2name=N'Sens'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmParFtp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmParFtp'