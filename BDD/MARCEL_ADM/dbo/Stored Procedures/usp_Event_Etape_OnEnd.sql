-- =============================================
-- Description:	Fin d'une étape de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Etape_OnEnd]
	@EtapeID			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On créé la nouvelle étape
	UPDATE [dbo].[Etape]
	SET [DateFin] = GETDATE(),
		[Statut] = 'OK'
	WHERE PkEtape = @EtapeID
END