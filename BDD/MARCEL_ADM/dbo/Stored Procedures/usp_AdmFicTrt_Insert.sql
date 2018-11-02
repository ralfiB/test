-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_AdmFicTrt_Insert] 
	@FkIdFic 		int = null,
	@IdAudit			int,
	@NomFic					varchar(3000),
	@TailleFic			decimal(15,2) = null, 
	@StatutChargementFichier 		varchar(50) = null,
	@DateReferenceGaziere 		bigint = null, 
	@DatePublication 		bigint = null, 
	@IdAdmFicTrt 		int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- On crée la ligne d'audit
	INSERT INTO [AdmFicTrt] (
		[FkIdFic]
		,[FkIdAudit]
		,[DateDebutChargement]
		,[StatutChargementFichier]
		,[NomFichier]
		,[DateReferenceGaziere]
		,[DatePublication]
		,[TailleFichier]
	)
	VALUES (
		@FkIdFic 
		,@IdAudit
		,GETDATE()
		,@StatutChargementFichier
		,@NomFic
		,@DateReferenceGaziere 
		,@DatePublication
		,@TailleFic
	)

	-- on récupère l'identifiant
	SELECT @IdAdmFicTrt = max(PkIdFicTrt) 
	FROM [AdmFicTrt]
	WHERE [FkIdFic] = @FkIdFic
END