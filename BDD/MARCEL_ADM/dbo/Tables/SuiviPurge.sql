CREATE TABLE [dbo].[SuiviPurge](
	[PkIdSuiviPurge] [int] IDENTITY(1,1) NOT NULL,
	[FkAudit] [int] NULL,
	[ModePurge] [varchar](10) NULL,
	[Profondeur] [varchar](10) NULL,
	[FkIdFic] [int] NULL,
	[TableSrc] [varchar](100) NULL,
	[NbLigne] [int] NULL,
	[DateDebutPurge] [datetime] NULL,
	[DateFinPurge] [datetime] NULL,
	[Etat] [varchar](2) NULL,
 CONSTRAINT [PK_SuiviPurge] PRIMARY KEY CLUSTERED 
(
	[PkIdSuiviPurge] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]