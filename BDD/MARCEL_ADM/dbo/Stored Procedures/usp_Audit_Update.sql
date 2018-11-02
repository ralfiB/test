-- =============================================
-- Description:	Suivi applicatif -> Fin phase d'exécution de l'application
-- =============================================
CREATE PROCEDURE [dbo].[usp_Audit_Update]
	@IdAudit int,
	@TypeTraitement		nvarchar(500)=null,
	@Statut	nvarchar(500)
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On crée la ligne de Lancement
	UPDATE [dbo].[Audit]
	SET [TypeTraitement] = ISNULL(@TypeTraitement, TypeTraitement)
		,[Statut] = @Statut
		,[DateFin]  = GETDATE()
	WHERE
		PkAudit = @IdAudit
END