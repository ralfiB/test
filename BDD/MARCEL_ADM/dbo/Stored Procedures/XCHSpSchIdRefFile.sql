-- =============================================
-- Description:	Récupération des données propre à un fichier (AdmRefFic) en fonction de son IdFic
-- =============================================
CREATE PROCEDURE [dbo].[XCHSpSchIdRefFile]
	@IdFic int,
	@r_FKIdSysSrc int = null output,
	@r_CodFic varchar(50) = null output,
	@r_Sep varchar(1) = null output,
	@r_CodTabCibChg varchar(50) = null output,
	@r_FlgVerEnt bit = null output,
	@r_TypEnc as varchar(50) = null output, 
	@r_NbLigASup as int = null output, 
	@r_SepDec varchar(1) = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @v_FKIdSysSrc int , @v_FlgVerEnt bit, @v_NbLigASup int
	DECLARE @v_CodFic varchar(50),@v_Sep varchar(1),@v_CodTabCibChg varchar(50), @v_TypEnc varchar(50), @v_SepDec varchar(1)

	DECLARE SchInfoRefFic CURSOR FOR 
		select FKIdSystemeSource,CodeFichier,Separateur,CodeTableCibleChargement, FlagVerificationEntete, TypeEncodage,NbLigneASupprimer, CaractereSeparationDecimal from AdmRefFic where PKIdFic =@IdFic;

	OPEN SchInfoRefFic
	FETCH NEXT FROM SchInfoRefFic INTO @v_FKIdSysSrc, @v_CodFic , @v_Sep, @v_CodTabCibChg, @v_FlgVerEnt, @v_TypEnc, @v_NbLigASup, @v_SepDec
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @r_FKIdSysSrc = @v_FKIdSysSrc
		SET @r_CodFic = @v_CodFic
		SET @r_Sep = @v_Sep
		SET @r_CodTabCibChg = @v_CodTabCibChg
		SET @r_FlgVerEnt = @v_FlgVerEnt
		SET @r_TypEnc = @v_TypEnc
		SET @r_NbLigASup = @v_NbLigASup
		SET @r_SepDec = @v_SepDec
		print @r_SepDec
		FETCH NEXT FROM SchInfoRefFic INTO @v_FKIdSysSrc, @v_CodFic , @v_Sep, @v_CodTabCibChg, @v_FlgVerEnt, @v_TypEnc, @v_NbLigASup, @v_SepDec
	
	END
	CLOSE SchInfoRefFic
	DEALLOCATE SchInfoRefFic
	
END