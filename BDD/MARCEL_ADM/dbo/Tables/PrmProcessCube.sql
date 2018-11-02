CREATE TABLE [dbo].[PrmProcessCube](
	[IdPrmProcessCube] [int] IDENTITY(1,1) NOT NULL,
	[NomDatabase] [varchar](100) NOT NULL,
	[CodeCube] [varchar](100) NOT NULL,
	[IdCube] [varchar](100) NULL,
	[TypeObjet] [varchar](20) NOT NULL,
	[IdObjet] [varchar](100) NOT NULL,
	[Partition] [varchar](2) NULL,
	[IdPartition] [varchar](100) NULL,
	[TypePartition] [varchar](50) NULL,
	[FiltreCreationPartitionMensuelle] [varchar](2000) NULL,
	[FiltreCreationPartitionJournaliere] [varchar](2000) NULL,
 CONSTRAINT [PkPrmProcessCube] PRIMARY KEY CLUSTERED 
(
	[IdPrmProcessCube] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant unique de la ligne' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'IdPrmProcessCube'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom de la base de donnée contenant les cubes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'NomDatabase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nom du cube' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'CodeCube'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant du cube tel que listé dans AS. Peut être nul lorsque le type objet est dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'IdCube'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Objet de type groupe de mesure ou dimension' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'TypeObjet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant de l''objet tel que listé dans AS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'IdObjet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indique si l''objet est partionné. Uniquement pour les objets de type groupe de mesure' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'Partition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifiant de la partition unique du groupe de mesure (correspond à des codes AnneeMois sinon)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube', @level2type=N'COLUMN',@level2name=N'IdPartition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table de paramétrage technique. Stocke l''ensemble des objets des cubes MARCEL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrmProcessCube'