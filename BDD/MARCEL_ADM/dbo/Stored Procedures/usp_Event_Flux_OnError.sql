-- =============================================
-- Description:	Plantage d'un flux de données
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Flux_OnError]
	@FluxID			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[Flux]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkFlux = @FluxID
END