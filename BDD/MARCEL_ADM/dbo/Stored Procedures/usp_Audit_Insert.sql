-- =============================================
-- Description:	Suivi applicatif -> Début phase d'exécution de l'application
-- =============================================
CREATE PROCEDURE [dbo].[usp_Audit_Insert]
	@TypeTraitement		nvarchar(500),
	@Operateur	nvarchar(500),
	@IdAudit int output
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de Lancement
	INSERT INTO [dbo].[Audit] (
		[TypeTraitement] 
		,[DateDebut]
		,[Operator] 
	)
	VALUES (
		@TypeTraitement,
		GETDATE(),
		@Operateur
	)
	-- On récupère son identifiant
	SELECT @IdAudit=MAX(PkAudit) FROM Audit WHERE TypeTraitement =@TypeTraitement
END