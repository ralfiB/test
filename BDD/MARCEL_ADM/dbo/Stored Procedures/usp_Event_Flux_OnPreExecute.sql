-- =============================================
-- Description:	Début d'un flux de données
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Flux_OnPreExecute]
	@EtapeID		int,
	@FluxID			int = null output,
	@LibFlux		nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Flux] (
		[FkEtape]
		,[LibFlux]
		,[DateDebut]
		,[DateFin]
		,[Statut]
	)
	VALUES (
		@EtapeID,
		@LibFlux,
		GETDATE(),
		NULL,
		NULL
	)
	--Gestion de l'appel concurrent à la procédure : la fonction max est préférée au scope_identity
	--SET @FluxID = SCOPE_IDENTITY()
	SELECT @FluxID = MAX(PkFlux) FROM [dbo].[Flux] WHERE LibFlux = @LibFlux
END