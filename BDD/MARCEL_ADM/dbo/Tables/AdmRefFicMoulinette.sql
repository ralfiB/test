CREATE TABLE [dbo].[AdmRefFicMoulinette](
	[PKIdFic] [int] IDENTITY(1,1) NOT NULL,
	[FKIdSystemeSource] [int] NULL,
	[CodeFichier] [varchar](50) NULL,
	[MasqueFichier] [varchar](100) NULL,
	[Separateur] [varchar](1) NULL,
	[DescriptionFichier] [varchar](2000) NULL,
	[CodeTableCibleChargement] [varchar](50) NULL,
	[CleDedoublonnage] [varchar](200) NULL,
	[FlagActif] [bit] NULL,
	[VersionCI] [varchar](100) NULL,
	[DateModificationStructure] [datetime] NULL,
	[FlagVerificationEntete] [bit] NULL,
	[TypeEncodage] [varchar](50) NULL,
	[NbLigneASupprimer] [int] NULL,
	[CaractereSeparationDecimal] [varchar](1) NULL
) ON [PRIMARY]