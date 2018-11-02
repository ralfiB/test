-- =============================================
-- Description:	Fin d'un flux de données
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Flux_OnPostExecute]
	@FluxID			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Flux]
	SET [DateFin] = GETDATE(),
		[Statut] = 'OK'
	WHERE PkFlux = @FluxID
	  AND DateFin is null
END