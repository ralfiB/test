-- =============================================
-- Description:	Plantage d'une phase de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Traitement_OnError]
	@TraitementID	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	UPDATE [dbo].[Traitement]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkTraitement = @TraitementID
END