CREATE TABLE [dbo].[AdmAno](
	[PkIdAdmAno] [int] IDENTITY(1,1) NOT NULL,
	[FkAudit] [int] NULL,
	[GUIDAno] [varchar](30) NULL,
	[DatAno] [datetime] NULL,
	[MsgErrFonAno] [varchar](2000) NULL,
	[MsgErrTecAno] [varchar](2000) NULL,
 CONSTRAINT [PK_ADMANO] PRIMARY KEY CLUSTERED 
(
	[PkIdAdmAno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmAno]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMANO_REFERENCE_AUDIT] FOREIGN KEY([FkAudit])
REFERENCES [dbo].[Audit] ([PkAudit])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkIdAdmAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'PkIdAdmAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkAudit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'FkAudit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GUIDAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'GUIDAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DatAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'DatAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MsgErrFonAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'MsgErrFonAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MsgErrTecAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno', @level2type=N'COLUMN',@level2name=N'MsgErrTecAno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdmAno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmAno'