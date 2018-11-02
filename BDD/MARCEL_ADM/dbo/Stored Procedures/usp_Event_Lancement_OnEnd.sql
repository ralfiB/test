-- =============================================
-- Description:	Fin d'une phase de lancement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Lancement_OnEnd]
	@LancementID	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	UPDATE [dbo].[Lancement]
	SET [DateFin] = GETDATE(),
		[Statut] = 'OK'
	WHERE PkLancement = @LancementID
END
