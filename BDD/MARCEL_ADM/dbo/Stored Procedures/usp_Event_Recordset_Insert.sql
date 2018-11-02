-- =============================================
-- Description:	Renseignement d'un insert
-- =============================================
CREATE PROCEDURE [dbo].[usp_Event_Recordset_Insert]
	@FluxID			int,
	@Nom			nvarchar(50),
	@LibComposant	nvarchar(50),
	@Type			nvarchar(50),
	@Strategy		nvarchar(50),
	@NbLignes		bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Recordset] (
		[FkFlux]
		,[Nom]
		,[LibComposant]
		,[Type]
		,[Strategy]
		,[NbLignes]
	)
	VALUES (
		@FluxID,
		@Nom,
		@LibComposant,
		@Type,
		@Strategy,
		@NbLignes
	)
END