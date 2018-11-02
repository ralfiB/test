CREATE TABLE [dbo].[RECORDSET](
	[PkRecordset] [int] IDENTITY(1,1) NOT NULL,
	[FkFlux] [int] NULL,
	[Nom] [varchar](500) NULL,
	[LibComposant] [varchar](500) NULL,
	[Type] [varchar](500) NULL,
	[Strategy] [varchar](500) NULL,
	[NbLignes] [int] NULL,
 CONSTRAINT [PK_RECORDSET] PRIMARY KEY CLUSTERED 
(
	[PkRecordset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RECORDSET]  WITH CHECK ADD  CONSTRAINT [FK_RECORDSE_FLUX_RECO_FLUX] FOREIGN KEY([FkFlux])
REFERENCES [dbo].[Flux] ([PkFlux])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PkRecordset' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'PkRecordset'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FkFlux' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'FkFlux'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'Nom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LibComposant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'LibComposant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Strategy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'Strategy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NbLignes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET', @level2type=N'COLUMN',@level2name=N'NbLignes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recordset' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RECORDSET'