-- =============================================
-- Description:	Plantage d'une �tape de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Etape_OnError]
	@EtapeID			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On cr�e la nouvelle �tape
	UPDATE [dbo].[Etape]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkEtape = @EtapeID
END