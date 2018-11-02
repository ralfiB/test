-- =============================================
-- Description:	Démarrage d'une chaîne de traitement
-- =============================================
CREATE PROCEDURE [dbo].[XCHSpSchRefStrFic]
	@IdFic			int,
	@Sep			varchar(1),
	@Action     varchar(10),
	@r_NomChp		varchar(8000) = '' output,
	@r_NbChp		int = null output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @v_NomChp varchar(100), @MaxNbChp int, @v_PosChp int, @v_Typ varchar(50), @v_Lng1 varchar(30), @v_lng2 varchar(30), @v_FlgNul bit, @vchr_FlgNul varchar(1)

	SET @r_NbChp = 0
	SET @MaxNbChp = (select max(PositionChamp) from dbo.AdmRefStrFic where fkidfic = @IdFic)

	DECLARE SchRefStrFic CURSOR FOR
		select NomChamp, PositionChamp, TypeChamp, Longueur, [Precision], FlagNul
		from dbo.AdmRefStrFic
		where fkidfic = @IdFic
		order by PositionChamp asc;
	
	OPEN SchRefStrFic
	FETCH NEXT FROM SchRefStrFic INTO @v_NomChp, @v_PosChp, @v_Typ, @v_Lng1, @v_lng2, @v_FlgNul
	WHILE @@FETCH_STATUS = 0
	BEGIN

		SET @r_NbChp = @r_NbChp + 1

		IF @Action='Boucle1'
		-- On se trouve dans le premier ForEachLoop qui fait les contrôles macro (retourne entête du fichier)
		BEGIN
			IF @r_NbChp = 1 AND @MaxNbChp > 1
			-- Cas du premier passage 
			BEGIN
				SET @r_NomChp = @v_NomChp + @Sep
			END
		Else IF @r_NbChp = 1 AND @MaxNbChp = 1
			BEGIN
				SET @r_NomChp = @v_NomChp
			END
		ELSE IF @MaxNbChp = @r_NbChp
			-- Cas du dernier passage (pour éviter de concaténer le sparateur à la fin et fausser la comparaison des entêtes)
			BEGIN
				SET @r_NomChp = @r_NomChp + @v_NomChp
			END
			ELSE
			-- Cas nomimal
			BEGIN
				SET @r_NomChp = @r_NomChp + @v_NomChp + @Sep
			END
		END
		ELSE
		-- On se trouve dans le second ForEachLoop qui fait les contrôles micro (retourne la structure du fichier)
		BEGIN
			IF @Action='Boucle2'
			BEGIN
				IF @v_Lng1 is null
				BEGIN
					SET @v_Lng1 = ''
				END
				
				IF @v_lng2 is null
				BEGIN
					SET @v_lng2 = ''
				END
				
				IF @r_NbChp = 1 AND @MaxNbChp > 1
				-- Cas du premier passage 
				BEGIN
					SET @r_NomChp = @v_Typ + '#' + @v_Lng1 + '#' + @v_lng2 + '#' + cast(@v_FlgNul as varchar) + @Sep
				END
				ELSE IF  @r_NbChp = 1 AND @MaxNbChp = 1
				-- Cas du premier passage 
				BEGIN
					SET @r_NomChp = @v_Typ + '#' + @v_Lng1 + '#' + @v_lng2 + '#' + cast(@v_FlgNul as varchar)
				END
				
			  ELSE IF @MaxNbChp = @r_NbChp
			  -- Cas du dernier passage (pour éviter de concaténer le sparateur à la fin)
				BEGIN
					SET @r_NomChp = @r_NomChp + @v_Typ + '#' + @v_Lng1 + '#' + @v_lng2 + '#' + cast(@v_FlgNul as varchar)
				END
				ELSE
				-- Cas nomimal
				BEGIN
					SET @r_NomChp = @r_NomChp + @v_Typ + '#' + @v_Lng1 + '#' + @v_lng2 + '#' + cast(@v_FlgNul as varchar) + @Sep
				END
			END
			ELSE
			BEGIN
				SET @r_NomChp = null
				SET @r_NbChp = null
			END
		END
	
		FETCH NEXT FROM SchRefStrFic INTO @v_NomChp	,@v_PosChp, @v_Typ, @v_Lng1, @v_lng2, @v_FlgNul

	END
	CLOSE SchRefStrFic
	DEALLOCATE SchRefStrFic

END