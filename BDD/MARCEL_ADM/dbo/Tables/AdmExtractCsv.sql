CREATE TABLE [dbo].[AdmExtractCsv](
	[PkAdmExtractCsv] [int] IDENTITY(1,1) NOT NULL,
	[View] [nvarchar](50) NOT NULL,
	[Separateur] [nvarchar](1) NULL,
	[FormatDate] [nvarchar](3) NULL,
	[FormatDateTime] [nvarchar](50) NULL,
	[TableTemp] [nvarchar](50) NULL,
	[WHERE] [nvarchar](3000) NULL,
	[FileName] [nvarchar](50) NOT NULL,
	[IdPara] [int] NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[FkIdAudit] [int] NULL,
	[Statut] [nvarchar](10) NULL
) ON [PRIMARY]