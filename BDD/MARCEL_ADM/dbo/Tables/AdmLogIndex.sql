CREATE TABLE [dbo].[AdmLogIndex](
	[PkIdAdmLogIndex] [int] IDENTITY(1,1) NOT NULL,
	[FkAudit] [int] NULL,
	[Table] [varchar](50) NULL,
	[Objet] [varchar](75) NULL,
	[PartitionNumber] [varchar](3) NULL,
	[Mode] [varchar](50) NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
 CONSTRAINT [PkIdAdmLogIndex] PRIMARY KEY CLUSTERED 
(
	[PkIdAdmLogIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmLogIndex]  WITH CHECK ADD  CONSTRAINT [FK_ADMLOGINDEX_REFERENCE_AUDIT] FOREIGN KEY([FkAudit])
REFERENCES [dbo].[Audit] ([PkAudit])