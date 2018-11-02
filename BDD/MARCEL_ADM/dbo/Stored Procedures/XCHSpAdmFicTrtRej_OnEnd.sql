﻿-- =============================================
-- Description:	Fin d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[XCHSpAdmFicTrtRej_OnEnd]
	@IdFicTrtRej		int,
	@NbLigRej		int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[AdmFicTrtRej]
	SET [NbLigneRejete] = @NbLigRej
	WHERE [PkIdFicTrtRej] = @IdFicTrtRej
END