-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_AdmFicTrt_Update] 
	@IdAdmFicTrt 		int,
	@FkIdFic			int = null, 
	@TailleFic			decimal(15,2) = null, 
	@StatutChargementFichier 		varchar(50) = null,
	@StatutIntegrationFichier		varchar(2) = null, 
	@DateReferenceGaziere 		bigint = null, 
	@DatePublication 		bigint = null,
	@NbLigneTraite		int = null, 
	@NbLigneIntegre		int = null, 
	@NbLigneRejete		int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On met à jour la ligne d'audit
	UPDATE [AdmFicTrt]
		SET [DateFinChargement] =
				CASE
					WHEN (@StatutChargementFichier = 'OK'
						OR @StatutChargementFichier = 'KO'
						OR @StatutChargementFichier = 'Corrompu'
						OR @StatutChargementFichier = 'Invalide'
						OR @StatutChargementFichier = 'Rejeté') THEN GETDATE() ELSE [DateFinChargement]
				END, 
			[StatutChargementFichier] = ISNULL(@StatutChargementFichier, [StatutChargementFichier]),
			[NbLigneTraite] = ISNULL(@NbLigneTraite, [NbLigneTraite]),
			[NbLigneIntegre] = ISNULL(@NbLigneIntegre, [NbLigneIntegre]),
			[NbLigneRejete] = ISNULL(@NbLigneRejete, [NbLigneRejete]),
			[DateReferenceGaziere] = ISNULL(@DateReferenceGaziere, [DateReferenceGaziere]),
			[DatePublication] = ISNULL(@DatePublication, [DatePublication]),
			[TailleFichier] = ISNULL(@TailleFic, [TailleFichier]),
			[StatutIntegrationFichier] = ISNULL(@StatutIntegrationFichier, [StatutIntegrationFichier]), 
			[FkIdFic] = ISNULL(@FkIdFic, [FkIdFic])
	 WHERE [PkIdFicTrt] = @IdAdmFicTrt

END