-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_AdmAno_Insert]
	@FkAudit		  int,
	@GUID				varchar(30),
	@ErreurFonctionnelle			varchar(2000),
	@ErreurTechnique			varchar(2000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne d'audit
	INSERT INTO [AdmAno] (
		[FKAudit],
		[GUIDAno],
		[DatAno],
		[MsgErrFonAno],
		[MsgErrTecAno]
	)
	VALUES (
		@FkAudit,
		@GUID,
		GETDATE(),
		@ErreurFonctionnelle,
		@ErreurTechnique
	)
END