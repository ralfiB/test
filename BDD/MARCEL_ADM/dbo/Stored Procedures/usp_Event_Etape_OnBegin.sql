-- =============================================
-- Description:	D�but d'une �tape de traitement
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Etape_OnBegin]
	@TraitementID		int,
	@LibEtape			nvarchar(500),
	@EtapeID			int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- On cr�e la nouvelle �tape
	INSERT INTO [dbo].[Etape] (
		[FkTraitement]
		,[LibEtape]
		,[DateDebut]
		,[DateFin]
		,[Statut]
	)
	VALUES (
		@TraitementID,
		@LibEtape,
		GETDATE(),
		NULL,
		NULL
	)

	-- On r�cup�re l'identifiant
	--Gestion de l'appel concurrent � la proc�dure : la fonction max est pr�f�r�e au scope_identity
	/*SET @EtapeID =  = SCOPE_IDENTITY()*/ 
	SELECT @EtapeID=MAX(PkEtape) FROM [dbo].[Etape] WHERE LibEtape = @LibEtape
END