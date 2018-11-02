-- =============================================
-- Description:	Plantage d'une étape de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Etape_OnError]
	@EtapeID			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la nouvelle étape
	UPDATE [dbo].[Etape]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkEtape = @EtapeID
END