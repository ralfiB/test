-- =============================================
-- Description:	Recherche des informations dans AdmFicTrt
-- =============================================
CREATE PROCEDURE [dbo].[XCHSpSchFicTrt]
	@IdFicTrt			int,
	@r_PKIdFic int = null output,
	@r_NomFic varchar(200) = null output, 
	@r_DatRefGaz varchar(20) = null output, 
	@r_DatPub varchar(20) = null output
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE SchFicTrt CURSOR FOR 
		SELECT FkIdFic,NomFichier,DateReferenceGaziere,DatePublication FROM AdmFicTrt WHERE PKIdFicTrt = @IdFicTrt;

	OPEN SchFicTrt
	FETCH NEXT FROM SchFicTrt INTO @r_PKIdFic ,@r_NomFic, @r_DatRefGaz , @r_DatPub
	WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM SchFicTrt INTO @r_PKIdFic ,@r_NomFic, @r_DatRefGaz , @r_DatPub
	END
	CLOSE SchFicTrt
	DEALLOCATE SchFicTrt

END