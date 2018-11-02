-- =============================================
-- Description:	Cette procédure permet de définir une ligne dans la table LogPrmJobMARCEL comme étant en terminée.
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_LogPrmJobMARCEL_OnEnd]
	@LogID	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	UPDATE dbo.LogPrmJobMARCEL
	SET
		DateFin = GETDATE(),
		Statut = 'OK'
	WHERE PkIdLog = @LogID
END