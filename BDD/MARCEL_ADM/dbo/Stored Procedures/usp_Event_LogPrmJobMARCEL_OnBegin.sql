-- =============================================
-- Description:	Cette procédure permet d'insérer une ligne indiquant le début d'un job dans la table LogPrmJobMARCEL.
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_LogPrmJobMARCEL_OnBegin]
	@JobId int,	
	@CodeFichierAttendus varchar(2000),
	@PrmChargementODS varchar(2000),
	@PrmAlimentation varchar(2000),
	@PrmProcessCube varchar(2000),
	@PrmMaintenance varchar(2000),
	@PrmProfondeurTraitement varchar(2000),
	@PrmFluxSortant varchar(2000),
	@PrmCalculDtmTdB varchar(2000),
	@PrmRepriseHistorique bit,
	@LogId	int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de traitement
	INSERT INTO dbo.LogPrmJobMARCEL(
		DateDebut,
		LogMessage,
		FkIdJob,
		CodeFichierAttendus,
		PrmChargementODS,
		PrmAlimentation,
		PrmProcessCube,
		PrmProfondeurTraitement,
		PrmFluxSortant,
		PrmMaintenance,
		PrmRepriseHistorique, 
		PrmCalculDtmTdB,
		Statut
	)
	VALUES (
		GETDATE(),
		'Lancement du job ' + CAST(@JobID AS varchar) + ' (Valeur de PkIdJob)',
		@JobID,
		@CodeFichierAttendus,
		@PrmChargementODS,
		@PrmAlimentation,
		@PrmProcessCube,
		@PrmProfondeurTraitement ,
		@PrmFluxSortant ,
		@PrmMaintenance,
		@PrmRepriseHistorique, 
		@PrmCalculDtmTdB, 
		'En cours'
	)
	
	-- On récupère son identifiant
	SET @LogID = SCOPE_IDENTITY()
END