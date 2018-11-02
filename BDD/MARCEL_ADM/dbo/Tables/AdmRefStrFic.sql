CREATE TABLE [dbo].[AdmRefStrFic](
	[FkIdFic] [int] NOT NULL,
	[PositionChamp] [int] NOT NULL,
	[NomChamp] [varchar](100) NULL,
	[TypeChamp] [varchar](50) NULL,
	[Longueur] [varchar](30) NULL,
	[Precision] [varchar](30) NULL,
	[FlagNul] [bit] NULL,
 CONSTRAINT [PK_ADMREFSTRFIC] PRIMARY KEY CLUSTERED 
(
	[FkIdFic] ASC,
	[PositionChamp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmRefStrFic]  WITH NOCHECK ADD  CONSTRAINT [FK_ADMREFST_ADMREFFIC_ADMREFFI] FOREIGN KEY([FkIdFic])
REFERENCES [dbo].[AdmRefFic] ([PKIdFic])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant technique du type de publication' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'FkIdFic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Position du champ dans le fichier source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'PositionChamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du champ dans le fichier source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'NomChamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Format du champ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'TypeChamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Taille du champ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'Longueur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Précision taille champ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'Precision'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indique si la valeur du champ peut être nulle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic', @level2type=N'COLUMN',@level2name=N'FlagNul'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description CI par fichier source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmRefStrFic'