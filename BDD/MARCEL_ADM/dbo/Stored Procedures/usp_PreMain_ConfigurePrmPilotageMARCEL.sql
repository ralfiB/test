-- =============================================
-- Description:	Cette procédure permet de configurer la table PrmPilotageMARCEL.
-- =============================================
CREATE PROCEDURE [dbo].[usp_PreMain_ConfigurePrmPilotageMARCEL]
	@PrmChargementODS varchar(500),
	@PrmAlimentation varchar(500),
	@PrmProcessCube varchar(500),
	@PrmFluxSortant varchar(500),
	@PrmMaintenance varchar(500),
	@PrmCalculDtmTdB varchar(500),
	@PrmRepriseHistorique bit,
	@NomJob varchar(50),
	@PrmProfondeurTraitement varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @DatCou datetime
	SET @DatCou = GETDATE()
	
	-- Remise à 0
	UPDATE dbo.PrmPilotageMARCEL
	SET ValeurPrm = '', ParametrageActif = ''
	
	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm = @PrmChargementODS,
		ParametrageActif = CASE WHEN ISNULL(@PrmChargementODS, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou
	WHERE NomPrm = 'ChargementODS'

	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm =	@PrmAlimentation,
		ParametrageActif = CASE WHEN ISNULL(@PrmAlimentation, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou
	WHERE NomPrm = 'Alimentation'

	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm =	@PrmProcessCube,
		ParametrageActif = CASE WHEN ISNULL(@PrmProcessCube, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou,
		PrecisionPrm=@PrmProfondeurTraitement
	WHERE NomPrm = 'ProcessCube'
	
	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm = @PrmMaintenance,
		ParametrageActif = CASE WHEN ISNULL(@PrmMaintenance, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou
	WHERE NomPrm = 'Maintenance'
	
	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm = @PrmRepriseHistorique,
		ParametrageActif = CASE WHEN ISNULL(@PrmRepriseHistorique, 0) = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou
	WHERE NomPrm = 'RepriseHistorique'

	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm = @PrmFluxSortant,
		ParametrageActif = CASE WHEN ISNULL(@PrmFluxSortant, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou
	WHERE NomPrm = 'FluxSortant'
	
	
	UPDATE dbo.PrmPilotageMARCEL
	SET
		ValeurPrm = @PrmCalculDtmTdB,
		ParametrageActif = CASE WHEN ISNULL(@PrmCalculDtmTdB, '') = '' THEN 0 ELSE 1 END,
		ModifiePar = @NomJob,
		DateModification = @DatCou,
		PrecisionPrm=@PrmProfondeurTraitement
	WHERE NomPrm = 'CalculDatamartTdB'
END