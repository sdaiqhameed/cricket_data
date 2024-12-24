-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the event
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateInning]
	@matchID varchar(50), 
	@inningID int,
	@teamID varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [innings] WHERE matchID = @matchID AND inningID = @inningID)
	BEGIN
		INSERT INTO [dbo].[Innings]([matchID],[inningID], [teamID])
		VALUES (@matchID, @inningID, @teamID)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Innings] SET [teamID] = @teamID WHERE matchID = @matchID AND teamID = @teamID
	END
END