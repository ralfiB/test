-- =============================================
-- Description:	Cette procédure insère une ligne de log dans la table LogPrmJobMARCEL.
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_LogPrmJobMARCEL_OnLogMessage]
	@LogMessage varchar(2000),
	@Statut varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	INSERT INTO dbo.LogPrmJobMARCEL (
		DateDebut,
		DateFin,
		LogMessage,
		Statut
	)
	VALUES (
		GETDATE(),
		GETDATE(),
		@LogMessage,
		@Statut
	)
END