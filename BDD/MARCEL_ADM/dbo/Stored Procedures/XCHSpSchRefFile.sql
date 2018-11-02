-- ================================================================
-- Description:	Recherche des informations contenues dans la table AdmRefFic en fonction du masque du fichier
-- ================================================================
CREATE PROCEDURE [dbo].[XCHSpSchRefFile]
	@MaskFic			varchar(50),
	@r_PKIdFic int = null output,
	@r_FKIdSysSrc int = null output,
	@r_CodFic varchar(50) = null output,
	@r_Sep varchar(1) = null output,
	@r_CodTabCibChg varchar(50) = null output,
	@r_Act bit = null output, 
	@r_VerEnt bit = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @v_PKIdFic int,@v_FKIdSysSrc int , @Cpt int
	DECLARE @v_CodFic varchar(50),@v_Sep varchar(1),@v_CodTabCibChg varchar(50)
	DECLARE @v_Act bit, @v_VerEnt bit

	DECLARE SchInfoRefFic CURSOR FOR 
		SELECT PKIdFic, FKIdSystemeSource, CodeFichier, Separateur, CodeTableCibleChargement, FlagActif, FlagVerificationEntete
		FROM AdmRefFic
		WHERE MasqueFichier = @MaskFic
			AND FlagActif = 1;

	SET @Cpt = 0

	OPEN SchInfoRefFic
	FETCH NEXT FROM SchInfoRefFic INTO @v_PKIdFic, @v_FKIdSysSrc, @v_CodFic, @v_Sep, @v_CodTabCibChg, @v_Act, @v_VerEnt
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @Cpt = @Cpt + 1
		SET @r_PKIdFic = @v_PKIdFic
		SET @r_FKIdSysSrc = @v_FKIdSysSrc
		SET @r_CodFic = @v_CodFic
		SET @r_Sep = @v_Sep
		SET @r_CodTabCibChg = @v_CodTabCibChg
		SET @r_Act = @v_Act
		SET @r_VerEnt = @v_VerEnt
		
		FETCH NEXT FROM SchInfoRefFic INTO @v_PKIdFic ,@v_FKIdSysSrc, @v_CodFic , @v_Sep ,@v_CodTabCibChg ,@v_Act, @v_VerEnt
	END
	CLOSE SchInfoRefFic
	DEALLOCATE SchInfoRefFic

	IF @Cpt = 0 
	BEGIN
		SET @r_Act = 0
		SET @r_FKIdSysSrc = 0
	END
	
	IF @Cpt > 1 
	BEGIN
		SET @r_Act = 0
		SET @r_FKIdSysSrc = 0
	END
END