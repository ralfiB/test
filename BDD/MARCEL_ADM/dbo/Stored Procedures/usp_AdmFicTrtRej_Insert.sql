-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_AdmFicTrtRej_Insert] 
	@FkIdFicTrt 		int,
	@LibelleCauseRejet varchar(100),
	@NbLigneRejete int = null,
	@TypeRejet varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- On crée la ligne d'audit
	INSERT INTO [AdmFicTrtRej] (
		[FkIdFicTrt]
		,[LibelleCauseRejet]
		,[NbLigneRejete]
		,[DateRejet]
		,[TypeRejet]
	)
	VALUES (
		@FkIdFicTrt
		,@LibelleCauseRejet
		,@NbLigneRejete
		,GETDATE()
		,@TypeRejet
	)
END