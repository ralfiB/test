-- =============================================
-- Author:		Umanis - NSN
-- Create date: 20/07/2012
-- Description:	Cette procédure permet de récupérer, à partir d'un job donné
-- dans la table PrmJobMARCEL, la liste des masques des fichiers à récupérér.
-- =============================================
CREATE PROCEDURE [dbo].[usp_PreMain_GetRequiredFileMasks]
	@JobID int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	declare @param varchar(200)
	select @param = ''''+replace(CodeFichierAttendus, ',', ''',''')+''''
	from PrmJobMARCEL
	where PkIdJob = @JobId

	declare @sql varchar(1000)
	set @sql = 'SELECT CodeFichier, MasqueFichier
	FROM AdmRefFic
	WHERE CodeFichier IN ('+ISNULL(@param, '')+')'

	exec (@sql)
	
END