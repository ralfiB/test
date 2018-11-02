-- =============================================
-- Description:	Plantage d'une phase de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Lancement_OnError]
	@LancementID	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	UPDATE [dbo].[Lancement]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkLancement = @LancementID
END