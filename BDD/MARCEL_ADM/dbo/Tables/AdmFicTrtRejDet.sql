CREATE TABLE [dbo].[AdmFicTrtRejDet](
	[PkIdFicTrtRejDet] [int] IDENTITY(1,1) NOT NULL,
	[FkIdFicTrtRej] [int] NULL,
	[NomChamp] [varchar](8000) NULL,
	[ValeurChamp] [varchar](8000) NULL,
	[ValeurLigne] [varchar](8000) NULL,
	[DateRejet] [datetime] NULL,
 CONSTRAINT [PK_ADMFICTRTREJDET] PRIMARY KEY CLUSTERED 
(
	[PkIdFicTrtRejDet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmFicTrtRejDet]  WITH CHECK ADD  CONSTRAINT [FK_AdmFicTrtRej_AdmFictrtRejDet] FOREIGN KEY([FkIdFicTrtRej])
REFERENCES [dbo].[AdmFicTrtRej] ([PkIdFicTrtRej])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdFicTrtRejDet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'PkIdFicTrtRejDet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkIdFicTrtRej' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'FkIdFicTrtRej'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NomChamp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'NomChamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ValeurChamp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'ValeurChamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ValeurLigne' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'ValeurLigne'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateRejet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet', @level2type=N'COLUMN',@level2name=N'DateRejet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmFicTrtRejDet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmFicTrtRejDet'