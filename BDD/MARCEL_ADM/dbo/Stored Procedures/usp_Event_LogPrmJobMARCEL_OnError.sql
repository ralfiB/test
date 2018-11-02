-- =============================================
-- Description:	Cette procédure permet de définir une ligne dans la table LogPrmJobMARCEL comme étant en erreur.
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_LogPrmJobMARCEL_OnError]
	@LogID	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	UPDATE [dbo].[LogPrmJobMARCEL]
	SET [DateFin] = GETDATE(),
		[Statut] = 'KO'
	WHERE PkIdLog = @LogID
END