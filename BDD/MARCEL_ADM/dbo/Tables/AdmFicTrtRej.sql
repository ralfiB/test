CREATE TABLE [dbo].[AdmFicTrtRej](
	[PkIdFicTrtRej] [int] IDENTITY(1,1) NOT NULL,
	[FkIdFicTrt] [int] NULL,
	[LibelleCauseRejet] [varchar](100) NULL,
	[NbLigneRejete] [int] NULL,
	[DateRejet] [datetime] NULL,
	[TypeRejet] [varchar](50) NULL,
 CONSTRAINT [PK_ADMFICTRTREJ] PRIMARY KEY CLUSTERED 
(
	[PkIdFicTrtRej] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmFicTrtRej]  WITH CHECK ADD  CONSTRAINT [FK_AdmFicTrt_AdmFicTrtRej] FOREIGN KEY([FkIdFicTrt])
REFERENCES [dbo].[AdmFicTrt] ([PkIdFicTrt])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdFicTrtRej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'PkIdFicTrtRej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdFicTrt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'FkIdFicTrt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibelleCauseRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'LibelleCauseRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NbLigneRejete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'NbLigneRejete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'DateRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TypeRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej', @level2type=N'COLUMN',@level2name=N'TypeRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmFicTrtRej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRej'