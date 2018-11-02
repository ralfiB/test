CREATE TABLE [dbo].[PrmAdmParFtpConsulRepSource](
	[PkIdFtpInCN] [int] IDENTITY(1,1) NOT NULL,
	[FlagActif] [bit] NOT NULL,
	[HeureDebutPlage] [varchar](5) NOT NULL,
	[HeureFinPlage] [varchar](5) NOT NULL,
	[RepertoireSource] [varchar](50) NULL
) ON [PRIMARY]