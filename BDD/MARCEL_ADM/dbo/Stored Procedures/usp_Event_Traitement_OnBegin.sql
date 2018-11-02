-- =============================================
-- Description:	D�but d'une phase de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Traitement_OnBegin]
	@LancementID		int,
	@LibTraitement	nvarchar(500),
	@TraitementID	int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On cr�e la ligne de traitement
	INSERT INTO [dbo].[Traitement] (
		[FkLancement]
		,[LibTraitement]
		,[DateDebut]
		,[DateFin]
		,[Statut]
	)
	VALUES (
		@LancementID,
		@LibTraitement,
		GETDATE(),
		NULL,
		NULL
	)

	-- On r�cup�re son identifiant
	SET @TraitementID = SCOPE_IDENTITY()
END