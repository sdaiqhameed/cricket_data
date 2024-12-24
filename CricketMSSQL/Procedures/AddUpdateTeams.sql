-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the team
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateTeams]
	@teamID varchar(50), 
	@team_name varchar(100),
	@gender varchar(10), 
	@team_type varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [teams] WHERE teamID = @teamID)
	BEGIN
		INSERT INTO [dbo].[teams]([teamID],[team_name], [gender], team_type)
		VALUES (@teamID, @team_name, @gender, @team_type)
	END
END