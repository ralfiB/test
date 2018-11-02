CREATE TABLE [dbo].[RefParametreIntraD](
	[CodeParametre] [varchar](10) NOT NULL,
	[CodeRegion] [varchar](10) NOT NULL,
	[ListeDiffusion] [varchar](max) NULL,
 CONSTRAINT [PK_RefParametreIntraD] PRIMARY KEY CLUSTERED 
(
	[CodeParametre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeParametre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefParametreIntraD', @level2type=N'COLUMN',@level2name=N'CodeParametre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CodeRegion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefParametreIntraD', @level2type=N'COLUMN',@level2name=N'CodeRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ListeDiffusion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefParametreIntraD', @level2type=N'COLUMN',@level2name=N'ListeDiffusion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RefParametreIntraD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RefParametreIntraD'