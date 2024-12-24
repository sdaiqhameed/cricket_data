-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the player
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateMatchPlayers]
	@matchID varchar(50), 
	@teamID varchar(50),
	@playerID varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [match_players] WHERE matchID = @matchID AND teamID = @teamID AND playerID = @playerID)
	BEGIN
		INSERT INTO [dbo].[match_players]([matchID],[teamID], [playerID])
		VALUES (@matchID, @teamID, @playerID)
	END
END