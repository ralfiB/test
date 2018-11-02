CREATE TABLE [dbo].[AdmRefSysSrc](
	[PKIdSysSrc] [int] IDENTITY(1,1) NOT NULL,
	[NomSystemeSource] [varchar](50) NULL,
	[RepertoireSystemeSource] [varchar](2000) NULL,
	[DateInsertion] [datetime] NULL,
 CONSTRAINT [PK_ADMREFSYSSRC] PRIMARY KEY CLUSTERED 
(
	[PKIdSysSrc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PKIdSysSrc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefSysSrc', @level2type=N'COLUMN',@level2name=N'PKIdSysSrc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NomSystemeSource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefSysSrc', @level2type=N'COLUMN',@level2name=N'NomSystemeSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RepertoireSystemeSource' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefSysSrc', @level2type=N'COLUMN',@level2name=N'RepertoireSystemeSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateInsertion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefSysSrc', @level2type=N'COLUMN',@level2name=N'DateInsertion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de référence des systèmes sources' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefSysSrc'