-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[XCHSpAdmFicTrtRej_OnIns] 
	@IdFicTrt		  			int,
	@LibMtf		  			varchar(50),
	@IdFicTrtRej				int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- On crée la ligne de la cause de rejet
	INSERT INTO [dbo].[AdmFicTrtRej] ([FkIdFicTrt], [LibelleCauseRejet], [NbLigneRejete], [DateRejet]) VALUES (@IdFicTrt, @LibMtf, 0, GETDATE())
	
	-- On récupère son identifiant
	SET @IdFicTrtRej = SCOPE_IDENTITY()
END