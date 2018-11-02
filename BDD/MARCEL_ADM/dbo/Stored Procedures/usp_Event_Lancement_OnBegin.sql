-- =============================================
-- Description:	Début d'une phase de Lancement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Lancement_OnBegin]
	@AuditID		int,
	@LibLancement	nvarchar(500),
	@LancementID	int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de Lancement
	INSERT INTO [dbo].[Lancement] (
		[FkAudit]
		,[LibLancement]
		,[DateDebut]
		,[DateFin]
		,[Statut]
	)
	VALUES (
		@AuditID,
		@LibLancement,
		GETDATE(),
		NULL,
		NULL
	)
	-- On récupère son identifiant
	SET @LancementID = SCOPE_IDENTITY()
END