-- =============================================
-- Description:	Cette procédure permet de récupérer, au moment de son exécution, un unique job éligible
-- à un lancement ainsi que ses différents paramètres de configuration du main.
-- =============================================
CREATE PROCEDURE [dbo].[usp_PreMain_GetEligibleJobAndParameters]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET DATEFORMAT YMD
	
	/*********************************************
		00 - Initialisation des variables
	**********************************************/

	DECLARE @DatCou datetime
	DECLARE @DatCouNonHoroDate date	-- Cette variable est utilisée dans le cadre des jointures avec la table DimDate (non horodatée).
	DECLARE @JobId int	
	DECLARE @LogMessage varchar(500) -- Cette variable stocke les messages de log à alimenter dans la table LogPrmJobMARCEL.
	DECLARE @FlagLogPrmJobMARCEL int -- Ce flag indique si le message doit être inséré ou non dans la table LogPrmJobMARCEL.
	
	SET @JobId = 0
	SET @LogMessage = ''
	SET @FlagLogPrmJobMARCEL = 0
	SET @DatCou = GETDATE()
	SET @DatCouNonHoroDate = GETDATE()

	/*********************************************
		01 - Isolation des job qui peuvent se lancer le jour courant
	**********************************************/

	IF OBJECT_ID(N'tempdb..#DimDateMoisCourant', N'U') IS NOT NULL
	DROP TABLE #DimDateMoisCourant
	IF OBJECT_ID(N'tempdb..#PrmJobMARCEL_EligibleJour', N'U') IS NOT NULL
	DROP TABLE #PrmJobMARCEL_EligibleJour
		
	SELECT 
		ROW_NUMBER() over(partition by CodeAnneeMois, LibelleJour order by IdDate asc) as NoOccurrenceJouSem, *
	INTO #DimDateMoisCourant
	FROM DimDate			
	WHERE Annee = YEAR(@DatCouNonHoroDate) AND NumeroMois = MONTH(@DatCouNonHoroDate)	
	
	-- Variables utilisées pour les planifications de type "SemaineDansMois" ou "Mois"
	DECLARE @DernierJourMois date
	DECLARE @NoOccurrenceDuJourSemaineDansMois int
	DECLARE @NombreDOccurrenceDuJourSemaineDansLeMois int
	
	SELECT @DernierJourMois = datesql
	FROM #DimDateMoisCourant
	WHERE EstDernierJourMois = 1
	
	SELECT @NoOccurrenceDuJourSemaineDansMois = NoOccurrenceJouSem
	FROM #DimDateMoisCourant
	WHERE DateSql = @DatCouNonHoroDate
	
	SELECT @NombreDOccurrenceDuJourSemaineDansLeMois = COUNT(1)
	FROM #DimDateMoisCourant
	WHERE DATEPART(dw, @DatCouNonHoroDate) = DATEPART(dw, datesql)
	
	-- Variables utilisées pour les planification du type "JourOuvreDansMois"
	DECLARE @NumJourOuvreMois varchar(2)
	DECLARE @DernierJourOuvreMois date
	
	SELECT @NumJourOuvreMois = ISNULL(RIGHT('0' + CONVERT(varchar,NumeroJOMois),2), '00') -- Format JJ
	FROM #DimDateMoisCourant
	WHERE DateSql = @DatCouNonHoroDate	
	
	SELECT TOP 1 @DernierJourOuvreMois = DateSql
	FROM #DimDateMoisCourant
	ORDER BY NumeroJOMois DESC
	
	-- Périmétrage des jobs éligibles à la maille calendaire (jour)
	SET DATEFIRST 1

	-- SEMAINE
	SELECT *
	INTO #PrmJobMARCEL_EligibleJour
	FROM dbo.PrmJobMARCEL
	WHERE TypeRecurrence = 'Semaine'
	AND FlagActif = 1
	AND ValeurRecurrence LIKE '%'+CAST(DATEPART(DW, @DatCouNonHoroDate) as varchar)+'%'
	
	UNION
	
	-- SEMAINEDANSMOIS
	SELECT *
	FROM dbo.PrmJobMARCEL
	WHERE TypeRecurrence = 'SemaineDansMois'
	AND FlagActif = 1
	AND ValeurRecurrence LIKE '%'+CAST(DATEPART(DW, @DatCouNonHoroDate) as varchar)+'%'
	AND
	(
		OccurrenceJourSemaineDansMois LIKE '%'+CAST(@NoOccurrenceDuJourSemaineDansMois as varchar)+'%'
		OR (
			OccurrenceJourSemaineDansMois LIKE '%Dernier%'
			AND @NoOccurrenceDuJourSemaineDansMois = @NombreDOccurrenceDuJourSemaineDansLeMois
		)
	)
	
	UNION
	
	-- JOUR OUVRE DANS MOIS
	SELECT *
	FROM dbo.PrmJobMARCEL
	WHERE TypeRecurrence = 'JourOuvreDansMois'
	AND FlagActif = 1	
	AND
	(
		ValeurRecurrence LIKE '%' + @NumJourOuvreMois + '%'
		OR (	ValeurRecurrence LIKE '%DERNIER%' AND @DatCouNonHoroDate = @DernierJourOuvreMois	)
	)
	
	UNION
	
	-- MOIS
	SELECT *
	FROM dbo.PrmJobMARCEL
	WHERE TypeRecurrence = 'Mois'
	AND FlagActif = 1
	AND
	(
			ValeurRecurrence LIKE '%'+RIGHT('0'+CAST(day(@DatCouNonHoroDate) as varchar), 2)+'%'
		OR	(	ValeurRecurrence LIKE '%DERNIER%' AND @DatCouNonHoroDate = @DernierJourMois	)
	)

	UNION
	
	-- ANNEE	
	SELECT *
	FROM dbo.PrmJobMARCEL
	WHERE TypeRecurrence = 'Annee'
	AND FlagActif = 1
	AND	ValeurRecurrence LIKE '%' + RIGHT('0'+CAST(DAY(@DatCouNonHoroDate) as varchar), 2)+'/'+RIGHT('0'+CAST(MONTH(@DatCouNonHoroDate) as varchar), 2) + '%'
	

	/*********************************************
		02 - Récupération d'un unique job éligible à l'heure de traitement parmi les jobs éligibles le jour courant.
		Note : si plusieurs jobs sont éligibles, on récupère celui dont le fin de plage est la plus ancienne (arbitraire).
	**********************************************/
	
	SELECT TOP 1 
		@JobId = ISNULL(PkIdJob, 0)	
	FROM #PrmJobMARCEL_EligibleJour
	WHERE
		FlagActif = 1
		AND @DatCou between cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime) and cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureFinPlage as datetime)
		AND @DatCou >= ISNULL(dateadd(minute, FrequenceExecution , DateDernierLancementAVide), '19500101')
		AND ISNULL(DateDernierTraitementOK, '19500101') < cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime)
	ORDER BY cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureFinPlage as datetime) ASC


	/*********************************************
		03 - Renseignements des messages de log
	**********************************************/	
	IF(@JobId = 0) -- Il n'y a pas de job éligible, on n'écrit pas dans la table de log
	BEGIN
		SET @FlagLogPrmJobMARCEL = 0	
		
		-- Pas de planification active à date
		IF(
			(	
				SELECT COUNT(1)
				FROM #PrmJobMARCEL_EligibleJour
				WHERE @DatCou between cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime) and cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureFinPlage as datetime)
				AND FlagActif = 1
			) = 0)
		BEGIN
			SET @LogMessage = @LogMessage + ' Il n''y a pas de planification active à la date ' + cast(@Datcou as varchar) + '.'			
			GOTO LBL_FIN_SQL_PAS_DE_JOB
		END
		
		-- Job déjà lancé à vide dans l'intervalle défini
		SELECT TOP 1 @LogMessage = @LogMessage + ' Le Job ' + cast(PkIdJob as varchar) + ' a déjà été lancé à vide à '+ CAST(DateDernierLancementAVide as varchar)+' il y a moins de ' + CAST(FrequenceExecution AS VARCHAR)+ ' minutes (Frequence de lancement) .'
		FROM #PrmJobMARCEL_EligibleJour
		WHERE
			FlagActif = 1
			AND @DatCou between cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime) and cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureFinPlage as datetime)
			AND @DatCou < ISNULL(dateadd(minute, FrequenceExecution , DateDernierLancementAVide), '19500101')
		
		-- Job déjà traité dans la plage	
		SELECT TOP 1 @LogMessage = @LogMessage + ' Le Job ' + cast(PkIdJob as varchar) + ' a déjà été traité complètement à '+ CAST(DateDernierTraitementOK as varchar)+'.'
		FROM #PrmJobMARCEL_EligibleJour
		WHERE
			FlagActif = 1
			AND @DatCou between cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime) and cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureFinPlage as datetime)
			AND ISNULL(DateDernierTraitementOK, '19500101') > cast(CONVERT(varchar, @DatCou, 102)+ ' ' + HeureDebutPlage as datetime)		

		GOTO LBL_FIN_SQL_PAS_DE_JOB		
	END	
	ELSE -- il y a un job éligible, on vérifie si un job est en cours
	BEGIN		
			-- Si un job est déjà en cours, on arrête les vérifications et on écrit dans la table de log
		IF((SELECT COUNT(1) FROM dbo.PrmJobMARCEL WHERE FlagEstEnCours = 1) > 0)
		BEGIN
			SELECT TOP 1 @LogMessage = 'Le job ' + cast(@JobId as varchar) + ' n''a pas été lancé car le job ' + cast(PkIdJob as varchar) + ' (Valeur de PkIdJob) est déjà en cours de traitement.'
			FROM PrmJobMARCEL WHERE FlagEstEnCours = 1
			
			SET @FlagLogPrmJobMARCEL = 1			
		END			
		ELSE GOTO LBL_FIN_SQL_JOB_A_LANCER
	END	

	/*********************************************
		04 - Retour de la procédure
	**********************************************/
	LBL_FIN_SQL_PAS_DE_JOB:
	BEGIN
		SELECT
			0 AS PkIdJob,
			'' AS CodeFichierAttendus,
			'' AS PrmChargementODS,
			'' AS PrmAlimentation,
			'' AS PrmProcessCube,
			'' AS PrmProfondeurTraitement,
			'' AS PrmMaintenance,
			'' AS PrmFluxSortant,
			'' AS PrmCalculDtmTdB,
			0 AS PrmRepriseHistorique,
			'' AS NomJob,
			@LogMessage AS LogMessage,
			@FlagLogPrmJobMARCEL AS FlagLogPrmJobMARCEL
		GOTO LBL_END_PROC
	END
	
	LBL_FIN_SQL_JOB_A_LANCER:
	BEGIN
		SET @FlagLogPrmJobMARCEL = 1
				
		SELECT TOP 1 
			ISNULL(PkIdJob, 0) AS PkIdJob,
			ISNULL(CodeFichierAttendus, '') AS CodeFichierAttendus,
			ISNULL(PrmChargementODS, '') AS PrmChargementODS,
			ISNULL(PrmAlimentation, '') AS PrmAlimentation,
			ISNULL(PrmProcessCube, '') AS PrmProcessCube,
			ISNULL(PrmProfondeurTraitement, '') AS PrmProfondeurTraitement,
			ISNULL(PrmFluxSortant, '') AS PrmFluxSortant,
			ISNULL(PrmMaintenance, '') AS PrmMaintenance,	
			ISNULL(PrmCalculDtmTdB, '') AS PrmCalculDtmTdB,		
			ISNULL(PrmRepriseHistorique, 0) AS PrmRepriseHistorique,	
			ISNULL(NomJob, '') AS NomJob,	
			@LogMessage AS LogMessage,
			@FlagLogPrmJobMARCEL AS FlagLogPrmJobMARCEL
		FROM PrmJobMARCEL
		WHERE PkIdJob = @JobId
		
	END
	
	LBL_END_PROC:
	
END